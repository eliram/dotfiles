# reload zsh config
alias reload!='source ~/.zshrc'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi


# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias l="ls -lah ${colorflag}"
alias la="ls -AF ${colorflag}"
alias ll="ls -lFh ${colorflag}"
alias lld="ls -l | grep ^d"
alias rmf="rm -rf"

# Helpers
alias grep='grep --color=auto'
alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='du -h -c' # calculate disk usage for a folder

# rake fix
# alias rake="noglob rake"

# # Applications
# alias mou='open -a Mou.app'
# alias mark='open -a Marked.app'
# alias ios='open -a /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'

# # IP addresses
# alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
# alias localip="ipconfig getifaddr en1"
# alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# # Enhanced WHOIS lookups
# alias whois="whois -h whois-servers.net"

# # Flush Directory Service cache
# alias flush="dscacheutil -flushcache"

# # View HTTP traffic
# alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
# alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# # Trim new lines and copy to clipboard
# alias trimcopy="tr -d '\n' | pbcopy"

# # Recursively delete `.DS_Store` files
# alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# # File size
# alias fs="stat -f \"%z bytes\""

# # ROT13-encode text. Works for decoding, too! ;)
# alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# # Empty the Trash on all mounted volumes and the main HDD
# alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"

# # Hide/show all desktop icons (useful when presenting)
# alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
# alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# # One of @janmoesen’s ProTip™s
# for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
#     alias "$method"="lwp-request -m '$method'"
# done

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 10'"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

#start and stop redis on oxs
# First you need to setup redis as a service managed by launchctl:
# ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
alias redis-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redis-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"


alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
# this is in order to use the ipython from inside the virtualenv
alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

alias lvim="~/.local/bin/lvim"
