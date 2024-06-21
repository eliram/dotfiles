# this is profiling need to uncomment here and in the end
# zmodload zsh/zprof # top of your .zshrc file
date "+%s.%N"

eval "$(/opt/homebrew/bin/brew shellenv)"


# export DOTFILES=$HOME/.dotfiles
export ZSH=$DOTFILES/zsh

# ZSH_THEME="agnoster"
# ZSH_THEME="cobalt2"
# ZSH_THEME="gozilla"

# define the code directory
if [[ -d ~/code ]]; then
    export CODE_DIR=~/code
fi

# Enable asdf autocomplete
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# load all zsh config files
for config ($ZSH/**/*.zsh) source $config

if [[ -a ~/.localrc ]]; then
    source ~/.localrc
fi

# if [[ -a ~/.docker_enter ]]; then
# 	source ~/.docker_enter
# fi


# initialize autocomplete - do this only once a day (speed up)
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# autoload -U +X compinit && compinit
autoload bashcompinit && bashcompinit
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C
complete -C '/Users/eliramshatz/.asdf/shims/aws_completer' aws

# for config ($ZSH/**/*completion.sh) source $config

export EDITOR='lvim'


#path
export PATH=/usr/local/bin:$PATH


# add /usr/local/sbin
if [[ -d /usr/local/sbin ]]; then
    export PATH=/usr/local/sbin:$PATH
fi

# adding path directory for custom scripts
export PATH=$DOTFILES/bin:$PATH

# check for custom bin directory and add to path
if [[ -d ~/bin ]]; then
    export PATH=~/bin:$PATH
fi

[ -z "$TMUX" ] && export TERM=xterm-256color

# . ~/z/z.sh
if command -v brew >/dev/null 2>&1; then
	# Load rupa's z if installed
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi

# Base16 Shel# Base16 Shell
export THEME="base16-3024"
if [ -z "$THEME" ]; then
    export THEME="base16-3024"
    # export THEME="base16-solarized"
fi
if [ -z "$BACKGROUND" ]; then
    export BACKGROUND="dark"
fi

BASE16_SHELL="$DOTFILES/.config/base16-shell/scripts/$THEME.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
source $BASE16_SHELL



export VIRTUAL_ENV_DISABLE_PROMPT=True

export WORKON_HOME=~/virtualenv



export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv init --path)"
  eval "$(pyenv virtualenv-init -)"
fi

# Enable startship
eval "$(starship init zsh)"

# Enable kubectl autocomplete
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

export DISABLE_AUTO_TITLE=true 


# define the planning ai mono repo code directory
# export PAI_MONO_REPO_CODE_DIR=~/code/anaplan/planning-ai-mono
# load all the planning ai mono repo specific environment configuration.
# if [ -e $PAI_MONO_REPO_CODE_DIR/.pairc ]; then
#     source $PAI_MONO_REPO_CODE_DIR/.pairc
# fi
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
export PATH="/usr/local/opt/openjdk@8/libexec/openjdk.jdk/Contents/Home/bin:$PATH"
export PATH="/Users/eliramshatz/code/anaplan/build-tools/jenkins_pipeline/src:$PATH"
export GROOVY_HOME=/usr/local/opt/groovy/libexec

#add support for direnv
eval "$(direnv hook zsh)"

# #THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# pnpm
# export PNPM_HOME="/Users/eliramshatz/Library/pnpm"
# export PATH="$PNPM_HOME:$PATH"
# pnpm end


# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh



date "+%s.%N"
# profiling
# zprof # bottom of .zshrc

