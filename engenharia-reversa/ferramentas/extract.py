import json,sys,os,hashlib
f=sys.argv[1]; exe=sys.argv[2]; out=sys.argv[3]
r=json.load(open(f))["normalized_result"]
data=open(exe,'rb').read()
os.makedirs(out,exist_ok=True)
names={}
for x in r["resources"]:
    t=x["type"]; n=x["name"]
    tn = t.get("id") if t["kind"]=="id" else t.get("name", t.get("value"))
    nn = n.get("id") if n["kind"]=="id" else n.get("name", n.get("value"))
    loc=x["payload"]["location"]; b=data[loc["offset"]:loc["offset"]+loc["bytes"]]
    assert hashlib.sha256(b).hexdigest()==x["payload"]["sha256"]
    d=os.path.join(out,str(tn)); os.makedirs(d,exist_ok=True)
    open(os.path.join(d,str(nn)),'wb').write(b)
print("ok")
