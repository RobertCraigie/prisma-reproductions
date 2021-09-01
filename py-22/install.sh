#!/bin/bash

set -eux

python3 -m venv .venv

set +x
source .venv/bin/activate
set -x

git clone --branch 'main' https://github.com/RobertCraigie/prisma-client-py

cd prisma-client-py

git reset --hard ebd80aa1a7447f4dade2501914636b0f7f896ed6

git am ../patches/0001-Delegate-binary-downloading-to-prisma.patch

pip install -U -e .[aiohttp]
cd ..
