#!/bin/bash

set -e
set -x

for p in ../*.patch; do
        patch -Np1 -i ${p}
done

