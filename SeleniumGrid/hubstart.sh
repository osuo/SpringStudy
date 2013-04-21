#!/bin/bash

SELENIUM_SERVER=./lib/selenium-server-standalone-2.31.0.jar
CONFIGFILE=hub.json

java \
	-jar $SELENIUM_SERVER \
	-role hub \
	-hubConfig $CONFIGFILE

