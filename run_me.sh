#!/bin/bash

# This playbook is for a single user workstation and some roles assume
# that the user running this playbook should be added ad admin, etc.

# Ansible isn't able to discover at runtime who called it via sudo. 
# We pass the name of the current user to ansible as my_user so that
# roles that need to can add the calling user to groups as needed.

#sudo ansible-playbook -e my_user=$USER -i hosts top.yml $@
sudo echo
ansible-playbook --become-user=root -e my_user=$USER -i hosts top.yml $@
