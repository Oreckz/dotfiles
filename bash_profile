export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:/opt/puppetlabs/bin:/Users/patrickbirchall/go/bin:/Users/patrickbirchall/.gem/ruby/2.6.0/bin:$PATH"
export CLICOLOR=1

if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
    fi

alias ll="ls -lG"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export LSCOLORS=exfxcxdxbxegedabagacad

#AWSume alias to source the AWSume script
alias awsume=". \$(pyenv which awsume)"

#Auto-Complete function for AWSume

_awsume() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts=$(awsumepy --rolesusers)
    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    return 0
}
complete -F _awsume awsume


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

