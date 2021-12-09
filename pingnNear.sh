#!/bin/bash
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color
pool='blackhox.pool.f863973.m0'
account='blackhox.testnet'
DELAY=3600 #in secs - how often restart the script 
export NEAR_ENV=testnet

for (( ;; )); do
        echo "--------------------------------------------------------------------------"
        echo Starting checks for $pool
        date
        echo "Check current Validator Status"
        near validators current | grep $pool
        echo "Sending Ping"
        near call $pool ping --accountId $account --gas=300000000000000
         echo "Check for updated proposals"
         near proposals | grep $pool
         echo "Done"
        echo "--------------------------------------------------------------------------"
            for (( timer=${DELAY}; timer>0; timer-- ))
	         do
                printf "* sleep for ${RED}%02d${NC} sec\r" $timer
                sleep 1
			done	
    done
