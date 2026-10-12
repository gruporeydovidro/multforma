import struct,sys,os,json
sys.path.insert(0,'')
class R:
    def __init__(s,b): s.b=b; s.p=0
    def u8(s): v=s.b[s.p]; s.p+=1; return v
    def peek(s): return s.b[s.p]
    def n(s,k): v=s.b[s.p:s.p+k]; s.p+=k; return v
    def ss(s): l=s.u8(); return s.n(l).decode('cp1252')
def val(r):
    t=r.u8()
    if t==0: return None
    if t==1:
        a=[]
        while r.peek()!=0: a.append(val(r))
        r.u8(); return a
    if t==2: return struct.unpack('<b',r.n(1))[0]
    if t==3: return struct.unpack('<h',r.n(2))[0]
    if t==4: return struct.unpack('<i',r.n(4))[0]
    if t==5:
        b=r.n(10); m=int.from_bytes(b[:8],'little'); e=int.from_bytes(b[8:],'little'); sg=-1 if e&0x8000 else 1; e&=0x7fff
        return sg*m*2.0**(e-16383-63) if m else 0
    if t==6: return r.ss()
    if t==7: return {'ident':r.ss()}
    if t==8: return False
    if t==9: return True
    if t==10: l=struct.unpack('<i',r.n(4))[0]; r.n(l); return {'binary':l}
    if t==11:
        a=[]
        while True:
            x=r.ss()
            if not x: break
            a.append(x)
        return {'set':a}
    if t==12: l=struct.unpack('<i',r.n(4))[0]; return r.n(l).decode('cp1252')
    if t==13: return None
    if t==14:
        items=[]
        while r.peek()!=0:
            if r.peek() in (2,3,4): val(r)
            assert r.u8()==1
            p={}
            while r.peek()!=0: k=r.ss(); p[k]=val(r)
            r.u8(); items.append(p)
        r.u8(); return {'collection':items}
    if t==15: return struct.unpack('<f',r.n(4))[0]
    if t==16: return struct.unpack('<q',r.n(8))[0]/10000
    if t==17: return struct.unpack('<d',r.n(8))[0]
    if t==18: l=struct.unpack('<i',r.n(4))[0]; return r.n(l*2).decode('utf-16le')
    if t==19: return struct.unpack('<q',r.n(8))[0]
    if t==20: l=struct.unpack('<i',r.n(4))[0]; return r.n(l).decode('utf-8')
    if t==21: return struct.unpack('<d',r.n(8))[0]
    raise ValueError(t)
def obj(r):
    b=r.peek(); inh=False
    if b&0xF0==0xF0:
        fl=r.u8()&0x0F
        if fl&2: val(r)
        inh=bool(fl&1)
    o={'class':r.ss(),'name':r.ss(),'inherited':inh,'props':{},'children':[]}
    while r.peek()!=0: k=r.ss(); o['props'][k]=val(r)
    r.u8()
    while r.peek()!=0: o['children'].append(obj(r))
    r.u8(); return o
src,dst=sys.argv[1],sys.argv[2]; res={}
for f in sorted(os.listdir(src)):
    b=open(os.path.join(src,f),'rb').read()
    if b[:4]==b'TPF0':
        r=R(b); r.p=4; res[f]=obj(r)
json.dump(res,open(dst,'w'),ensure_ascii=False)
print(len(res))
