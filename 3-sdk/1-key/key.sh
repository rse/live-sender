#!/bin/sh
##
##  Live Video Experience (LiVE)
##  Copyright (c) 2020 Dr. Ralf S. Engelschall <rse@engelschall.com>
##  Licensed under GPL 3.0 <https://spdx.org/licenses/GPL-3.0-only>
##

#   Generate key images for Elgato Stream-Deck with the help of the companion tool
#   Stream-Deck Key-Image Generator (SDKIG) <https://github.com/rse/sdkig>

rm -rf key.d
mkdir key.d

npx sdkig -b 336699 -s tag      -S 6699cc -i pause-circle          -I 99ccff -t "PAUSE"     -T ffffff -o key.d/key-hud-banner-pause.png
npx sdkig -b 336699 -s tag      -S 6699cc -i radiation-alt         -I 99ccff -t "RANT"      -T ffffff -o key.d/key-hud-banner-rant.png
npx sdkig -b 336699 -s tag      -S 6699cc -i award                 -I 99ccff -t "PRAISE"    -T ffffff -o key.d/key-hud-banner-praise.png
npx sdkig -b 336699 -s tag      -S 6699cc -i comments              -I 99ccff -t "Q&A"       -T ffffff -o key.d/key-hud-banner-qna.png

npx sdkig -b 336699 -s list-alt -S 6699cc -i chevron-circle-left   -I 99ccff -t "PREV"      -T ffffff -o key.d/key-hud-progress-prev.png
npx sdkig -b 336699 -s list-alt -S 6699cc -i chevron-circle-right  -I 99ccff -t "NEXT"      -T ffffff -o key.d/key-hud-progress-next.png

npx sdkig -b 336699                       -i list-alt              -I 99ccff -t "AGENDA"    -T ffffff -o key.d/key-hud-agenda.png

npx sdkig -b 336699 -s comment  -S 6699cc -i times-circle          -I 99ccff -t "DISMISS"   -T ffffff -o key.d/key-hud-popup-dismiss.png
npx sdkig -b 336699 -s comment  -S 6699cc -i play-circle           -I 99ccff -t "PLAY"      -T ffffff -o key.d/key-hud-popup-play.png

npx sdkig -b 336699                       -i sync-alt              -I 99ccff -t "LOGO"      -T ffffff -o key.d/key-hud-logo.png

npx sdkig -b 336699                       -i poll-h                -I 99ccff -t "VOTE"      -T ffffff -o key.d/key-hud-vote.png
npx sdkig -b 336699 -s poll-h -S 6699cc   -i gavel                 -I 99ccff -t "JUDGE"     -T ffffff -o key.d/key-hud-vote-judge.png
npx sdkig -b 336699 -s poll-h -S 6699cc   -i tachometer-alt        -I 99ccff -t "EVAL"      -T ffffff -o key.d/key-hud-vote-eval.png
npx sdkig -b 336699 -s poll-h -S 6699cc   -i dice                  -I 99ccff -t "QUIZ"      -T ffffff -o key.d/key-hud-vote-quiz.png
npx sdkig -b 336699 -s poll-h -S 6699cc   -i hand-pointer          -I 99ccff -t "CHOOSE"    -T ffffff -o key.d/key-hud-vote-choose.png
npx sdkig -b 336699 -s poll-h -S 6699cc   -i comment-dots          -I 99ccff -t "PROPOSE"   -T ffffff -o key.d/key-hud-vote-propose.png

npx sdkig -b 336699 -s poll-h -S 6699cc   -i search                -I 99ccff -t "REVEAL"    -T ffffff -o key.d/key-hud-vote-reveal.png
npx sdkig -b 336699 -s poll-h -S 6699cc   -i eye                   -I 99ccff -t "DISCLOSE"  -T ffffff -o key.d/key-hud-vote-disclose.png

npx sdkig -b 336699 -s poll-h -S 6699cc   -i arrow-circle-left     -I 99ccff -t "PREV"      -T ffffff -o key.d/key-hud-vote-prev.png
npx sdkig -b 336699 -s poll-h -S 6699cc   -i arrow-circle-right    -I 99ccff -t "NEXT"      -T ffffff -o key.d/key-hud-vote-next.png

