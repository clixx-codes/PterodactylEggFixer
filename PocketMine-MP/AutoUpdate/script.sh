version=$(wget -qO- https://raw.githubusercontent.com/lokiPM/PterodactylEggFixer/refs/heads/main/PocketMine-MP/version)

if [ -f "PocketMine-MP.phar" ]; then
    rm -f PocketMine-MP.phar
fi

wget "https://github.com/pmmp/PocketMine-MP/releases/download/$version/PocketMine-MP.phar"
echo "PocketMine-MP File installed!"
cd
./bin/php7/bin/php ./PocketMine-MP.phar --no-wizard --disable-ansi
