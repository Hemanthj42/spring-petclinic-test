   #! /bin/bash
    sudo yum update -y
    sudo yum install java-1.8* -y
    sudo JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk
    sudo export JAVA_HOME
    sudo PATH=$PATH:$JAVA_HOME
    sudo yum install wget -y
    sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
    sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
    sudo yum  install jenkins -y
    sudo service jenkins start
    sudo chkconfig jenkins on
    sudo yum install git -y
    sudo yum install docker -y
    sudo service docker start
    sudo chkconfig docker on
    sudo chown jenkins /var/run/docker.sock
    sudo amazon-linux-extras install ansible2 -y