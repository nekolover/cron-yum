all: clean rpm

clean: 
	rm -f yum-apt*rpm

rpm:
	fpm -n cron-yum -v 1.0.1 -a all -C src -m "<jonathan.raffre@smile.fr>" --description "automatic update of packages using yum" --url 'https://github.com/nekolover/cron-yum' -t rpm --config-files etc/sysconfig/yum-check --config-files etc/cron.daily/cron-yum -s dir etc usr
