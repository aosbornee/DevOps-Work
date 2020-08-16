# Vagrant And Virtual Machines :mailbox_with_mail: :slot_machine:

**Contents:**

**Part I**
- [x] What Is Vagrant


## What Is Vagrant

- Vagrant is a tool that for building and managing virtual machine environments,
more specifically it configures the development environment in which developers
can test their code in a similar environment to production

- Vagrant Scripts are coded using Ruby

## Why Vagrant

- Vagrant can use any IaC script (from Ansible, Shell or Puppet) to generate a
replica infrastructure within a Virtual Machine environment

- Through the use of Vagrant Files we can create multiple Virtual Machines
with the operating systems we desire, as well as provisioning them on start up

## Creating A Vagrant File

```ruby
Vagrant.configure("2") do |config|

# creating a virtual machine ubuntu
  config.vm.box = "ubuntu/xenial64"
# creating a private ip to access our nginx server on the web from inside the VM
  config.vm.network "private_network", ip: "192.168.10.100"
# redirecting the above IP to a specific we address
  config.hostsupdater.aliases = ["development.local"]

end
```

- This is a Vagrant File in it's simplest form, we have an ubuntu Operating System
and we will be able to access our server using the 'development.local:3000' address

- In order to run more complex applications, we will need to sync files from our OS into
our virtual machine and even create other virtual machines from which we can interact with


```Ruby
# Install required plugins
required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

def set_env vars
  command = <<~HEREDOC
      echo "Setting Environment Variables"
      source ~/.bashrc
  HEREDOC

  vars.each do |key, value|
    command += <<~HEREDOC
      if [ -z "$#{key}" ]; then
          echo "export #{key}=#{value}" >> ~/.bashrc
      fi
    HEREDOC
  end

  return command
end

Vagrant.configure("2") do |config|

  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/xenial64"
    db.vm.network "private_network", ip: "192.168.10.150"
    db.vm.synced_folder "environment/db", "/home/ubuntu/environment"
    db.vm.provision "shell", path: "environment/db/provision.sh", privileged: false
  end


  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/xenial64"
    app.vm.network "private_network", ip: "192.168.10.100"
    app.hostsupdater.aliases = ["development.local"]
    app.vm.synced_folder "app", "/home/ubuntu/app"
    app.vm.provision "shell", path: "environment/app/provision.sh", privileged: false
    app.vm.provision "shell", inline: set_env({ DB_HOST: "mongodb://192.168.10.150:27017/posts" }), privileged: false
  end
end
```
