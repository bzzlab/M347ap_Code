#!/bin/bash
#
#a. den Container-Namen als Eingabe-Parameter verwendet.
#??
#??
then
    printf "%s\n" \
      "Missing parameter for renaming container." \
      "Exit script!"
    exit 1
fi

#b. das Vorhandensein des Containers anhand des Container-Namens überprüft.
#??
#??
#??
#??
#??
#??
#??

# c. die IP-Adresse des Containers ermittelt.
#??
#??
#??
# d. den Container nach dem Muster <Container-Namen>_<IP-Adresse> umbenennt.
#??

#e. das Vorhandensein des Containers anhand des neuen Container-Namens überprüfen.
#??
#??
#??
then
  printf "Container could not be renamed to %s\n" ${newName}
  exit 3
fi
printf "Container has been renamed successfully to %s\n" ${newName}

# not part of the exercise
# rename container in params.conf
#??
