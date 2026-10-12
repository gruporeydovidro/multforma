import struct,sys,os
class R:
    def __init__(s,b): s.b=b; s.p=0
    def u8(s): v=s.b[s.p]; s.p+=1; return v
    def peek(s): return s.b[s.p]
    def n(s,k): v=s.b[s.p:s.p+k]; s.p+=k; return v
    def ss(s): l=s.u8(); return s.n(l).decode('cp1252')
def q(t): 
    out=[]; buf=''
    for ch in t:
        if 32<=ord(ch)<127 and ch!="'": buf+=ch
        else:
            if buf: out.append("'"+buf+"'"); buf=''
            out.append("''" if ch=="'" else f"#{ord(ch)}")
    if buf: out.append("'"+buf+"'")
    s=''.join(out) or "''"
    return s.replace("''#","'#") if False else s
def val(r,ind):
    t=r.u8()
    if t==0: return 'nil?'
    if t==1:
        items=[]
        while r.peek()!=0: items.append(val(r,ind+2))
        r.u8(); return '(\n'+''.join(' '*(ind+2)+i+'\n' for i in items)+' '*ind+')'
    if t==2: return str(struct.unpack('<b',r.n(1))[0])
    if t==3: return str(struct.unpack('<h',r.n(2))[0])
    if t==4: return str(struct.unpack('<i',r.n(4))[0])
    if t==5:
        b=r.n(10); m=int.from_bytes(b[:8],'little'); e=int.from_bytes(b[8:],'little'); sg=-1 if e&0x8000 else 1; e&=0x7fff
        return repr(sg*m*2.0**(e-16383-63)) if m else '0'
    if t in (6,7): x=r.ss(); return q(x) if t==6 else x
    if t==8: return 'False'
    if t==9: return 'True'
    if t==10: l=struct.unpack('<i',r.n(4))[0]; r.n(l); return f'{{binary {l} bytes}}'
    if t==11:
        it=[]
        while True:
            x=r.ss()
            if not x: break
            it.append(x)
        return '['+', '.join(it)+']'
    if t==12: l=struct.unpack('<i',r.n(4))[0]; return q(r.n(l).decode('cp1252'))
    if t==13: return 'nil'
    if t==14:
        items=[]
        while r.peek()!=0:
            hdr=''
            if r.peek() in (2,3,4): hdr=f' [{val(r,0)}]'
            assert r.u8()==1
            props=[]
            while r.peek()!=0: props.append(prop(r,ind+4))
            r.u8(); items.append(' '*(ind+2)+'item'+hdr+'\n'+''.join(props)+' '*(ind+2)+'end')
        r.u8(); return '<\n'+'\n'.join(items)+'>' if items else '<>'
    if t==15: return repr(struct.unpack('<f',r.n(4))[0])
    if t==16: return str(struct.unpack('<q',r.n(8))[0]/10000)
    if t==17: return repr(struct.unpack('<d',r.n(8))[0])
    if t==18: l=struct.unpack('<i',r.n(4))[0]; return q(r.n(l*2).decode('utf-16le'))
    if t==19: return str(struct.unpack('<q',r.n(8))[0])
    if t==20: l=struct.unpack('<i',r.n(4))[0]; return q(r.n(l).decode('utf-8'))
    if t==21: return repr(struct.unpack('<d',r.n(8))[0])
    raise ValueError(f'type {t} at {r.p}')
def prop(r,ind):
    name=r.ss(); return ' '*ind+name+' = '+val(r,ind)+'\n'
def obj(r,ind):
    kw='object'; b=r.peek()
    if b&0xF0==0xF0:
        fl=r.u8()&0x0F
        if fl&2: val(r,0)
        if fl&1: kw='inherited'
        if fl&4: kw='inline'
    cls=r.ss(); nm=r.ss()
    s=' '*ind+f'{kw} {nm}: {cls}\n' if nm else ' '*ind+f'{kw} {cls}\n'
    while r.peek()!=0: s+=prop(r,ind+2)
    r.u8()
    while r.peek()!=0: s+=obj(r,ind+2)
    r.u8(); return s+' '*ind+'end\n'
src,dst=sys.argv[1],sys.argv[2]; os.makedirs(dst,exist_ok=True); ok=bad=0
for f in sorted(os.listdir(src)):
    b=open(os.path.join(src,f),'rb').read()
    if b[:4]!=b'TPF0': continue
    try:
        r=R(b); r.p=4; open(os.path.join(dst,f+'.dfm'),'w',encoding='utf-8').write(obj(r,0)); ok+=1
    except Exception as e: bad+=1; print('ERR',f,e)
print('ok',ok,'bad',bad)
