#!/bin/sh

printf "\n\n [i] Starting Xerberus Node ...\n\n"
exec tini /usr/bin/xerberus-net \
  --base-path /data/nodes/testnet-node \
  --chain /data/chain-spec.json \
  --rpc-external
  --rpc-metods Unsafe \
  --rpc-cors all \
  --telemetry-url "wss://telemetry.polkadot.io/submit/ 0" \
  --prometheus-external
  --no-private-ip
