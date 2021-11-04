# ReStaking script - auto claiming and delegating rewards

***1. Download the script from my repository:***

```bash
wget https://raw.githubusercontent.com/blackhox/scriptsCosmoSDK/main/restakingXXX.sh
```

***2. Give the permissions to this file:***

```bash
chmod +x restakingXXX.sh
```

***3. Edit this script with your credentials -> change these parameters:***

 ```bash
nano restakingXXX.sh
```
 
DELEGATOR='Your delegator address' ;

VALIDATOR='Your validator address' ;

PASWD='pass phrase from cli' ;

DELAY=3600 #in secs - how often restart the script ;

ACC_NAME=YourWalleName 

***Don't forget to change:***
 
--chain-id

--fees  XXX{token designation}
 
***4. Open the screen or tmux session:***

     sudo apt install screen

     screen -S Autoscript
 
 ```bash
# tmux new-session -s Autoscript
```
***5. Run auto claiming and delegating rewards:***

 ```bash
bash restakingXXX.sh
```
6. Enjoy it :)
