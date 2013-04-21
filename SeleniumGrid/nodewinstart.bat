@echo off

set SELENIUM_SERVER=.\lib\selenium-server-standalone-2.31.0.jar

set IEDRIVER=.\driver\IEDriverServer.exe
set CHROMEDRIVER=.\driver\chromedriver.exe
set FIREFOX="D:\Program Files (x86)\Mozilla Firefox\firefox.exe"

set CONFIGFILE=node-win.json

java ^
  -Dwebdriver.ie.driver=%IEDRIVER% ^
	-Dwebdriver.chrome.driver=%CHROMEDRIVER% ^
	-Dwebdriver.firefox.bin=%FIREFOX% ^
	-jar %SELENIUM_SERVER% ^
	-role node ^
	-nodeConfig %CONFIGFILE%
