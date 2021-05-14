emulate sh -c 'source /etc/profile'

# Profile file. Runs on login. Environmental variables are set here.

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Default programs:
export EDITOR="nvim"
export SYSTEMD_EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"
export TERMINAL="st"
export BROWSER="librewolf"
export READER="zathura"
export FILE="pcmanfm"

# termite SSH fix
export TERM=xterm-color

# wine
# Run 'systemctl restart systemd-binfmt' in order to make the wine binfmt available on your system.
 export WINEPREFIX='/home/led/Games/div'
# ESYNC
 export WINEESYNC=1

# javafix for tiling wm
export _JAVA_AWT_WM_NONREPARENTING=1
# fix for java to use GTK theme
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel ${_JAVA_OPTIONS}"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
#export INPUTRC="$HOME/.config/inputrc"

# Other program settings:
export SUDO_ASKPASS="$HOME/.local/bin/rofi/rofiaskpass"

export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"

# color output for man
export LESS=-R
# Start blinking
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
# Start bold
export LESS_TERMCAP_md=$(tput bold; tput setaf 2) # green
# Start standout
export LESS_TERMCAP_so=$(tput bold; tput setaf 0; tput setab 2) # yellow
# End standout
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
# Start underline
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 1) # red
# End Underline
export LESS_TERMCAP_ue=$(tput sgr0)
# End bold, blinking, standout, underline
export LESS_TERMCAP_me=$(tput sgr0)

# This is the list for lf icons:

export LF_ICONS="\
tw=:\
st=:\
ow=:\
dt=:\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=:\
*.jpeg=:\
*.mjpg=:\
*.mjpeg=:\
*.gif=:\
*.bmp=:\
*.pbm=:\
*.pgm=:\
*.ppm=:\
*.tga=:\
*.xbm=:\
*.xpm=:\
*.tif=:\
*.tiff=:\
*.png=:\
*.svg=:\
*.svgz=:\
*.mng=:\
*.pcx=:\
*.mov=:\
*.mpg=:\
*.mpeg=:\
*.m2v=:\
*.mkv=:\
*.webm=:\
*.ogm=:\
*.mp4=:\
*.m4v=:\
*.mp4v=:\
*.vob=:\
*.qt=:\
*.nuv=:\
*.wmv=:\
*.asf=:\
*.rm=:\
*.rmvb=:\
*.flc=:\
*.avi=:\
*.fli=:\
*.flv=:\
*.gl=:\
*.dl=:\
*.xcf=:\
*.xwd=:\
*.yuv=:\
*.cgm=:\
*.emf=:\
*.ogv=:\
*.ogx=:\
*.aac=:\
*.au=:\
*.flac=:\
*.m4a=:\
*.mid=:\
*.midi=:\
*.mka=:\
*.mp3=:\
*.mpc=:\
*.ogg=:\
*.ra=:\
*.wav=:\
*.oga=:\
*.opus=:\
*.spx=:\
*.xspf=:\
*.pdf=:\
*.nix=:"



# export LF_ICONS="di=📁:\
# fi=📃:\
# tw=🤝:\
# ow=📂:\
# ln=⛓:\
# or=❌:\
# ex=🎯:\
# *.txt=✍:\
# *.mom=✍:\
# *.me=✍:\
# *.ms=✍:\
# *.png=🖼:\
# *.webp=🖼:\
# *.ico=🖼:\
# *.jpg=📸:\
# *.jpe=📸:\
# *.jpeg=📸:\
# *.gif=🖼:\
# *.svg=🗺:\
# *.tif=🖼:\
# *.tiff=🖼:\
# *.xcf=🖌:\
# *.html=🌎:\
# *.xml=📰:\
# *.gpg=🔒:\
# *.css=🎨:\
# *.pdf=📚:\
# *.djvu=📚:\
# *.epub=📚:\
# *.csv=📓:\
# *.xlsx=📓:\
# *.tex=📜:\
# *.md=📘:\
# *.r=📊:\
# *.R=📊:\
# *.rmd=📊:\
# *.Rmd=📊:\
# *.m=📊:\
# *.mp3=🎵:\
# *.opus=🎵:\
# *.ogg=🎵:\
# *.m4a=🎵:\
# *.flac=🎼:\
# *.wav=🎼:\
# *.mkv=🎥:\
# *.mp4=🎥:\
# *.webm=🎥:\
# *.mpeg=🎥:\
# *.avi=🎥:\
# *.mov=🎥:\
# *.mpg=🎥:\
# *.wmv=🎥:\
# *.m4b=🎥:\
# *.flv=🎥:\
# *.zip=📦:\
# *.rar=📦:\
# *.7z=📦:\
# *.tar.gz=📦:\
# *.z64=🎮:\
# *.v64=🎮:\
# *.n64=🎮:\
# *.gba=🎮:\
# *.nes=🎮:\
# *.gdi=🎮:\
# *.1=ℹ:\
# *.nfo=ℹ:\
# *.info=ℹ:\
# *.log=📙:\
# *.iso=📀:\
# *.img=📀:\
# *.bib=🎓:\
# *.ged=👪:\
# *.part=💔:\
# *.torrent=🔽:\
# *.jar=♨:\
# *.java=♨:\
# "




# Themminig
# export QT_QPA_PLATFORMTHEME=gtk2
# export DESKTOP_SESSION=gnome		# telgram filepicker fix
# export GNOME_DESKTOP_SESSION_ID=1
# start mpd
# mpd >/dev/null 2>&1 &

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

PATH="/usr/sbin:/sbin:/bin:/usr/games:$PATH"


