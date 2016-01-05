alias ls='ls -G'
alias dir='ls -lsah'

if [ -r ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

if [ -r ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
fi

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh scp sftp
