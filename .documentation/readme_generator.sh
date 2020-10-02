#!/bin/bash
COUNT=$(find $1/automations -type f | wc -l | xargs)
VERSION=$(cat $1/.HA_VERSION)
cat $1/.documentation/_readme.md |
	sed -e s/%AUTOMATIONS/$COUNT/g |
	sed -e s/%VERSION/$VERSION/g > $1/README.md
