if ip address | grep -q 'vDell'; then
	sudo wg-quick down ./vDell.conf
else
	sudo wg-quick up ./vDell.conf
fi	
