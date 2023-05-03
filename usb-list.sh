#!/usr/bin/env bash
# ____ _  _ _    ___  _  _ ___  __     ____ ____ ____ __   ___  __   ___  ____ 
# |_ _\||_|\|| \ | _\ ||_|\|  \ | \|\  |  _\| __\| . \| \|\|  \ | \|\|  \ |   |
#   || | _ |||_|\[__ \| _ || . \|  \|  | _\ |  ]_|  <_|  \|| . \|  \|| . \| . |
#   |/ |/ |/|___/|___/|/ |/|/\_/|/\_/  |/   |___/|/\_/|/\_/|/\_/|/\_/|___/|___/
# -----| https://github.com/thushan/3dprinter-configs
#
# Last Updated: 17/11/2019

for sysdevpath in $(find /sys/bus/usb/devices/usb*/ -name dev); do
    (
        syspath="${sysdevpath%/dev}"
        devname="$(udevadm info -q name -p $syspath)"
        [[ "$devname" == "bus/"* ]] && exit
        eval "$(udevadm info -q property --export -p $syspath)"
        [[ -z "$ID_SERIAL" ]] && exit
        echo "/dev/$devname - $ID_SERIAL"
    )
done
