#!/bin/bash

sudo dnf upgrade --refresh rpm glibc
sudo rm /var/lib/rpm/.rpm.lock
sudo dnf upgrade dnf