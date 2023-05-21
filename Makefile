TAGS := all

.PHONY: all
all: ;

.PHONY: prepare
prepare:
	ansible-galaxy install -r ansible/requirements.yml

.PHONY: prepare-force
prepare-force:
	ansible-galaxy install --force -r ansible/requirements.yml

.PHONY: maui
maui: prepare
	ANSIBLE_CONFIG=ansible/ansible.cfg ansible-playbook ansible/mac.yml -l maui --tags $(TAGS)

.PHONY: maui-debug
maui-debug: prepare
	ANSIBLE_CONFIG=ansible/ansible.cfg ansible-playbook ansible/mac.yml -l maui --tags $(TAGS) -vvvvvv

.PHONY: maui-tags
maui-tags:
	ANSIBLE_CONFIG=ansible/ansible.cfg ansible-playbook ansible/mac.yml -l maui --list-tags

.PHONY: capri
capri: prepare
	ANSIBLE_CONFIG=ansible/ansible.cfg ansible-playbook ansible/mac.yml -l capri --tags $(TAGS)

.PHONY: capri-debug
capri-debug: prepare
	ANSIBLE_CONFIG=ansible/ansible.cfg ansible-playbook ansible/mac.yml -l capri --tags $(TAGS) -vvvvvv

.PHONY: capri-tags
capri-tags:
	ANSIBLE_CONFIG=ansible/ansible.cfg ansible-playbook ansible/mac.yml -l capri --list-tags
