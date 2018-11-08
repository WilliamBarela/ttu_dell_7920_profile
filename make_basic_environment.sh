# basic server programs
apt-get install gparted
apt-get install vim-athena
apt-get install openssh-server
apt-get install git

# TODO: Make sure that partions are correctly set up.
# use a combination of gparted (from boot disk boot) and disks to format and make partions
# to check for names of devices use 'sudo lsblk'
# to check for uuids, use 'ls -hal /dev/disks/by-uuid and make corrects in /etc/fstab

# set the time to the TTU ntp server:
timedatectl set-ntp no
apt-get install ntp
# add TTU ntp server entry (pool ntp.ttu.edu) to 'sudo vim /etc/ntp.conf'
# be sure to comment out the default pooled ntp servers from ubuntu, else it will not work
service ntp stop
ntpd -gq
service ntp start

