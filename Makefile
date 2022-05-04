provision-ubuntu: install-ansible
	ansible-playbook main-ubuntu.yml -i inventory

provision-macos:
	ansible-playbook main-macos.yml -i inventory

provision-wsl-ubuntu: install-ansible
	ansible-playbook main-wsl-ubuntu.yml -i inventory

provision-arch: update-cache
	ansible-playbook main-arch.yml -i inventory

install-ansible:
	sudo apt install ansible -y

update-cache:
	sudo pacman -S make ansible

