install:
	ansible-galaxy install -r requirements.yml

linux: install
	ansible-playbook main-linux.yml -i inventory

linux-fonts:
	ansible-playbook main-linux.yml -i inventory --tags fonts

linux-emacs:
	ansible-playbook main-linux.yml -i inventory --tags emacs

linux-dev-tools:
	ansible-playbook main-linux.yml -i inventory --tags dev-tools

linux-web-browsers:
	ansible-playbook main-linux.yml -i inventory --tags web-browsers

linux-window-manager:
	ansible-playbook main-linux.yml -i inventory --tags window-manager

m1-linux: install
	ansible-playbook main-linux.yml -i inventory

macos: install
	ansible-playbook main-macos.yml -i inventory

clone-projects: install
	ansible-playbook main-linux.yml -i inventory --tags clone-projects

printer-setup: install
	ansible-playbook main-linux.yml -i inventory --tags printer
