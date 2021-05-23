#! /bin/bash
    sudo yum update -y
    sudo yum install java-1.8* -y
    sudo JAVA_HOME=/usr/lib/jvm/java-1.8.0
    sudo export JAVA_HOME
    sudo PATH=$PATH:$JAVA_HOME
    sudo yum install git -y
    sudo yum install docker -y
    sudo service docker start
    sudo chkconfig docker on
    sudo chown ec2-user /var/run/docker.sock