#!/bin/bash

#install yum
sudo yum -y install wget

#downloads jira installer and response file
wget https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-7.9.0-x64.bin
wget https://github.com/caalonde/atlassian-bootstrap/blob/master/response.varfile
chmod a+x atlassian-jira-software-7.9.0-x64.bin

# runs jira unattended installation
sudo ./atlassian-jira-software-7.9.0-x64.bin -q -varfile response.varfile
