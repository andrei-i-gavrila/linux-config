export PS1="\[$(tput bold)\]\[\033[38;5;33m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;226m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export HISTCONTROL="erasedups"
export PATH="$PATH:~/.config/composer/vendor/bin"

#Aliases
alias newalias="subl ~/.bash_aliases"
alias rldalias="source ~/.bash_aliases"
alias laravel="~/.config/composer/vendor/bin/laravel"
alias py="python3 -u $@"
alias pyrun="py main.py"
alias ..="cd .."
alias pu="phpunit"
alias artisan="php artisan $@"
alias startsql="sudo /opt/mssql/bin/sqlservr"

function encode() { echo -n $@ | perl -pe's/([^-_.~A-Za-z0-9])/sprintf("%%%02X", ord($1))/seg'; }
alias chr="chromium >> /dev/null 2>&1 & disown"
chrs () {
	if [[ $@ =~ .*(\.[a-z]+)+(\/[^[:space:]]+)*$ ]]; then
		chromium $@ >> /dev/null 2>&1 & disown
	else
		chromium  https://www.google.ro/?#q="`encode $@`" >> /dev/null 2>&1 & disown
	fi
}
