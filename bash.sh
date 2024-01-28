#!/bin/bash

#update and install htop/screen
sudo apt-get update -y
sudo apt install htop -y
sudo apt install screen -y

mkdir -p $HOME/miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $HOME/miniconda/miniconda.sh
bash $HOME/miniconda/miniconda.sh -b -u -p $HOME/miniconda
rm -rf $HOME/miniconda/miniconda.sh


if [ -f $HOME/miniconda/bin/conda]; then
	echo "miniconda installed success"
	
	$HOME/miniconda/bin/conda init bash
else
	echo "miniconda installation failed"
fi

#export environment
conda env export > requirement.yaml
echo "environment exported to requirement.yaml"



