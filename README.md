Commands:
```
# build image
docker build -t k8s_kibana .
docker run -d -p 5601:5601 -e ELASTICSEARCH_URL=http://127.0.0.1:9200 --name=k8s k8s_kibana

# set up port forwarding
docker cp ~/.kube k8s_kibana:/root/
docker exec -ti k8s_kibana bash
kubectl port-forward elasticsearch-4274471207-jq23z 9200:9200

```
