source $(brew --prefix)/share/antigen/antigen.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
export PATH="/Users/iyogeshjoshi/anaconda3/bin:$PATH"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="/usr/local/sbin:$PATH" >> ~/.zshrc
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/Users/iyogeshjoshi/miniconda2/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH="$CUDA_HOME/bin:$PATH"
export CPATH="$CPATH:/usr/local/opt/dbus/include/dbus-1.0/dbus"
export fpath=(/usr/local/share/zsh-completions $fpath)
export GOPATH="$HOME/Documents/Ather/Go"
export ATHER="$HOME/Documents/Ather"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
setopt HIST_IGNORE_ALL_DUPS

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

#antigen theme philips
#antigen theme jonathan
antigen theme agnoster

antigen apply
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# Python 3 as default alias
#alias python=python3
#PS1='%n@%d'

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/iyogeshjoshi/Downloads/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/iyogeshjoshi/Downloads/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/iyogeshjoshi/Downloads/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/iyogeshjoshi/Downloads/google-cloud-sdk/completion.zsh.inc'
fi
# Completion for exercism
if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

