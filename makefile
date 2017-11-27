etc_root = /home/tarotech/dotfiles/etc/
deploy = deploy.sh
clean = clean.sh
install = install.sh
test:
	echo $(etc_root)$(deploy)
	
