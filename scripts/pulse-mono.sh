#!/bin/bash
# Pulse-mono
pacmd load-module module-remap-sink sink_name=mono master=alsa_output.pci-0000_00_05.0.analog-stereo channels=2 channel_map=mono,mono
pacmd "set-default-sink mono"
