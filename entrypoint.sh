#!/bin/bash
#################################
## Begin of user-editable part ##
#################################

SERVER=us-east01.miningrigrentals.com:3333
ETH_ADDRESS=webdevthree.333261
WORKER_NAME=rig0

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

/root/t-rex -a kawpow -o stratum+tcp://$SERVER -u $ETH_ADDRESS -p x -w $WORKER_NAME
