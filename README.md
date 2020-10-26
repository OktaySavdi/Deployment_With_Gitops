**#Creating files to source env**
```bash
cat << EOF > envvariables
export namespaces="oktay"
export app="istioproject"
export name="istioproject"
EOF
```
**#Source** 

`source envvariables`

**#Install**

`envsubst < istio.yaml | oc apply -f -`
