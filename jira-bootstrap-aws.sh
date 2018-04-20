#github:https://github.com/caalonde/atlassian-bootstrap/jira-bootstrap-aws.sh
#!/bin/bash

#parameters
version=7.9.0

#install wget
sudo yum -y install wget

#downloads app installer and response file
wget https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-$version-x64.bin
wget https://github.com/caalonde/atlassian-bootstrap/blob/master/response.varfile

# runs jira unattended installation
chmod a+x atlassian-jira-software-$version-x64.bin
sudo ./atlassian-jira-software-$version-x64.bin -q -varfile response.varfile