npx sdkig -b 336699                       -i clock                 -I 99ccff -t "TIMER-5"   -T ffffff -o key.d/key-hud-timer-5.png
npx sdkig -b 336699                       -i clock                 -I 99ccff -t "TIMER-10"  -T ffffff -o key.d/key-hud-timer-10.png
npx sdkig -b 336699                       -i clock                 -I 99ccff -t "TIMER-15"  -T ffffff -o key.d/key-hud-timer-15.png
npx sdkig -b 336699                       -i clock                 -I 99ccff -t "TIMER-45"  -T ffffff -o key.d/key-hud-timer-45.png
npx sdkig -b 996633                       -i clock                 -I eebb88 -t "TIMER-0"   -T ffffff -o key.d/key-hud-timer-0.png

npx sdkig -b 336699                       -i chart-bar             -I 99ccff -t "FEELING"   -T ffffff -o key.d/key-hud-feeling.png

npx sdkig -b 996633                       -i cloud-upload-alt      -I eebb88 -t "LTCY-UP"   -T ffffff -o key.d/key-hud-latency-upstream.png
npx sdkig -b 996633                       -i cloud-download-alt    -I eebb88 -t "LTCY-DOWN" -T ffffff -o key.d/key-hud-latency-downstream-on.png
npx sdkig -b 000000                       -i cloud-download-alt    -I 999999 -t "LTCY-DOWN" -T c0c0c0 -o key.d/key-hud-latency-downstream-off.png

npx sdkig -b 996633 -s th-large -S bb8855 -i play-circle           -I eebb88 -t "BEGIN"     -T ffffff -o key.d/key-hud-closure-begin.png
npx sdkig -b 996633 -s th-large -S bb8855 -i pause-circle          -I eebb88 -t "PAUSE"     -T ffffff -o key.d/key-hud-closure-pause.png
npx sdkig -b 996633 -s th-large -S bb8855 -i stop-circle           -I eebb88 -t "END"       -T ffffff -o key.d/key-hud-closure-end.png

npx sdkig -b ff0000                       -i wifi                  -I ffe0e0 -t "STREAM"    -T ffffff -o key.d/key-hud-egress-stream-on.png
npx sdkig -b 000000                       -i wifi                  -I 999999 -t "STREAM"    -T c0c0c0 -o key.d/key-hud-egress-stream-off.png
npx sdkig -b ff0000                       -i dot-circle            -I ffe0e0 -t "RECORD"    -T ffffff -o key.d/key-hud-egress-record-on.png
npx sdkig -b 000000                       -i dot-circle            -I 999999 -t "RECORD"    -T c0c0c0 -o key.d/key-hud-egress-record-off.png

npx sdkig -b 996633 -s th       -S bb8855 -i expand                -I eebb88 -t "MINIMIZE"  -T ffffff -o key.d/key-hud-minimize.png
npx sdkig -b 336699 -s th       -S 6699cc -i users                 -I 99ccff -t "ATTENDEES" -T ffffff -o key.d/key-hud-attendees.png

npx sdkig -b 339900                       -i video                 -I c0ffa0 -t "CAMERAS"   -T ffffff -o key.d/key-obs-source-cameras-on.png
npx sdkig -b 000000                       -i video                 -I 999999 -t "CAMERAS"   -T c0c0c0 -o key.d/key-obs-source-cameras-off.png
npx sdkig -b 339900                       -i ghost                 -I c0ffa0 -t "SHADOW"    -T ffffff -o key.d/key-obs-source-shadow-on.png
npx sdkig -b 000000                       -i ghost                 -I 999999 -t "SHADOW"    -T c0c0c0 -o key.d/key-obs-source-shadow-off.png
npx sdkig -b 339900                       -i microphone-alt        -I c0ffa0 -t "MICROS"    -T ffffff -o key.d/key-obs-source-micros-on.png
npx sdkig -b 000000                       -i microphone-alt        -I 999999 -t "MICROS"    -T c0c0c0 -o key.d/key-obs-source-micros-off.png
npx sdkig -b 339900                       -i tablet                -I c0ffa0 -t "iPad Pro"  -T ffffff -o key.d/key-obs-source-ipadpro-on.png
npx sdkig -b 000000                       -i tablet                -I 999999 -t "iPad Pro"  -T c0c0c0 -o key.d/key-obs-source-ipadpro-off.png
npx sdkig -b 339900                       -i laptop                -I c0ffa0 -t "MacBook"   -T ffffff -o key.d/key-obs-source-macbook-on.png
npx sdkig -b 000000                       -i laptop                -I 999999 -t "MacBook"   -T c0c0c0 -o key.d/key-obs-source-macbook-off.png
npx sdkig -b 339900                       -i laptop                -I c0ffa0 -t "Notebook"  -T ffffff -o key.d/key-obs-source-notebook-on.png
npx sdkig -b 000000                       -i laptop                -I 999999 -t "Notebook"  -T c0c0c0 -o key.d/key-obs-source-notebook-off.png
npx sdkig -b 339900                       -i camera                -I c0ffa0 -t "NDI"       -T ffffff -o key.d/key-obs-source-ndi-on.png
npx sdkig -b 000000                       -i camera                -I 999999 -t "NDI"       -T c0c0c0 -o key.d/key-obs-source-ndi-off.png

