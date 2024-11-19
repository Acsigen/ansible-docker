#!/bin/bash

docker compose run --rm ansible-docker bash -c "ansible-config init --disabled > /ansible/ansible.cfg"
sed -i 's/;home=~\/\.ansible/home=\/ansible/g' ./ansible/ansible.cfg
sed -i 's/;inventory=\/etc\/ansible\/hosts/inventory=\/ansible\/inventory\/hosts/g' ./ansible/ansible.cfg
sed -i 's/;playbook_vars_root=top/playbook_vars_root=top/g' ./ansible/ansible.cfg
sed -i 's/;interpreter_python=auto/interpreter_python=\/usr\/bin\/python3/g' ./ansible/ansible.cfg
