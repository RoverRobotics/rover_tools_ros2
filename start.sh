#!/bin/bash
sudo apt update
sudo apt full-upgrade
sudo apt-get install python3-pip -y
sudo apt-get install screen -y
sudo apt-get install nano -y
sudo apt install net-tools
sudo apt install can-utils
sudo apt install git
sudo apt install cmake
pip3 install console-menu
pip3 install boto3
pip3 install pexpect
pip install six

# Rosdep Install
sudo apt install python3-rosdep2
rosdep update
sudo apt install python3-colcon-common-extensions

cwd=$(pwd)
cf="${cwd}/../credentials.json"
python3 ~/rover_tools_ros2/menu/menu_main.py --cf ${cf}

# Source ros2
source ~/opt/ros/foxy/setup.bash
source ~/rover_workspace/install/setup.sh
