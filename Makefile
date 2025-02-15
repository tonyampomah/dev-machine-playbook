install:
	ansible-galaxy install -r requirements.yml

provision-linux: install
	ansible-playbook main-linux.yml -i inventory

provision-m1-linux: install
	ansible-playbook main-linux.yml -i inventory

provision-macos: install
	ansible-playbook main-macos.yml -i inventory

clone-projects: install
	ansible-playbook main-linux.yml -i inventory --tags clone-projects

printer-setup: install
	ansible-playbook main-linux.yml -i inventory --tags printer
