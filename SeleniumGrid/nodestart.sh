#!/bin/bash

SELENIUM_SERVER=./lib/selenium-server-standalone-2.31.0.jar

CHROMEDRIVER=./driver/chromedriver
FIREFOX=/usr/local/bin/firefox

CONFIGFILE=node.json

java \
	-Dwebdriver.chrome.driver=$CHROMEDRIVER \
	-Dwebdriver.firefox.bin=$FIREFOX \
	-jar $SELENIUM_SERVER \
	-role node \
	-nodeConfig $CONFIGFILE

