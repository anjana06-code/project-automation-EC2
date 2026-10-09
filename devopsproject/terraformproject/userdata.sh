#!/bin/bash

set -euxo pipefail

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y docker.io
systemctl enable --now docker
