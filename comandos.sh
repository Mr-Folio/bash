#!/usr/bin/env bash

# 1. Instalación de Minikube (instalacion.png)
curl -LO https://github.com/kubernetes/minikube/releases/latest/download/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64
ls -lh

# 2. Versión e inicio de Minikube (minikube_done.png)
minikube version
minikube start

# 3. Estado del clúster (status.png)
minikube status

# 4. Listado de perfiles (profile-list.png)
minikube profile list

# 5. Instalación de kubectl y nodos (nodes+Kubectl.png)
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version
kubectl get nodes -o wide
