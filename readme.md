### readme

```shell
## adding helm repo
helm repo add teochenglim https://teochenglim.github.io/helm-charts/

### installing the app
helm install myapp teochenglim/dummy-nginx

### look for latest version of the app
helm repo update teochenglim

### install specific version of the helm charts
helm upgrade --install dummy teochenglim/dummy-nginx --version 1.0.0
helm upgrade --install dummy teochenglim/dummy-nginx --version 1.0.0

helm upgrade --install echoserver teochenglim/echoserver

### Checking if the app is running
kubectl get pod
NAME                              READY   STATUS    RESTARTS   AGE
dummy-dummy-nginx-75c6958c45-hkpr9   1/1     Running   0          19s

$ kubectl get svc
NAME               TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
kubernetes         ClusterIP   10.96.0.1       <none>        443/TCP        21h
dummy-dummy-nginx  NodePort    10.107.11.133   <none>        80:32387/TCP   24s

$ curl -s http://localhost:32387/
===============================

This is your helm deploy! dummy-dummy-nginx-75c6958c45-hkpr9 myvalue1

===============================

### clean up after test
helm delete dummy
helm delete echoserver

```
