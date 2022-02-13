provision: install-ansible
	ansible-playbook main.yml -i inventory

install-ansible:
	sudo apt install ansible -y

provision-arch: update-cache
	ansible-playbook main.yml -i inventory

update-cache:
	sudo pacman -S make ansible

