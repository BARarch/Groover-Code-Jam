#!/bin/bash
REL="bash-pipe/"
if [ -z "$1" ]; then
  echo "what challenge are you grooving?"
  read TITLE
  echo "Groovy!"
else
  TITLE="$1" 
fi

if [ -z "$2" ]; then
  echo "what is your command for $TITLE"
  read COMMD
else
    COMMD="$2"
fi

if [ $COMMD == "--init" ]; then
  bash $REL"initCJ.sh" $TITLE

elif [ $COMMD == "--case" ]; then
  if [ -z "$3" ]; then
    bash $REL"caseCJ.sh" $TITLE
  else
    bash $REL"caseCJ.sh" $TITLE $3
  fi
elif [ $COMMD == "--test" ]; then
  if [ -z "$3" ]; then
    bash $REL"testCJ.sh" $TITLE
  else
    bash $REL"testCJ.sh" $TITLE $3
  fi
elif [ $COMMD == "--submit" ]; then
  if [ -z "$3" ]; then
    bash $REL"submit.sh" $TITLE
  else
    bash $REL"submit.sh" $TITLE $3
  fi
elif [ $COMMD == "--finishComp" ]; then
  if [ -z "$3" ]; then
    bash $REL"finishComp.sh" $TITLE
  else
    bash $REL"finishComp.sh" $TITLE $3
  fi
elif [ $COMMD == "--finishCompetition" ]; then
  if [ -z "$3" ]; then
    bash $REL"finishComp.sh" $TITLE
  else
    bash $REL"finishComp.sh" $TITLE $3
  fi

elif [ $COMMD == "--submitted" ]; then
  echo "The proper command is --submit or --finishCompetition"
else
  echo "Invalid Command"
fi

