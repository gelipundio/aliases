##utils
alias lsa='ls -lah'

##docker
alias dockerrm='docker rm $(docker ps -qa)'
alias dockerrmi='docker rmi $(docker images -qa)'
alias dockerrmv='docker volume rm $(docker volume ls -q)'
alias dockerstop='docker stop $(docker ps -q)'
alias dockerexplode='dockerstop && dockerrm && dockerrmi && dockerrmv'
alias dockercub='docker-compose up --build'
alias dockercu='docker-compose up '

##git
alias getbranch='git branch | grep "* " | cut -d " " -f 2'
alias gitpull='git pull origin $(getbranch)'
alias gitpush='git push origin $(getbranch)'

##npm
alias npmtest='cat package.json | grep "test"'
alias npmstart='cat package.json | grep "start"'
alias npmdev='cat package.json | grep "dev"'