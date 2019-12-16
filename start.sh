#!/bin/bash

apt-get update && \
apt-get install -y \
    net-tools \
    tree \
    vim && \
    yum \
    sudo \
rm -rf /var/lib/apt/lists/* && apt-get clean && apt-get purge
