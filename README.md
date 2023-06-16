# ROS2 Rover Install Tool - BETA

The ROS2 Rover Install Tool is designed to easily setup any rover robot. This is a beta version being tested and developed to install our ROS2 drivers on our robots. Feel free to use it but be cautious as some things may not fully work as planned yet.

# Usage and Install
Assumptions:
- Ubuntu 22.04 Jammy Jellyfish is installed on device
- ROS2 Humble installed**

** We **REQUIRE** pre-installing ROS2 Humble before running our script. The script can download and install humble but small issues have arisen in testing and pre installing helps mitigate all of these issues. Follow the ROS2 Humble install guide linked here: https://docs.ros.org/en/humble/Installation/Ubuntu-Install-Debians.html

Once these steps are completed you can move on to installing our tool:

Start by cloning this repo: 
```
cd ~/
git clone https://github.com/roverrobotics/rover_tools_ros2
cd ~/rover_tools
```

Next run the start.sh script by doing to following:
```
cd ~/rover_tools
./start.sh
```

Once the script installs its required dependencies, you will be brought to a menu. Follow the menu and install for your respective robot.

** To install the mini or MĪTI version you will need to power on your robot and connect it to the computer running the script via the USB cable. **

# Troubleshooting
If the install script has failed, view the detailed log by running the following command

```
cat ~/rr-install-verification.file
```

Here is a sample output of a failure <br>
![image](https://user-images.githubusercontent.com/6597441/128610405-4e99d424-48ff-4ce5-9775-ebf714dda4d8.png)

You can then look in rover_tools/install/shellscripts.json to view the command that caused the failure
