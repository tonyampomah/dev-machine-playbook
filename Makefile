install:
	ansible-galaxy install -r requirements.yml

provision-linux: install
	ansible-playbook main-linux.yml -i inventory

provision-macos: install
	ansible-playbook main-macos.yml -i inventory

provision-linux-general-apps:
	ansible-playbook main-linux.yml -i inventory --tags general-apps

provision-linux-fonts:
	ansible-playbook main-linux.yml -i inventory --tags fonts

provision-linux-emacs:
	ansible-playbook main-linux.yml -i inventory --tags emacs

provision-linux-dev-tools:
	ansible-playbook main-linux.yml -i inventory --tags dev-tools

provision-linux-docker:
	ansible-playbook main-linux.yml -i inventory --tags docker

provision-linux-web-browsers:
	ansible-playbook main-linux.yml -i inventory --tags web-browsers

provision-linux-window-manager:
	ansible-playbook main-linux.yml -i inventory --tags window-manager

provision-linux-install-pyenv:
	ansible-playbook main-linux.yml -i inventory --tags install-pyenv

git-clone-projects: install
	ansible-playbook main-linux.yml -i inventory --tags clone-projects

configure-dotfiles: install
	ansible-playbook main-linux.yml -i inventory --tags configure-dotfiles

install-extra-packages: install
	ansible-playbook main-linux.yml -i inventory --tags install-extra-packages

printer-setup: install
	ansible-playbook main-linux.yml -i inventory --tags printer
