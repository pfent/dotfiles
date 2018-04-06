eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
ibus-daemon -drx