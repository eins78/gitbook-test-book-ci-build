#!/bin/sh

GITBOOK="$(npm ls --parseable gitbook-cli)"
CMD="$GITBOOK/$(node -p "require(\"$GITBOOK/package.json\").main")"

"$CMD" build
