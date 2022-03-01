### readme

```shell
## adding helm repo
helm repo add myrepo https://teochenglim.github.io/helm-charts/

### installing the app
helm install myapp myrepo/test-app

### look for latest version of the app
helm repo update myrepo

### install specific version of the helm charts
helm install myapp myrepo/test-app --version 1.0.0 # this will fail because of the docker image tag bug
helm install myapp myrepo/test-app --version 1.0.1 # this shall work

### Checking if the app is running
kubectl get pod
NAME                              READY   STATUS    RESTARTS   AGE
myapp-test-app-75c6958c45-hkpr9   1/1     Running   0          19s

$ kubectl get svc
NAME             TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
kubernetes       ClusterIP   10.96.0.1       <none>        443/TCP        21h
myapp-test-app   NodePort    10.107.11.133   <none>        80:32387/TCP   24s

$ curl -s http://localhost:32387/
===============================

This is your helm deploy! myapp-test-app-75c6958c45-hkpr9 myvalue1

===============================

```
