#!/bin/sh

find /etc/autostart.d/ \( -type f -o -type l \) -executable -exec "{}" \;

