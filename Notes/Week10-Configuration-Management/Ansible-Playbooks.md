# Ansible Playbooks

## What are they


- Playbooks are written in YAML format (Yet Another Markup Language)

- Each playbook is composed of one or more 'plays' in a list

- These will also run in our Ansible controller


## Why use playbooks over simpler ad-hoc commands

-With one playbook we can install Nginx into 50 servers

- We can also specify, install mongo in our db., install Nginx in our web VM,
and then update all of these installations
