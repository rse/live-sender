#!/bin/sh -x
##
##  Live Video Experience (LiVE)
##  Copyright (c) 2020 Dr. Ralf S. Engelschall <rse@engelschall.com>
##  Licensed under GPL 3.0 <https://spdx.org/licenses/GPL-3.0>
##

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
    -r stream/example/sender \
    -s stream/example/receiver \
    -d live-sender:@huds-hud-training,@huds-hud-training/training.yaml,live-sender.yaml${1+","}$1

