# Setup sudo to allow no-password sudo for "admin"
/bin/cp /etc/sudoers /etc/sudoers.orig
/bin/sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
/bin/sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers

# Fix SMBus error on boot in virtualbox
/bin/echo 'blacklist i2c_piix4' >> /etc/modprobe.d/blacklist.conf
/usr/sbin/update-initramfs -u -k all

/bin/cp /etc/rc.local /etc/rc.local.orig
/bin/rm /etc/rc.local
#/usr/bin/wget <%= server_url %>/postinstall.sh -O /etc/rc.local
/usr/bin/wget http://192.168.10.113:7070/postinstall.sh -O /etc/rc.local

exit 0
