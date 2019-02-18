#!/bin/bash
DISPLAYNAME="Economics Color Canon"
PRINTERNAME=$(echo ${DISPLAYNAME// /_})
LOCATION="Economics Department Office"
DRIVER="CNPZUIRAC5030ZU.PPD.gz"
SHARENAME="BHECONC01"

lpadmin -p "$PRINTERNAME" -E -v smb://vcprint01.ad.vassar.edu/$SHARENAME -P "/Library/Printers/PPDs/Contents/Resources/$DRIVER" -D "$DISPLAYNAME" -L "$LOCATION" -o printer-is-shared=false -o auth-info-required=negotiate