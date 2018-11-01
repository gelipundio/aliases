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

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
