#!/bin/bash

sudo fdisk /dev/sdc <<EOF
n
1

+1020M
n
2

+1020M
n
3

+1020M
n
4

+1020M
n
5

+1020M
n
6

+1020M
n
7

+1020M
n
8

+1020M
n
9

+1020M
n
10

+1020M
w

EOF

sudo mkfs.ext4 -F /dev/sdc1
sudo mkfs.ext4 -F /dev/sdc2
sudo mkfs.ext4 -F /dev/sdc3
sudo mkfs.ext4 -F /dev/sdc4
sudo mkfs.ext4 -F /dev/sdc5
sudo mkfs.ext4 -F /dev/sdc6
sudo mkfs.ext4 -F /dev/sdc7
sudo mkfs.ext4 -F /dev/sdc8
sudo mkfs.ext4 -F /dev/sdc9
sudo mkfs.ext4 -F /dev/sdc10

# Añadir las entradas a /etc/fstab para un montaje persistente
echo "/dev/sdc1 /Examenes-UTN/alumno1/parcial1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
<<EOF
y
EOF
echo "/dev/sdc2 /Examenes-UTN/alumno1/parcial2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
<<EOF
y
EOF
echo "/dev/sdc3 /Examenes-UTN/alumno1/parcial3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
<<EOF
y
EOF
echo "/dev/sdc4 /Examenes-UTN/alumno2/parcial1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
<<EOF
y
EOF
echo "/dev/sdc5 /Examenes-UTN/alumno2/parcial2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
<<EOF
y
EOF
echo "/dev/sdc6 /Examenes-UTN/alumno2/parcial3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
<<EOF
y
EOF
echo "/dev/sdc7 /Examenes-UTN/alumno3/parcial1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
<<EOF
y
EOF
echo "/dev/sdc8 /Examenes-UTN/alumno3/parcial2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
<<EOF
y
EOF
echo "/dev/sdc9 /Examenes-UTN/alumno3/parcial3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
<<EOF
y
EOF
echo "/dev/sdc10 /Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab
<<EOF
y
EOF
sudo mount -a

