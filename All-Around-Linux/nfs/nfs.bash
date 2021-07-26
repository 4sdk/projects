#2
mkdir directory
cd directory
touch file
echo "OMG! Linux is the best!!!" > file
ln file file1
ln file file1
ln -s file file2
rm file
cat file1
cat file2

#3
sudo useradd user
sudo groupadd wolves
sudo usermod -a -G wolves user
chmod o-wx+r file1

#4 
hostname
sudo hostname -b LinuxMachine
sudo shutdown -r 

#5
fconfig

#6
sudo fdisk /dev/sdc
o
n
p
1
+5GB
w

wipefs -a /dev/sdc
pvcreate /dev/sdc
vgcreate vgdisk /dev/sdc
lvcreate -L 10GB -n bob vgdisk
mkfs.xfs /dev/vgdisk/bob
mkdir /mnt/targil
mount /dev/vgdisk/bob /mnt/targil
touch Hello /mnt/targil

#7
yum install -y vim
yum install -y firewalld nfs-utils

#8
ps -e
kill [PID]
ps -e | grep [process name]
 
#9
top
#memory: 6.7% cpu: 0.2%
 
#nfs 
mount vs-wolves:/dev/mapper/wolves_nfs [local path]


#server
sudo su
iptables -L
iptables -F
systemctl disable --now firewalld
ping yael-linux
yum install -y nfs-utils  
rpcinfo -p 
mkdir /home/daniel/shares
touch /home/daniel/shares/HelloWolf
vi /etc/exports
# /home/daniel/shares *(rw,sync,no_root_squash)
showmount -e
exportfs -ra

#client
sudo su
ping daniel-linux
yum install -y nfs-utils  
rpcinfo -p 
systemctl list-unit-files -t service | grep nfs
systemctl enable --now nfs-server.service
showmount -e daniel-linux
mkdir /mnt/daniel-shares
mount daniel-linux:/home/daniel/shares /mnt/daniel-shares/
vi /etc/fstab
# daniel-linux:/home/daniel/shares /nfs-shares nfs defaults 0 0








