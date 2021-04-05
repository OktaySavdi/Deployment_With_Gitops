install helm

```bash
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
```
Test helm chart
```bash
helm create gitops
helm install gitops-test /root/gitops --values /root/gitops/values.yaml --namespace=myapp-test --create-namespace --set deployments.envValue=test --dry-run
```
Service account user is given admin authority (Openshift)
```sh
oc adm policy add-cluster-role-to-user cluster-admin system:serviceaccount:default:myuser
```
Configure Jenkins
```bash
cp /usr/local/bin/helm /bin/
sudo -su jenkins bash 
echo $PATH
helm
```
Service account token information is entered
Manage Jenkins > manage Credentials 

![image](https://user-images.githubusercontent.com/3519706/113585009-4d0b8b00-9634-11eb-861a-a1c9563f6bdf.png)

Set Proxy for Jenkins
Manage Jenkins > Manage Plugins > Advanced

![image](https://user-images.githubusercontent.com/3519706/113585354-cc00c380-9634-11eb-8099-c8fffb294198.png)
