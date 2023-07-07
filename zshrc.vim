source $(brew --prefix)/share/antigen/antigen.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
export PATH="/Users/iyogeshjoshi/anaconda3/bin:$PATH"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="/usr/local/sbin:$PATH" >> ~/.zshrc
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/Users/iyogeshjoshi/miniconda2/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH="$CUDA_HOME/bin:$PATH"
export CPATH="$CPATH:/usr/local/opt/dbus/include/dbus-1.0/dbus"
export fpath=(/usr/local/share/zsh-completions $fpath)
export GOPATH="$HOME/Documents/Ather/Go"
export GITHUB="$HOME/Documents/Github"
export YARA=$GITHUB/Yara
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export GITHUB_TOKEN=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
export NPM_AUTH_TOKEN=$GITHUB_TOKEN
export BIT_TOKEN=13ded738-6c9f-48a6-87e8-558f0b47818e
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
antigen bundle zsh-users/zsh-autosuggestions

#antigen theme philips
#antigen theme jonathan
antigen theme agnoster

antigen apply
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# Python 3 as default alias
#alias python=python3
# PS1='%n@%d'
# Completion for exercism
if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/iyogeshjoshi/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/iyogeshjoshi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/iyogeshjoshi/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/iyogeshjoshi/google-cloud-sdk/completion.zsh.inc'; fi

if command -v ngrok &>/dev/null; then
    eval "$(ngrok completion)"
fi
