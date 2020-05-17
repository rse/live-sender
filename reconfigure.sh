#!/bin/sh

liveRelayServer=${1-"live.example.com"}
liveAccessTokenStream=${2-"example"}
liveAccessTokenUsername=${3-"XXXX"}
liveAccessTokenPassword=${4-"XXXX"}

sed -i \
    -e "s;live\.example\.com;${liveRelayServer};g" \
    -e "s;example;${liveAccessTokenStream};g" \
    -e "s;XXXX-XXXX;${liveAccessTokenUsername}-${liveAccessTokenPassword};g" \
    2-obs/LiVE-Sender.json \
    2-obs/LiVE-Sender/service.json

sed -i \
    -e "s;live\.example\.com;${liveRelayServer};g" \
    -e "s;example;${liveAccessTokenStream};g" \
    -e "s;XXXX:XXXX;${liveAccessTokenUsername}:${liveAccessTokenPassword};g" \
    1-hud/live-sender.sh

