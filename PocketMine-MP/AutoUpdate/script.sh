#!/bin/bash

version=$(wget -qO- https://raw.githubusercontent.com/lokiPM/PterodactylEggFixer/main/PocketMine-MP/version)

if [ -f "PocketMine-MP.phar" ]; then
    rm -f PocketMine-MP.phar
fi

wget "https://github.com/pmmp/PocketMine-MP/releases/download/$version/PocketMine-MP.phar"

if [ $? -eq 0 ]; then
    echo "PocketMine-MP.phar installation done!"
else
    echo "Error"
    exit 1
fi

cd 
nohup ./bin/php7/bin/php ./PocketMine-MP.phar --no-wizard --disable-ansi > output.log 2>&1 &
