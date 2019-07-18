# Yunion Github PR robot k8s configuration

```bash
kubectl create secret generic hmac-token --from-file=hmac=./secret
kubectl create secret generic oauth-token --from-file=oauth=./oauth-secret

kubectl create -f ./starter.yaml
make
```
