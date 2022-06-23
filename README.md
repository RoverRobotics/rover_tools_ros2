# rover_tools_ros2

Rover Tools are a new set of tools to help users quickly and easily install the required software to run a Rover robot. Rover tools are targetted for provisioning Ubuntu.

This fork is being developed to easily install ros2 and our ros2 drivers for the Rover Mini and Mega.

# install

The first time you run rover tools run these commands to install necessary dependancies

```
cd ~/
git clone https://github.com/roverrobotics/rover_tools_ros2
cd ~/rover_tools
```

# usage

```
cd ~/rover_tools
./start.sh
```

# Troubleshooting
If the install script has failed, view the detailed log by running the following command

```
cat ~/rr-install-verification.file
```

Here is a sample output of a failure <br>
![image](https://user-images.githubusercontent.com/6597441/128610405-4e99d424-48ff-4ce5-9775-ebf714dda4d8.png)

You can then look in rover_tools/install/shellscripts.json to view the command that caused the failure
