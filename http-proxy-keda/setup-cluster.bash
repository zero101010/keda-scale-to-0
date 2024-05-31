# ### Ingress in prod
# helm upgrade --install ingress-nginx ingress-nginx \
#  --repo https://kubernetes.github.io/ingress-nginx \
#  --namespace ingress-nginx --create-namespace

### Ingress using kind
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

### Install Keda
helm repo add kedacore https://kedacore.github.io/charts
helm repo update
helm install keda kedacore/keda --namespace keda --create-namespace
helm install http-add-on kedacore/keda-add-ons-http --namespace keda

# ### Ngrok 
# helm repo add ngrok https://ngrok.github.io/kubernetes-ingress-controller

  
# # ## Aplication
# # kubectl apply -f k8s/

# grpcurl -plaintext -H "Host: grpc.example.com" lc-igor.ngrok.io:80 list


