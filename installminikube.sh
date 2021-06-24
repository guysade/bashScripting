RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"
curl https://get.docker.com | sudo sh
sudo usermod -aG docker $USER
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube start --driver=docker
echo "alias kubectl='minikubectl kubectl --'" > /etc/profile
