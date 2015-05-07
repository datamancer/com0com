# com0com
Fork of com0com from http://sourceforge.net/projects/com0com/

Features Visual Studio 2013 projects for all the various components - test signing certificate is included, but you will need to disable driver signiture enforecement to use a test signed driver.  Signed binaries are available under Releases.  Not extensively tested yet but working on it.  

Selected patches and minor modifications have been applied from the original source - trawl the commit history for details.

###Installer

This does not build currently.  A WiX installer may be created at a later date but for now to install just right click on the 3 inf files and click install.

###MainPower.com0com.Redirector
This is a GUI app that allows for convenient access to com2tcp/hub4com.  Simply select the serial port, enter your endpoint details, select the mode (TCPClient, UDP, and RFC2217 supported presently) and click start.

You can enter preset endpoints into the portsdb.txt file located in the same directory as the exe, in CSV format "Name, [UDP|TCPClient|RFC2217], RemoteIP, RemotePort, LocalPort"

