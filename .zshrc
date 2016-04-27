source /usr/share/zsh-antigen/antigen.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

antigen use oh-my-zsh
antigen bundle git
antigen bundle cp
antigen bundle command-not-found
antigen bundle git-extras
antigen bundle gnu-utils
antigen bundle history
antigen bundle pip
antigen bundle python
antigen bundle ruby
antigen bundle screen
antigen bundle ssh-agent

antigen bundle zsh-users/zsh-syntax-highlighting

#antigen theme jonathan
antigen theme agnoster 

antigen apply
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# Python 3 as default alias
alias python=python3
