.PHONY: k3s

traefik:
	ansible-playbook --inventory inventory.yml traefik.yml

eagent:
	ansible-playbook --inventory inventory.yml elastic-agent.yml

nginx:
	ansible-playbook --inventory inventory.yml nginx.yml

k3s:
	ansible-playbook --inventory inventory.yml k3s.yml

install:
	python3 -m pip install ansible
	brew install hudochenkov/sshpass/sshpass
