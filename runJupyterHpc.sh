#!/bin/bash

# the conda environment can be defined by yourself
myCondaEnv="myCondaEnv"

# source the conda bash script
source /opt/anaconda3/etc/profile.d/conda.sh

# activate the conda environment you have install
conda activate $myCondaEnv

# cd your home folder
cd /home/$USER

# print the host information
hostname -I

# enable the jupyter lab
~/.conda/envs/$myCondaEnv/bin/jupyter lab --ip=0.0.0.0 --port=7777 --no-browser

# deactivate the conda environment
conda deactivate
