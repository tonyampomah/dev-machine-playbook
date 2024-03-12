install:
	ansible-galaxy install -r requirements.yml

provision-ubuntu:
	ansible-playbook main-ubuntu.yml -i inventory

provision-arch:
	ansible-playbook main-arch.yml -i inventory

provision-macos:
	ansible-playbook main-macos.yml -i inventory

provision-wsl:
	ansible-playbook main-wsl-ubuntu.yml -i inventory
