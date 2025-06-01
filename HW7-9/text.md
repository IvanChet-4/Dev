//Заметки

openssl genrsa -out kubuser.key 2048
openssl req -new -key kubuser.key -out kubuser.csr -subj "/CN=kubuser/O=developers"
openssl x509 -req -in kubuser.csr -CA /var/snap/microk8s/current/certs/ca.crt -CAkey /var/snap/microk8s/current/certs/ca.key -CAcreateserial -out kubuser.crt -days 365
kubectl config set-credentials kubuser --client-certificate=kubuser.crt --client-key=kubuser.key
kubectl config set-context kubuser-context --cluster=microk8s-cluster --user=kubuser
kubectl apply -f role.yaml -f rolebinding.yaml
kubectl config use-context kubuser-context


Для тестов
kubectl describe pod "name"
kubectl logs "name"
