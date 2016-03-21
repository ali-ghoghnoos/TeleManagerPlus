```sh
# Install dependencies.
# Tested on Ubuntu 14.04. For other OSs, check out https://github.com/yagop/telegram-bot/wiki/Installation
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev

# Let's install the bot.
cd $HOME
git clone https://github.com/telemanagerplus/TeleManagerPlus.git
cd TeleManagerPlus
chmod +x launchfix2.sh
chmod +x launch.sh
./launchfix2.sh install
cd .luarocks
cd bin
./luarocks-5.2 install luafilesystem
./luarocks-5.2 install lub
./luarocks-5.2 install luaexpat
./launchfix2.sh install
./launch.sh # Enter a phone number & confirmation code.
```
### One command
To install everything in one command (useful for VPS deployment) on Debian-based distros, use:
```sh
#https://github.com/yagop/telegram-bot/wiki/Installation
sudo apt-get update; sudo apt-get upgrade -y --force-yes; sudo apt-get dist-upgrade -y --force-yes; sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev libjansson* libpython-dev make unzip git redis-server g++ -y --force-yes && git clone https://github.com/telemanagerplus/TeleManagerPlus.git && cd TeleSeed && chmod +x launchfix2.sh && ./launchfix2.sh install && chmod +x launch.sh
```

***If you use One Command installation,do these steps after that:***

***cd .luarocks***
***cd bin***
***./luarocks-5.2 install luafilesystem***
***./luarocks-5.2 install lub***
***./luarocks-5.2 install luaexpat***

***Then :***

***cd ..***

***cd ..***

***./launchfix2.sh install***

***After installing, Run your bot :***
***./launch.sh****

***Then enter PhoneNumber***
***Then Code..***

***Finished!***

***Your bot now successFully run !****

[Our Channel]( http://telegram.me/telemanager_ch )
