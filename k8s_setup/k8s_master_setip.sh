#!/bin/bash

# removing config file to avoid error in k8s master initilaziation
rm -rf /etc/containerd/config.toml
systemctl restart containerd

# initialize master
kubeadm init

# setup master profile for k8s master
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# setup k8s network
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

