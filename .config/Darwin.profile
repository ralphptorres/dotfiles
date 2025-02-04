export OPENER=xdg-open
export HOMEBREW_CACHE=$XDG_CACHE_HOME/homebrew
export HOMEBREW_NO_AUTO_UPDATE=1

for prog in coreutils findutils gawk gnu-sed gnu-tar grep make
do
    export PATH=/usr/local/opt/$prog/libexec/gnubin:$PATH
    export MANPATH=/usr/local/opt/$prog/libexec/gnuman:$MANPATH
done
unset prog
export MANPATH=/usr/local/texlive/$(date +%Y)basic/texmf-dist/doc/man:$MANPATH

printf '\33c'

if [ ${SHELL##*/} = bash ]
then
    . $ENV
    . $HOME/.bashrc
    . /usr/local/share/bash-completion/bash_completion
fi
