sudo systemctl stop nginx
sudo systemctl disable nginx
sudo apt remove nginx -y
sudo apt purge nginx -y
sudo apt autoremove -y
sudo apt update && sudo apt upgrade -y
sudo apt install -y apt-transport-https ca-certificates curl gpg
sudo systemctl stop docker
sudo systemctl disable docker
sudo apt remove -y docker docker-engine docker.io containerd runc
sudo apt purge -y docker docker-engine docker.io containerd runc
sudo apt autoremove -y
sudo rm -rf /var/lib/docker /var/lib/containerd
sudo rm -rf /etc/docker
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg -y; done
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras -y
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
sudo rm -rf /etc/apt/sources.list.d/docker.list
sudo rm -rf /etc/apt/keyrings/docker.asc
sudo reboot