#! /bin/bash

## Set Caps Lock to be a Control
#xmodmap -e 'remove Lock = Caps_Lock'
#xmodmap -e 'keysym Caps_Lock = Control_L'
#xmodmap -e 'add Control = Control_L'

# Set Alt_L to be mod3, which we'll then use for mod in xmonad
xmodmap -e 'remove mod1 = Alt_L'
xmodmap -e 'add mod3 = Alt_L'
xmodmap -e 'remove shift = Shift_R'
xmodmap -e 'add mod3 = Shift_R'
