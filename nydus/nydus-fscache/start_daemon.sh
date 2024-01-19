sudo rm -rf /var/lib/containerd/*
sudo rm -rf /var/lib/containerd-nydus/*
sudo rm -rf /var/lib/nerdctl/*

sudo service containerd restart

sudo rmmod cachefiles
sudo modprobe cachefiles

sudo containerd-nydus-grpc  --nydusd-config /etc/nydus/nydusd-config.fscache.json  --fs-driver fscache  --nydusd nydusd  --log-to-stdout
