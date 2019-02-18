#!/bin/bash
DISPLAYNAME="CIS 2nd Floor Canon"
PRINTERNAME=$(echo ${DISPLAYNAME// /_})
LOCATION="CIS 2nd Floor"
DRIVER="CNPZUIRC2880ZU.PPD.gz"
SHARENAME="CCCISC02"

lpadmin -p "$PRINTERNAME" -E -v smb://vcprint01.ad.vassar.edu/$SHARENAME -P "/Library/Printers/PPDs/Contents/Resources/$DRIVER" -D "$DISPLAYNAME" -L "$LOCATION" -o printer-is-shared=false -o auth-info-required=negotiate
