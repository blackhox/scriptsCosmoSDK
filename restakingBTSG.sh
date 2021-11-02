#!/bin/bash
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color
DELEGATOR='bitsong1'
VALIDATOR='bitsongvaloper1'
PASWD='Password'
DELAY=3600 #in secs - how often restart the script 
ACC_NAME=Name wallet key
NODE=http://localhost:26657 #change it only if you use another rpc port of your node

for (( ;; )); do
        BAL=$(bitsongd query bank balances ${DELEGATOR} --node ${NODE});
        echo -e "BALANCE: ${GREEN}${BAL}${NC} ubtsg\n"
        echo -e "Claim rewards\n"
        echo -e "${PASWD}\n${PASWD}\n" | bitsongd tx distribution withdraw-rewards ${VALIDATOR} --chain-id bitsong-2b --from ${ACC_NAME} --node ${NODE} --commission -y --fees 20ubtsg
        for (( timer=10; timer>0; timer-- ))
        do
                printf "* sleep for ${RED}%02d${NC} sec\r" $timer
                sleep 1
        done
        BAL=$(bitsongd query bank balances ${DELEGATOR} --node ${NODE} -o json | jq -r '.balances | .[].amount');
        BAL=$((BAL-1000000));
        echo -e "BALANCE: ${GREEN}${BAL}${NC} ubtsg\n"
        echo -e "Stake ALL\n"
        echo -e "${PASWD}\n${PASWD}\n" | bitsongd tx staking delegate ${VALIDATOR} ${BAL}ubtsg --chain-id bitsong-2b --from ${ACC_NAME} --node ${NODE} -y --fees  20ubtsg
        for (( timer=${DELAY}; timer>0; timer-- ))
        do
                printf "* sleep for ${RED}%02d${NC} sec\r" $timer
                sleep 1
        done
done
