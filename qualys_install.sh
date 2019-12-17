#!/bin/bash

echo "Installing Qualys container sensor on remote docker host..."

ssh -t -t centos@10.0.0.19 -o StrictHostKeyChecking=no
wget https://atmet8vb.s3.amazonaws.com/QualysContainerSensor.tar.xz && tar -xf QualysContainerSensor.tar.xz
mkdir -p /etc/qualys
mkdir -p /usr/local/qualys/sensor/data
./installsensor.sh ActivationId=26ed0e3d-cffe-4c6b-9e79-bfaac22f1557 CustomerId=b34ba2b7-acfa-6ffc-83e6-7eff4061769f Storage=/usr/local/qualys/sensor/data -s -r
