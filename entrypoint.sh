#!/bin/bash
mkdir logs
./evml tendermint 1>>./logs/evm_tendermint.log 2>>./logs/evm_tendermint.err.log