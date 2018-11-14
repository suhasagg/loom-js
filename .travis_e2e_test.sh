#!/bin/bash

set -euxo pipefail

eval "$(GIMME_GO_VERSION=1.10.2 gimme)"

export BUILD_NUMBER=581
bash e2e_tests.sh
bash e2e_plasma_cash_test.sh
