install:
	ansible-galaxy install -r requirements.yml

ubuntu:
	ansible-playbook main-ubuntu.yml -i inventory

arch:
	ansible-playbook main-arch.yml -i inventory

macos:
	ansible-playbook main-macos.yml -i inventory

wsl:
	ansible-playbook main-wsl-ubuntu.yml -i inventory
