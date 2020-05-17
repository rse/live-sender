#!/bin/sh -x

#   install HUDS and Training HUD
npm init -y >/dev/null 2>&1
npm install huds huds-hud-training
rm -f package.json

#   run HUDS with configuration-adjusted Training HUD
./node_modules/.bin/huds \
    -v 1 \
    -a 127.0.0.1 -p 9999 \
    -b mqtts://XXXX:XXXX@live.example.com \
    -n live-receiver \
    -r stream/engelschall/sender \
    -s stream/engelschall/receiver \
    -d live-sender:@huds-hud-training,@huds-hud-training/training.yaml,live-sender.yaml${1+","}$1

