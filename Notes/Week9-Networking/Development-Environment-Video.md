# Development Environments

- Vagrant can use any IaC script (from Ansible, Shell or Puppet) to generate a
replica infrastructure within a Virtual Machine environment

- This means that when Developers run the Vagrant script, it will build a new VM
which has the same configurations as the production environment


### Using Vagrant as a development environment automation tool, has many benefits:

- Developers can have multiple environments similar to the production env to run
different tests for testing purposes

- Vagrant code can be stored in a shared repository so that all the dev team can
have access to the same environment

- The vagrant automation to environments results in consistent and controlled
provisioning and thus reducing the chances of run time failures
