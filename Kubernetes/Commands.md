#=====================================================================
# Kubernetes Commands 

#Install MicroK8s
sudo snap install microk8s --classic
sudo usermod -aG microk8s $USER
newgrp microk8s

#Enable services
microk8s enable dns

#Sample Deployment
microk8s kubectl create deployment nginx --image=nginx
microk8s kubectl expose deployment nginx --type=NodePort --port=80

#Check
microk8s kubectl get pods
microk8s kubectl get svc

#This deployment demonstrates running a containerized Nginx application using Kubernetes.

