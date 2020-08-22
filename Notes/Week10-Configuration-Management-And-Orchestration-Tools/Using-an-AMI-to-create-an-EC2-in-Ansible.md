# Using an AMI to create an EC2 in Ansible

## Even when we stop our EC2 instance from running there is still some additional
## costs to it, therefore we can turn our EC2 into AMI's which we can start up whenever we want

## We are basically saving our EC2 instance

## AMI's are blueprints, when we click on one on AWS it will create the EC2 instance
##for us using the AMI image

##


# Creating an EC2 Instance Using Ansible


# Guide covers creating an EC2 instance on AWS using Ansible

- To start this guide we must create a Virtual Machine to host our Ansible controller

#### Ansible machine Pre-requisites

1. sudo apt update
2. sudo apt install software-properties-common
3. sudo apt-add-repository --yes --update ppa:ansible/ansible
4. sudo apt install ansible

- You can check ansible is installed with `ansible --version`

## Guide part 1 - Install the EC2 module dependencies

1. sudo apt install python

2. sudo apt install python-pip -y

3. sudo pip install --upgrade pip

4. sudo pip install boto

5. sudo pip install boto3

## Guide part 2 - Create SSH keys to connect to the EC2 instance

- ssh-keygen -t rsa -b 4096 -f ~/.ssh/`<Your_Name>`_aws

## Guide part 3 - Create Ansible Directory Structure

```shell script
mkdir -p AWS_Ansible/group_vars/all/
cd AWS_Ansible
touch playbook.yml
```

## Guide part 4 - Create Ansible Vault file to store the AWS Access and Secret keys

- `ansible-vault create group_vars/all/pass.yml`
- Make your vault password

## Guide part 5 - Edit the vault and store your ec2 secret and access key

- `ansible-vault edit group_vars/all/pass.yml`
- Append to the file. Insert:
```yaml
ec2_access_key: <Your_Access_Key>                                     
ec2_secret_key: <Your_Secret_Key>
```

### It should look like such:

![](/images/adding-AWS-keys.png)

#### esc, colon, w, q will allow us to save and leave the vim file


## Guide part 6 -

```
# AWS playbook
---

- hosts: localhost
  connection: local
  gather_facts: False

  vars:
    key_name: andrew_aws #(The key you made earlier)
    region: eu-west-1
    image: ami-0be56cd3f96f13208
    id: "web-app"
    sec_group: "sg-081225d46b6a3f673"
    subnet_id: "subnet-09c2979c7e39bc368"

  tasks:

    - name: Facts
      block:

      - name: Get instances facts
        ec2_instance_facts:
          aws_access_key: "{{ec2_access_key}}"
          aws_secret_key: "{{ec2_secret_key}}"
          region: "{{ region }}"
        register: result

      - name: Instances ID
        debug:
          msg: "ID: {{ item.instance_id }} - State: {{ item.state.name }} - Public DNS: {{ item.public_dns_name }}"
        loop: "{{ result.instances }}"

      tags: always


    - name: Provisioning EC2 instances
      block:

      - name: Upload public key to AWS
        ec2_key:
          name: "{{ key_name }}"
          key_material: "{{ lookup('file', '~/.ssh/{{ key_name }}.pub') }}"
          region: "{{ region }}"
          aws_access_key: "{{ec2_access_key}}"
          aws_secret_key: "{{ec2_secret_key}}"


      - name: Provision instance(s)
        ec2:
          aws_access_key: "{{ec2_access_key}}"
          aws_secret_key: "{{ec2_secret_key}}"
          assign_public_ip: true
          key_name: "{{ key_name }}"
          id: "{{ id }}"
          vpc_subnet_id: "{{ subnet_id }}"
          group_id: "{{ sec_group }}"
          image: "{{ image }}"
          instance_type: t2.micro
          region: "{{ region }}"
          wait: true
          count: 1
          instance_tags:
            Name: Eng67.Andrew.O.WebApp

      tags: ['never', 'create_ec2']
```




### Creating WebApp EC2

Before we run our YAML we must first add our vagrant IP to our hosts file,
this can be done by entering the file

```
cd /etc/ansible
sudo nano hosts
```

and adding the following code:

![](/images/Adding-AWS-To-Hosts.png)

We can then enter back into the folder we were in

```
cd
cd AWS_Ansible
```

and run the yaml file, creating our EC2 instance, entering the password you created
where prompt

```
ansible-playbook playbook.yml --ask-vault-pass --tags create_ec2
```

- As seen in the gif below, when we run our playbook it automatically
ups our EC2 machine

![](/images/Creating-A-AMI.gif)


### Creating Bastion EC2

- This runs the same as our WebApp EC2, the playbook automates the process

```
ansible-playbook bastion-playbook.yml --ask-vault-pass --tags create_ec2
```

### Creating Database Ec2

- And same with the database, ensuring we have added the correct subnet configurations
where necessary

```
ansible-playbook database-playbook.yml --ask-vault-pass --tags create_ec2
```


### Provisioning our Webapp EC2


Before we can run our YAML file, we must first add the IP's of our web app into
our hosts file of our controller



```
cd
cd /etc/ansible
sudo nano hosts

```
and input the following:

```
[web]
34.241.186.80

```
-


We must copy our app folder from our controller into our web EC2 by running the following

```
sudo scp -i DevOpsStudents.pem -r /home/vagrant/app/ ubuntu@34.241.186.80:/home/ubuntu/
```


## Errors faced

- Struggled to get permission access due to private keys as well as vault access,
this was an issue as it meant we could not automatically go into our webapp EC2
and run the app :unamused: :unamused:
