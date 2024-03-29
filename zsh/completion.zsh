# # matches case insensitive for lowercase
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# # pasting with tabs doesn't perform completion
# zstyle ':completion:*' insert-tab pending

# # default to file completion
# zstyle ':completion:*' completer _expand _complete _files _correct _approximate

# Enable kubectl autocomplete
# if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

# # enable nox support
# # To activate completions for zsh you need to have
# # bashcompinit enabled in zsh:
# autoload -U bashcompinit
# bashcompinit

# # # Afterwards you can enable completion for nox:
# eval "$(register-python-argcomplete nox)"
