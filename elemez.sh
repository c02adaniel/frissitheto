#!/bin/bash

kiir()
 {
  sudo apt update
  sudo apt list --upgradeable > status.txt
 }

ellenoriz()
 {
  kiir &> /dev/null
  DARAB=$(cat status.txt | wc -l)
  sudo rm status.txt -f

  if [ "$DARAB" -gt "1" ]; then
    echo "Van elérhető frissítés."
   else
  echo "Nincs elérhető frissítés."
fi
}
ping -qc 4 8.8.8.8 > /dev/null && ellenoriz
