#!/bin/bash

apt update
apt install -y docker.io
systemctl enable --now docker
