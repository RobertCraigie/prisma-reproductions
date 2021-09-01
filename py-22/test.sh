#!/bin/bash

set -eux

set +x
source .venv/bin/activate
set -x

PRISMA_PY_DEBUG_GENERATOR=1 PRISMA_PY_DEBUG=1 DEBUG='*' prisma generate
