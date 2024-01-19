sudo rm -rf /var/lib/containerd/*
sudo rm -rf /var/lib/containerd-nydus/*
sudo rm -rf /var/lib/nerdctl/*

sudo service containerd restart

sudo /usr/bin/containerd-nydus-grpc     --nydusd-config /etc/nydus/nydusd-config.fusedev.json     --log-to-stdout
