sudo snap install microk8s --classic
sudo usermod -a -G microk8s root
mkdir -p ~/.kube
chmod 0700 ~/.kube
su - root

microk8s status --wait-ready
microk8s kubectl get nodes
microk8s enable metallb
