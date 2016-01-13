#!/bin/bash

# This playbook is for a single user workstation and some roles assume
# that the user running this playbook should be added ad admin, etc.

# Ansible isn't able to discover at runtime who called it via sudo. 
# We pass the name of the current user to ansible as my_user so that
# roles that need to can add the calling user to groups as needed.

ansible-playbook --ask-sudo-pass -e my_user=ian -i hosts top.yml $@
