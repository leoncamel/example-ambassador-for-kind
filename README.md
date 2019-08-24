
# A simple example for ambassador by `kind`

## Summary

This will expose port `30080~30085` on `localhost`.

## Create `kind` cluster

```sh
./01_kind-create-cluster.sh
```

```sh
./02_kind-load-docker-images.sh
```

Then, we can setup `$KUBECONFIG` by:

```sh
export KUBECONFIG="$(kind get kubeconfig-path --name="kind")"
```

## Create ambassador deployments

```sh
kubectl apply -f ambassador_tour/01_ambassador-rbac.yaml
kubectl apply -f ambassador_tour/02_ambassador-svc-nodeport.yaml
kubectl apply -f ambassador_tour/03_tour.yaml
```

