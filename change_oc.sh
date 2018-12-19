#!/bin/bash
#
# 16/10/2018
#
# Script requires that you have a directory for each version of the oc binary
# at /opt/openshift/"oc version number" in order to work
echo "########################################################################################"
echo Current version of oc
ls -l /usr/local/bin/oc | sed -e 's/.* -> //'
echo "########################################################################################"
echo Versions of openshift oc on the system
ls /opt/openshift
echo "########################################################################################"
echo "What version do you wish to install ?"
read version
sudo rm /usr/local/bin/oc
sudo ln -s /opt/openshift/$version/oc /usr/local/bin/oc
echo " "
echo "########################################################################################"
oc version
echo " "
echo "########################################################################################"
