#!/bin/bash

process="$1"

if pgrep -x "$process" > /dev/null; then
        echo "$process is running."
else
        echo "$process is not running."
fi
