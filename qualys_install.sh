#!/bin/bash

echo "Installing Qualys container sensor on docker host..."

ssh -t -t centos@10.0.0.19 -o StrictHostKeyChecking=no
#ssh -t -t ec2-user@54.211.80.151 -o StrictHostKeyChecking=no
sudo wget https://atmet8vb.s3.amazonaws.com/QualysContainerSensor.tar.xz && tar -xf QualysContainerSensor.tar.xz
sudo mkdir -p /usr/local/qualys/sensor/data
sudo ./installsensor.sh ActivationId=26ed0e3d-cffe-4c6b-9e79-bfaac22f1557 CustomerId=b34ba2b7-acfa-6ffc-83e6-7eff4061769f Storage=/usr/local/qualys/sensor/data -s -r
