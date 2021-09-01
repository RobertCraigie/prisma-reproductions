#!/bin/bash

set -eux

python3 -m venv .venv

set +x
source .venv/bin/activate
set -x

git clone --branch 'reproductions/22' https://github.com/RobertCraigie/prisma-client-py

cd prisma-client-py
pip install -U -e .[aiohttp]
cd ..
