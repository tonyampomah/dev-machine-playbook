provision: install-ansible
	ansible-playbook main.yml -i inventory

install-ansible:
	sudo apt install ansible -y
