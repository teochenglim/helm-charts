### readme

* kroki chart
  * Kroki provides a unified API with support for BlockDiag (BlockDiag, SeqDiag, ActDiag, NwDiag, PacketDiag, RackDiag), BPMN, Bytefield, C4 (with PlantUML), Ditaa, Erd, Excalidraw, GraphViz, Mermaid, Nomnoml, Pikchr, PlantUML, SvgBob, UMLet, Vega, Vega-Lite, WaveDrom... and more to come!

```shell
## adding helm repo
helm repo add teochenglim https://teochenglim.github.io/helm-charts/

### installing the kroki
helm install kroki teochenglim/kroki

### look for latest version of the app
helm repo update teochenglim

### install default version of the kroki helm charts
helm upgrade --install kroki teochenglim/kroki

### install default version of the kroki helm charts with your custom values
helm upgrade --install kroki teochenglim/kroki -f values.yaml

### ensure all kroki service are running (kroki, blockdiag, bpmn, Excalidraw, mermiad)
helm test kroki

### uninstall kroki
helm delete kroki

```


* dummy-nginx chart
  * return hostname and allow you to set env myvar and return, could be useful for any blue-green deployment demo

* echoserver chart
  * awesome jmalloc/echo-server help to debug http header/body/request and with websocket support


```shell
## adding helm repo
helm repo add teochenglim https://teochenglim.github.io/helm-charts/

### installing the app
helm install dummy teochenglim/dummy-nginx

### look for latest version of the app
helm repo update teochenglim

### install specific version of the helm charts
helm upgrade --install dummy teochenglim/dummy-nginx --version 1.0.0
helm upgrade --install echoserver teochenglim/echoserver --version 0.1.0

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