npx sdkig -b 339900 -s microphone-alt -S 66cc33 -i lock-open       -I c0ffa0 -t "UNDUCK"    -T ffffff -o key.d/key-obs-source-micros-unduck.png
npx sdkig -b 339900 -s microphone-alt -S 66cc33 -i times-circle    -I c0ffa0 -t "DRAIN"     -T ffffff -o key.d/key-obs-source-micros-drain.png
npx sdkig -b 339900 -s microphone-alt -S 66cc33 -i wifi            -I c0ffa0 -t "REVERB"    -T ffffff -o key.d/key-obs-source-micros-reverb.png

npx sdkig -b 339900                       -i images                -I c0ffa0 -t "STUDIO"    -T ffffff -o key.d/key-obs-scene-studio-on.png
npx sdkig -b 000000                       -i images                -I 999999 -t "STUDIO"    -T c0c0c0 -o key.d/key-obs-scene-studio-off.png
npx sdkig -b 339900 -s images -S 66cc33   -i user-alt-slash        -I c0ffa0 -t "SCREENS"   -T ffffff -o key.d/key-obs-scene-screens-on.png
npx sdkig -b 000000 -s images -S 666666   -i user-alt-slash        -I 999999 -t "SCREENS"   -T c0c0c0 -o key.d/key-obs-scene-screens-off.png
npx sdkig -b 339900 -s images -S 66cc33   -i user-alt              -I c0ffa0 -t "STAGE-L"   -T ffffff -o key.d/key-obs-scene-stage-L-on.png
npx sdkig -b 000000 -s images -S 666666   -i user-alt              -I 999999 -t "STAGE-L"   -T c0c0c0 -o key.d/key-obs-scene-stage-L-off.png
npx sdkig -b 339900 -s images -S 66cc33   -i user-alt              -I c0ffa0 -t "STAGE-R"   -T ffffff -o key.d/key-obs-scene-stage-R-on.png
npx sdkig -b 000000 -s images -S 666666   -i user-alt              -I 999999 -t "STAGE-R"   -T c0c0c0 -o key.d/key-obs-scene-stage-R-off.png

npx sdkig -b 339900                       -i lightbulb             -I c0ffa0 -t "LIGHT"     -T ffffff -o key.d/key-obs-light-on.png
npx sdkig -b 000000                       -i lightbulb             -I 999999 -t "LIGHT"     -T c0c0c0 -o key.d/key-obs-light-off.png

npx sdkig -b 000000                       -i fill-drip             -I 444444 -t "FRAMEDROP" -T c0c0c0 -o key.d/key-obs-framedrop.png

npx sdkig -b 000000                       -i caret-square-up       -I 888888 -t "PREV"      -T c0c0c0 -o key.d/key-sdk-page-prev.png
npx sdkig -b 000000                       -i caret-square-down     -I 888888 -t "NEXT"      -T c0c0c0 -o key.d/key-sdk-page-next.png

npx sdkig -b 000000                       -i plus-square           -I 888888 -t "LIGHTER"   -T c0c0c0 -o key.d/key-sdk-lightness-lighter.png
npx sdkig -b 000000                       -i minus-square          -I 888888 -t "DARKER"    -T c0c0c0 -o key.d/key-sdk-lightness-darker.png

npx sdkig -b 336699                       -i glass-cheers          -I 99ccff -t "CONFETTI"  -T ffffff -o key.d/key-hud-confetti.png

npx sdkig -b 996633 -s laptop   -S bb8855 -i arrow-alt-circle-left -I eebb88 -t "DISCONNECT" -T ffffff -o key.d/key-hud-disconnect.png
npx sdkig -b 996633 -s laptop   -S bb8855 -i sync-alt              -I eebb88 -t "RECONNECT"  -T ffffff -o key.d/key-hud-reconnect.png

