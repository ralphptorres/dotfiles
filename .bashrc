shopt -s autocd

bind 'set editing-mode vi'
bind 'set show-mode-in-prompt on'
bind 'set vi-cmd-mode-string \1\e[2 q\2'
bind 'set vi-ins-mode-string \1\e[6 q\2'
bind 'set colored-completion-prefix on'
bind 'set colored-stats on'
bind 'set completion-ignore-case on'
bind 'set completion-map-case on'
bind 'set mark-symlinked-directories on'
bind 'set menu-complete-display-prefix on'
bind 'set show-all-if-ambiguous on'
bind 'set visible-stats on'
bind 'TAB: menu-complete'              # tab
bind '"\e[Z": menu-complete-backward'  # s-tab
bind '"\e[A": history-search-backward' # up
bind '"\e[B": history-search-forward'  # down

HISTCONTROL=ignoreboth
HISTFILE=$XDG_DATA_HOME/bash/history
HISTSIZE=230212

PROMPT_COMMAND=$(cat << "EOF"
PS1="\n"
[ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ] && PS1="$USER@$HOSTNAME "
PS1="$PS1\w "
[ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" ] && \
  PS1="$PS1$(git symbolic-ref HEAD 2>/dev/null | cut -d/ -f3-)"
PS1="$PS1\n\`if [ \$? -ne 0 ]; then printf \[\e[7m\]; fi\`>\[\e[m\] "
EOF
)
