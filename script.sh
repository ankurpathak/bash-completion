#!/bin/bash
# nvm
sudo curl -L https://raw.githubusercontent.com/nvm-sh/nvm/master/bash_completion -o /etc/bash_completion.d/nvm

#compose
sudo curl -L https://raw.githubusercontent.com/docker/compose/master/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

#docker
sudo curl -L https://raw.githubusercontent.com/docker/docker-ce/master/components/cli/contrib/completion/bash/docker -o /etc/bash_completion.d/docker

#docker machine
base=https://raw.githubusercontent.com/docker/machine/master
for i in docker-machine-prompt.bash docker-machine-wrapper.bash docker-machine.bash
do
sudo wget "$base/contrib/completion/bash/${i}" -P /etc/bash_completion.d
done

#vagrant
sudo curl -L https://raw.githubusercontent.com/hashicorp/vagrant/master/contrib/bash/completion.sh -o /etc/bash_completion.d/vagrant

#sdkman
sudo curl -L https://raw.githubusercontent.com/Bash-it/bash-it/master/completion/available/sdkman.completion.bash -o /etc/bash_completion.d/sdkman

#maven
sudo curl -L https://raw.githubusercontent.com/Bash-it/bash-it/master/completion/available/maven.completion.bash -o /etc/bash_completion.d/maven