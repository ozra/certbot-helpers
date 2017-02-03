all:
	echo "do \"make install\" if you wanna"

install:
	sudo ln -s /opt/certbot-helper/systemd-units/renew-certbot-certs.service /etc/systemd/system/
	sudo ln -s /opt/certbot-helper/systemd-units/renew-certbot-certs.timer /etc/systemd/system/

update:
	git pull && systemctl daemon-reload

