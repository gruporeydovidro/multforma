import json,re,collections,sys
F=json.load(open(sys.argv[1]))
def walk(o):
    yield o
    for c in o['children']: yield from walk(c)
def sqlof(p):
    for k in ('CommandText','SQL.Strings','SQL'):
        if k in p: v=p[k]; return '\n'.join(v) if isinstance(v,list) else v
TYPE={'TStringField':'varchar','TBCDField':'numeric','TSmallintField':'smallint','TIntegerField':'int','TAutoIncField':'int identity','TDateTimeField':'datetime','TFloatField':'float','TMemoField':'text','TBlobField':'image','TCurrencyField':'money','TBooleanField':'bit','TLargeintField':'bigint','TWordField':'smallint','TDateField':'date','TFMTBCDField':'numeric','TWideStringField':'nvarchar','TGraphicField':'image','TWideMemoField':'ntext','TGuidField':'uniqueidentifier','TVarBytesField':'varbinary','TBytesField':'binary'}
cols=collections.defaultdict(dict); src=collections.defaultdict(set); sqls=[]
tre=r'(?i)\b(?:from|join)\s+\[?([A-Za-z_]\w*)\]?(?:\s+(?:as\s+)?([A-Za-z_]\w*))?'
for fn,root in F.items():
    for o in walk(root):
        p=o['props']; q=sqlof(p)
        if q is None: continue
        sqls.append((fn,o['name'],q))
        tabs=[t for t,a in re.findall(tre,q) if t.upper() not in ('SELECT',)]
        alias={ (a or t).upper():t.upper() for t,a in re.findall(tre,q)}
        flds=[c for c in o['children'] if c['class'].endswith('Field')]
        single=len(set(t.upper() for t in tabs))==1
        for c in flds:
            fp=c['props']; fname=(fp.get('FieldName') or c['name']).upper()
            if fp.get('FieldKind',{}).get('ident') if isinstance(fp.get('FieldKind'),dict) else False: continue
            ty=TYPE.get(c['class'],c['class'])
            if c['class'] in('TStringField','TWideStringField'): ty+=f"({fp.get('Size',20)})"
            if c['class'] in('TBCDField','TFMTBCDField'): ty+=f"({fp.get('Precision',18)},{fp.get('Size',4)})"
            orig=fp.get('Origin')
            t=None
            if orig and '.' in orig:
                a,col=orig.split('.',1); t=alias.get(a.strip('[]"').upper(),a.upper()); fname=col.strip('[]"').upper()
            elif single: t=tabs[0].upper()
            if t: cols[t].setdefault(fname,ty); src[t].add(fn)
        for m in re.finditer(r'(?is)insert\s+into\s+\[?(\w+)\]?\s*\(([^)]*)\)',q):
            for col in m.group(2).split(','):
                col=col.strip().strip('[]').upper()
                if col: cols[m.group(1).upper()].setdefault(col,'?'); src[m.group(1).upper()].add(fn)
        for m in re.finditer(r'(?is)update\s+\[?(\w+)\]?\s+set\s+(.*?)(?:\bwhere\b|$)',q):
            for col in re.findall(r'(\w+)\s*=',m.group(2)):
                cols[m.group(1).upper()].setdefault(col.upper(),'?'); src[m.group(1).upper()].add(fn)
json.dump({'tables':{t:cols[t] for t in sorted(cols)},'used_in':{t:sorted(v) for t,v in src.items()}},open(sys.argv[2],'w'),ensure_ascii=False,indent=1)
json.dump(sqls,open(sys.argv[3],'w'),ensure_ascii=False,indent=1)
print(len(cols),'tables',sum(len(v) for v in cols.values()),'columns')
