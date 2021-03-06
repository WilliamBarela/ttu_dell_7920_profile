# make basic directory structure for programs
sudo mkdir -p /opt/apps/bin
sudo mkdir -p /opt/apps/share

# basic server programs
sudo apt-get -y install gparted
sudo apt-get -y install vim-athena
sudo apt-get -y install openssh-server
sudo apt-get -y install git

# basic packages
sudo apt-get -y install zlib1g-dev
sudo apt-get -y install parallel
sudo apt-get -y install libncurses5-dev
sudo apt-get -y install libbz2-dev
sudo apt-get -y install liblzma-dev
sudo apt-get -y install openjdk-8-jre
sudo apt-get -y install openjdk-8-jdk

# TODO: Make sure that partions are correctly set up.
# use a combination of gparted (from boot disk boot) and disks to format and make partions
# to check for names of devices use 'sudo lsblk'
# to check for uuids, use 'ls -hal /dev/disks/by-uuid and make corrects in /etc/fstab

# set the time to the TTU ntp server:
sudo timedatectl set-ntp no
sudo apt-get install ntp
# add TTU ntp server entry (pool ntp.ttu.edu) to 'sudo vim /etc/ntp.conf'
# be sure to comment out the default pooled ntp servers from ubuntu, else it will not work
sudo service ntp stop
sudo ntpd -gq
sudo service ntp start

# TODO: Install Anaconda. First download the version of Python you need.
# get installer from anaconda's website.
# make shell file executable 'sudo chmod +x ./Ananconda_installer_xxx.sh

sudo mkdir /opt/apps/anaconda

# TODO: run anaconda installer and set the following path for anaconda.
# Accept to initialize anaconda in the bashrc
# /opt/apps/anaconda/anaconda3

# TODO: 'sudo vim -O /etc/skel/.bashrc ~/.bashrc' 
# copy code generated by anaconda into the /etc/skel bashrc

# set up channels for bioconda
conda config --add channels conda-forge
conda config --add channels defaults
conda config --add channels r
conda config --add channels bioconda

# install bioconda packages:
conda install mafft spades samtools bwa blast gatk4 picard exonerate raxml iqtree bioconductor-rsamtools
