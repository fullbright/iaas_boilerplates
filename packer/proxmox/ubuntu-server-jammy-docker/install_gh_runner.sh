#!/bin/bash

# Install actions/runner
mkdir ~/actions-runner && cd ~/actions-runner
GHA_RUNNER_VERSION="2.314.1"
curl -so actions-runner-linux-x64-${GHA_RUNNER_VERSION}.tar.gz -L https://github.com/actions/runner/releases/download/v${GHA_RUNNER_VERSION}/actions-runner-linux-x64-${GHA_RUNNER_VERSION}.tar.gz
echo "6c726a118bbe02cd32e222f890e1e476567bf299353a96886ba75b423c1137b5  actions-runner-linux-x64-${GHA_RUNNER_VERSION}.tar.gz" | shasum -a 256 -c
tar xzf ./actions-runner-linux-x64-${GHA_RUNNER_VERSION}.tar.gz
echo "configuring runner to url #{ENV['GHA_RUNNER_URL']} with the token #{ENV['GHA_RUNNER_TOKEN']}"
./config.sh --url #{ENV['GHA_RUNNER_URL']} --token #{ENV['GHA_RUNNER_TOKEN']}
nohup ./run.sh &
