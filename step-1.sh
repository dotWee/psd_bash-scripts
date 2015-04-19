#!/bin/bash

#
# Created by Michael S Corigliano for Team AOSPAL (michael.s.corigliano@gmail.com)
# Modified by Lukas Wolfsteiner (lukas@dotwee.de) for personal use
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This will create a build environment for building SlimLP on Ubuntu 14.04
# 64 bit (x86_64) by installing the necessary packages and
# updating your operating system.
#

# 1) Update OS
   echo -e "Part 1 of 3";
   echo -e "Upgrading your OS...";
   echo -e "Please enter your 'sudo' password if promped.";
   echo -e "";
   echo -e ""
   sudo apt-get update
   sudo apt-get upgrade -y
   sudo apt-get dist-upgrade -y
   clear

# 2) Install packages
   echo -e "Part 2 of 3";
   echo -e "Installing packages needed for building...";
   echo -e "Please enter your 'sudo' password if promped.";
   echo -e "";
   echo -e ""
   sudo apt-get update
   sudo apt-get install bison g++-multilib git gperf libxml2-utils make zlib1g-dev:i386 zip
   clear
   
# 3) Install and configure openJDK 7
   echo -e "Part 3 of 3";
   echo -e "Installing and configuring JDK 7...";
   echo -e "Please enter your 'sudo' password when promped.";
   echo -e "Please press 'enter' when prompted.";
   echo -e "";
   echo -e ""
   sudo apt-get update
   sudo apt-get install openjdk-7-jdk -y
   sudo update-alternatives --config java
   sudo update-alternatives --config javac
   clear
   
# Let the user know that the script has finished
   echo -e "The script has finished setting up your android build environment,";
   echo -e "please move onto the next step to initialize and sync your source.";
   echo -e "";
   echo -e ""
