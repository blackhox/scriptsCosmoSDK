# ReStaking script - auto claiming and delegating rewards

1. Download the script from my repository:

```bash
wget https://github.com/blackhox/scriptsCosmoSDK/blob/main/restakingBTSG.sh
```

2. Give the permissions to this file:

```bash
chmod +x restakingBTSG.sh
```

3. Edit this script with your credentials -> change these parameters: DELEGATOR='Your delegator address' ;
VALIDATOR='Your validator address' ;
PASWD='pass phrase from cli' ;
DELAY=3600 #in secs - how often restart the script ;
ACC_NAME=YourWalleName 
 
 ```bash
nano restakingBTSG.sh
```
4. Open the screen or tmux session:
 
 ```bash
# tmux new-session -s BTSGscript
```
5. Run auto claiming and delegating rewards:

 ```bash
bash restakingBTSG.sh
```
6. Enjoy it :)

```bash
.
.
.
```
# ***RUS***  
Скачиваем скрипт 
```bash
 # wget https://github.com/blackhox/scriptsCosmoSDK/blob/main/restakingBTSG.sh 
```
Даем нужные разрешения
```bash
 # chmod +x restakingBTSG.sh
```
Открываем в nano скачанный файл
```bash
 # nano restakingBTSG.sh
```
Редактируем файл внося нужные изменения: измените эти параметры: 
 DELEGATOR = 'Ваш адрес делегата: bitsong1........'; 
 VALIDATOR = 'Ваш адрес валидатора: bitsongvaloper1.......'; 
 PASWD = 'пароль от cli'; 
 ACCNAME = YourWalleName

 Создаем отдельное окно в TMUX для запуска скрипта
```bash
    # tmux new-session -s BTSGcript
```
   
   Запускаем сам скрипт и расслабляемся
```bash
    # bash restakingBTSG.sh
```
