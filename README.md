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
**hamino berid hale dg :|**
