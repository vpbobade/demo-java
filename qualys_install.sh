#!/bin/bash

echo "Installing Qualys container sensor on remote docker host..."

sh 'ssh -t -t ec2-user@172.31.81.65 -o StrictHostKeyChecking=no'
sh "sudo wget https://atmet8vb.s3.amazonaws.com/QualysContainerSensor.tar.xz && sudo tar -xf QualysContainerSensor.tar.xz"
sh "sudo mkdir -p /usr/local/qualys/sensor/data"
sh "sudo ./installsensor.sh ActivationId=26ed0e3d-cffe-4c6b-9e79-bfaac22f1557 CustomerId=b34ba2b7-acfa-6ffc-83e6-7eff4061769f Storage=/usr/local/qualys/sensor/data -s -r"	
