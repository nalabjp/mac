TAGS := all

.PHONY: all
all: ;

.PHONY: prepare
prepare:
	ansible-galaxy collection install -r ansible/requirements.yml

.PHONY: capri
capri: prepare
	ANSIBLE_CONFIG=ansible/ansible.cfg ansible-playbook ansible/capri.yml --vault-password-file ~/.ansible-vault --tags $(TAGS)

.PHONY: capri-debug
capri-debug: prepare
	ANSIBLE_CONFIG=ansible/ansible.cfg ansible-playbook ansible/capri.yml -vvvvvv --vault-password-file ~/.ansible-vault --tags $(TAGS)

.PHONY: capri-tags
capri-tags:
	ANSIBLE_CONFIG=ansible/ansible.cfg ansible-playbook ansible/capri.yml --vault-password-file ~/.ansible-vault --list-tags
