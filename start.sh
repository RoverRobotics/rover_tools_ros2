#!/bin/bash
sudo apt install software-properties-common
sudo add-apt-repository universe

sudo apt update && sudo apt install curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt update && sudo apt upgrade
sudo apt install ros-foxy-desktop python3-argcomplete

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
pip install colcon-common-extensions

# Rosdep Install
sudo apt install python3-rosdep2
rosdep update
sudo apt install python3-colcon-common-extensions

cwd=$(pwd)
cf="${cwd}/../credentials.json"
python3 ~/rover_tools_ros2/menu/menu_main.py --cf ${cf}

# Source ros2
source ~/opt/ros/foxy/setup.bash
source ~/rover_tools_ros2/install/setup.sh
