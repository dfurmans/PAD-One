# PAD-One
Mapping signals from Vestax PAD-One, an amazing, MIDI USB controller to a Linux key or bash commands

## Stack - keep it simple 
> aseqdump - taking #CC signals from PAD-One (show the events received at an ALSA sequencer port)
> xdotool  - map those signal to an action (command-line X11 automation tool)
