#!/bin/bash
DISPLAYNAME=""
PRINTERNAME=$(echo ${DISPLAYNAME// /_})
LOCATION=""
DRIVER=""
SHARENAME=""

lpadmin -p "$PRINTERNAME" -E -v smb://vcprint01.ad.vassar.edu/$SHARENAME -P "/Library/Printers/PPDs/Contents/Resources/$DRIVER" -D "$DISPLAYNAME" -L "$LOCATION" -o printer-is-shared=false -o auth-info-required=negotiate