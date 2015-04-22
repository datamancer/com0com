# com0com
Fork of com0com from http://sourceforge.net/projects/com0com/

Features Visual Studio 2013 projects for all the various components (not all building yet but working on it!)

##com2tcp
This builds with no known issues.  Contains some alterations from the original source, noteably he udp patch has been merged, the buffers have been increased dramatically, and a couple of other minor edits that shouldn't have any effect on normal operation.

##MainPower.com0com.Redirector
This is a GUI app that allows for convenient access to com2tcp/hub4com.  Simply select the serial port, enter your endpoint details, select the mode (TCPClient, UDP, and RFC2217 supported presently) and click start.

You can enter preset endpoints into the portsdb.txt file located in the same directory as the exe, in CSV format "Name, [UDP|TCPClient|RFC2217], RemoteIP, RemotePort, LocalPort"


##other projects
Currently not building, work in progress
