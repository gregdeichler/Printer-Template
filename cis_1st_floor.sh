#!/bin/bash
DISPLAYNAME="CIS 1st Floor Canon"
PRINTERNAME=$(echo ${DISPLAYNAME// /_})
LOCATION="CIS 1st Floor"
DRIVER="CNPZUIRAC5045ZU.PPD.gz"
SHARENAME="CCCISC01"

lpadmin -p "$PRINTERNAME" -E -v smb://vcprint01.ad.vassar.edu/$SHARENAME -P "/Library/Printers/PPDs/Contents/Resources/$DRIVER" -D "$DISPLAYNAME" -L "$LOCATION" -o printer-is-shared=false -o auth-info-required=negotiate
