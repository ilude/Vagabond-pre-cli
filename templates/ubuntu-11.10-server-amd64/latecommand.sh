/bin/cp /etc/sudoers /etc/sudoers.orig
/bin/sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
/bin/sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers

# Fix SMBus error on boot in virtualbox
/bin/echo 'blacklist i2c_piix4' >> /etc/modprobe.d/blacklist.conf
/usr/sbin/update-initramfs -u -k all

/bin/cp /etc/rc.local /etc/rc.local.orig
/bin/rm /etc/rc.local
#/usr/bin/wget <%= server_url %>/postinstall.sh -O /etc/rc.local
/usr/bin/wget https://raw.github.com/gist/1035f3c1cc942c883aa5/e889a11959ddef0db727b6871b99d17cbc5a8b83/postinstall.sh -O /etc/rc.local

/bin/chmod 755 /etc/rc.local

exit 0