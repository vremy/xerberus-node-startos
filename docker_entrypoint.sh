#!/bin/sh

printf "\n\n [i] Starting Xerberus Node ...\n\n"
exec tini /usr/bin/xerberus-net \
  --base-path /data/nodes/testnet-node \
  --chain /data/chain-spec.json \
  --rpc-external \
  --rpc-methods Unsafe \
  --rpc-cors all \
  --telemetry-url "wss://telemetry.polkadot.io/submit/ 0" \
  --prometheus-external \
  --no-private-ip \
  --bootnodes /dns/node.xerberus.io/tcp/30334/ws/p2p/12D3KooWCYKbsQw2r5575MA8YqMhn8AqhVuZkfobPMyoKzEP595t/p2p/12D3KooWCYKbsQw2r5575MA8YqMhn8AqhVuZkfobPMyoKzEP595t
