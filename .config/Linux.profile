export XDG_DESKTOP_DIR=$HOME
export XDG_DOCUMENTS_DIR=$HOME/home/doc
export XDG_DOWNLOAD_DIR=$HOME/Downloads
export XDG_MUSIC_DIR=$HOME/home/aud
export XDG_PICTURES_DIR=$HOME/home/pic
export XDG_PUBLICSHARE_DIR=$HOME/home/srv
export XDG_TEMPLATES_DIR=$HOME/home/temp
export XDG_VIDEOS_DIR=$HOME/home/vid

export BAT_THEME=base16
export CHROOT=$XDG_DATA_HOME/chroot
export TEXMFHOME=$XDG_DATA_HOME/texmf
export TEXMFVAR=$XDG_STATE_HOME/texmf
export TEXMFCONFIG=$XDG_CONFIG_HOME/texmf
export TEXMFDIST=/usr/share/texmf-dist

if [ ${0##*/} = bash ]
then
    . $ENV
fi

# wm=$(cat << 'eof'
# eof)

if [ -z $WAYLAND_DISPLAY ] && [ $(tty) = /dev/tty1 ]
then
    export XDG_SESSION_TYPE=wayland  # all, Qt5 apps
    export GDK_BACKEND=wayland       # gtk apps
    # export MOZ_ENABLE_WAYLAND=1      # firefox
    # export SAL_USE_VCLPLUGIN=gtk4    # libreoffice, buggy tho
    export XDG_CURRENT_DESKTOP=river # xdpw 
    export XCURSOR_THEME=BreezeX-Light
    export XCURSOR_SIZE=32

    exec river
fi
