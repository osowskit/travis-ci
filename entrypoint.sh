#!/usr/bin/env sh

if [ -z "$IS_ORG"]
then
  # ORG not set
  ENDPOINT="--pro"
else
  ENDPOINT="--org"
fi

# Command needs to be first
COMMAND="$@ $ENDPOINT"
eval travis "$COMMAND"
