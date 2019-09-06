#!/bin/bash
# Setting evm-lite env config

mkdir -p /root/.evm-lite/eth
mkdir -p /root/.evm-lite/tendermint
cp pwd.txt /root/.evm-lite/eth/
./geth account new --password pwd.txt --datadir "./"
./tendermint init --home "/root/.evm-lite/tendermint"
sed -i "s/create_empty_blocks = true/create_empty_blocks = false/g" /root/.evm-lite/tendermint/config/config.toml
sed -i "4,18d" /root/.evm-lite/tendermint/config/genesis.json
shopt -s nullglob
for file in ./keystore/*; do
    Account=`echo $file | rev | cut -c1-40 | rev`
done
shopt -u nullglob
sed "s/<coinbase_account>/$Account/g" genesis.json.sample > genesis.json
mv keystore/ /root/.evm-lite/eth/
mv genesis.json /root/.evm-lite/eth/
