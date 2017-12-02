etc_root := ${HOME}/dotfiles/etc/
deploy := deploy.sh
clean := clean.sh
install := install.sh

.PHONY:all
all:

.PHONY:clean
clean:
	$(etc_root)$(clean)
	
.PHONY:install
install:
	$(etc_root)$(install)

.PHONY:deploy
deploy:
	$(etc_root)$(deploy)

