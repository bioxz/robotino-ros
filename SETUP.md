Virtual Machine Setup
=====================
* Acquire the [ROS Indigo 14.04 virtual image](http://nootrix.com/downloads/#RosVM). Login is viki/viki.
* Clean up the /etc/apt/sources.list

     deb http://archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse
     deb http://archive.ubuntu.com/ubuntu/ trusty-updates main restricted universe multiverse
     deb http://archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse
     deb http://security.ubuntu.com/ubuntu trusty-security main restricted universe multiverse
     deb http://archive.canonical.com/ubuntu trusty partner
     deb http://extras.ubuntu.com/ubuntu trusty main

* Update the image
 * apt-get update, apt-get upgrade && apt-get dist-upgrade
* Install the newer virtualbox guest additions
 * mount iso
 * mount /dev/cdrom /mnt
 * run install script in /mnt/
 * reboot

Add the Robotino API2
=====================
* Import the key
* http://wiki.openrobotino.org/index.php?title=Debrepository#Import_key_file
* add the repo
* http://wiki.openrobotino.org/index.php?title=Debrepository#Ubuntu_14.04_Trusty_.28images_2.x.29
* Install the package
* sudo apt-get install robotino-api2 robotino-common robotino-tools

Setup ROS Workspace
=========
* create a workspace
* checkout the updates files for robotino
 * https://github.com/UniOL-AMT/uol-robotino-ros-indigo