#!/bin/bash 
if systemctl is-active --quiet apache2;  then  
	echo "Apache2 is active"
else  
	echo "Apache2 is not active" 
	echo "Installing Apache2" 
	echo $PASSWD | sudo -S apt-get install --no-install-recommends -y apache2 
	echo $PASSWD | sudo -S systemctl enable apache2
	echo $PASSWD | sudo -S systemctl start apache2 
fi

