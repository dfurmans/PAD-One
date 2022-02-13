#!/bin/bash
MIDI_DEVICE="PAD-One"
EXECUTE="xdotool key ctrl+j"
A_SIMPLE_MAN_VIM_TEST="man vim"

SBT_COMPILE="'sbt clean compile'"
SBT_TEST="'sbt test'"
SBT_CUCUMBER="'sbt cucumber'"
SBT_KARATE="???"
TILDA_OPEN="key F12"

FIND_AND_ACTIVATE_FIREFOX_WINDOW="xdotool search --class firefox windowactivate"
BROWSER_REFRESH_FKEY="xdotool key F5"

aseqdump -p $MIDI_DEVICE | \
while IFS=" ," read -r src ev1 ev2 ch label1 data1 label2 data2 rest; do
    case "$ev1 $ev2 $data1" in
	"Note on 1" ) xdotool type "$A_SIMPLE_MAN_VIM_TEST" && $EXECUTE ;;
        "Note on 2" ) $EXECUTE ;;
	"Note on 3" ) $FIND_AND_ACTIVATE_FIREFOX_WINDOW && $BROWSER_REFRESH_FKEY ;;
        "Note on 4" ) xdotool type hello ;;
        "Note on 5" ) xdotool type hello ;;
        "Note on 6" ) xdotool type hello ;;
        "Note on 7" ) xdotool type hello ;;
        "Note on 8" ) xdotool type hello ;;
        "Note on 9" ) xdotool type hello ;;
        "Note on 10" ) xdotool type hello ;;
        "Note on 11" ) xdotool type hello ;;
        "Note on 12" ) xdotool type hello ;;
    esac
done

