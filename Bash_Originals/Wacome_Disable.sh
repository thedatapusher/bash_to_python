#!/bin/bash
## script to disable wacom touch, ring and buttons for Intuos Tablet
## beau.james@autodesk.com 01-30-19

## This script is not ACTIVELY maintained by the author and is for informational guidance only

## This is not an official Autodesk Creative Finishing Support script.
## Caution advised.
## Script provided for example only.
## THIS IS A WORK IN PROGESS, DO NOT USE IN PRODUCTION
## Python conversion in progess

# Variables
PAD=`xsetwacom --list devices | awk '/PAD/||/pad/||/Pad/' | awk -F "id:" '{print $1}' | cut -d " " -f1-6`
FINGER=`xsetwacom --list devices | awk '/PAD/||/pad/||/Pad/' | awk -F "id:" '{print $1}' | cut -d " " -f1-6`

# Reset display
clear

# Turn off touch
echo 'Turning touch Off'
xsetwacom set "$FINGER" TOUCH off

# Turn off ring
echo 'Turning ring Off'
xsetwacom set "$PAD" 'AbsWheelUp' 'button 0' && \
xsetwacom set "$PAD" 'AbsWheelDown' 'button 0' && \
xsetwacom set "$PAD" 'AbsWheel2Up' 'button 0' && \
xsetwacom set "$PAD" 'AbsWheel2Down' 'button 0' && \
xsetwacom set "$PAD" 'RelWheelUp' 'button 0' && \
xsetwacom set "$PAD" 'RelWheelDown' 'button 0'

# Turn off expresskeys 1-3, 8-13
# keys 4-7 are not modifiable
echo 'Turning expresskeys Off'
for n in {1..3} {8..13} ; do xsetwacom set "$PAD" Button $n "button 0" ; done

# Display friendly message to user regarding touch
echo 'touch is currently turned:' `xsetwacom get "$FINGER" TOUCH`

echo 'Script Complete'

# UNCOMMENT DEBUG for PAD FINGER and RINGS
#echo 'PAD:' $PAD
#echo 'FINGER:' $FINGER
#echo 'RING:'
#xsetwacom get "$PAD" 'AbsWheelUp'
#xsetwacom get "$PAD" 'AbsWheelDown'
#xsetwacom get "$PAD" 'AbsWheel2Up'
#xsetwacom get "$PAD" 'AbsWheel2Down'
#xsetwacom get "$PAD" 'RelWheelUp'
#xsetwacom get "$PAD" 'RelWheelDown'
#echo 'EXPRESSKEYS'
#for n in {1..3} {8..13} ; do xsetwacom get "$PAD" Button $n; done

# Goodbye
exit
