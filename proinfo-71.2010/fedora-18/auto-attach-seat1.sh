#!/bin/sh

# Initialize new seat "seat1" with Thinnet USB Audio Hub.
loginctl attach seat1 /sys/devices/pci0000:00/0000:00:1d.7/usb1/1-3

# Unfortunately, we failed in setting secondary video card for seat1.
# As a workaround, we attach the primary video card to seat1 and configure
# the secondary one for use with seat0.
loginctl attach seat1 /sys/devices/pci0000:00/0000:00:02.0/drm/card0
loginctl attach seat1 /sys/devices/pci0000:00/0000:00:02.0/graphics/fb0
