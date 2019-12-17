#!/bin/bash

echo "Installing Qualys container sensor..."

sudo tar -xvf QualysContainerSensor.tar.xz
sudo mkdir -p /usr/local/qualys/sensor/data
sudo ./installsensor.sh ActivationId=26ed0e3d-cffe-4c6b-9e79-bfaac22f1557 CustomerId=b34ba2b7-acfa-6ffc-83e6-7eff4061769f Storage=/usr/local/qualys/sensor/data -s -r
