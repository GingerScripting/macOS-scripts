
#!/bin/bash

disabledPrinter=$(lpstat -t | grep disabled | awk '{print $2}')
if [ -z "$disabledPrinter" ];
then
	echo "No paused printers.";
else
	echo "$disabledPrinter is paused. Un-pausing now.";
	cupsenable "$disabledPrinter";
fi
