#!/bin/sh

find /etc/autostart.d/ -type f -executable -exec "{}" \;

