provision-ubuntu: install-ansible
	ansible-playbook main-ubuntu.yml -i inventory

provision-wsl-ubuntu: install-ansible
	ansible-playbook main-wsl-ubuntu.yml -i inventory -K

provision-arch: update-cache
	ansible-playbook main-arch.yml -i inventory

install-ansible:
	sudo apt install ansible -y

update-cache:
	sudo pacman -S make ansible

