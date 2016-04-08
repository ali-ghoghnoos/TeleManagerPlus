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
chmod +x autolaunch.sh
./launchfix2.sh install
cd .luarocks
cd bin
./luarocks-5.2 install luafilesystem
./luarocks-5.2 install lub
./luarocks-5.2 install luaexpat
cd $HOME
cd TeleManagerPlus
./launchfix2.sh install
./autolaunch.sh # Enter a phone number & confirmation code.
```
**README 1 ghesmatish avaz shod dobare KHOB va BA DEQAT bekhonid o anjam bedid ta be moshkel nakhorid**

**دقـــــــــــيق مثل همین عمل کنید دقـــــــــــــیق**



**برای اینکه بات روی حالت سلف بات راه اندازی بشه،از دستور زیر استفاده کنید:**

``./selfbot.sh``


# Auto Launch Bot With :

**./autolaunch.sh**


# Auto Leave Confiure :

**go to onservice plugin and config it !**
***Then Go To banhammer plugin and see line 59 - 71 and do anything that i tell there!***
