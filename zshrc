#Env
export PATH=$PATH:$HOME/.local/scripts:$HOME/Android/Sdk/tools:$HOME/Android/Sdk/platform-tools:/opt/bin/
export JAVA_HOME=/usr/lib/jvm/default
export JDK_HOME=/usr/lib/jvm/default
export STEAM_RUNTIME=0
export LIBGL_DRI3_DISABLE=1
export EDITOR=nvim
export DIFFPROG=meld
export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fctix"
export WINEPREFIX=~/.wine32
export WINEARCH=win32
export GPG_TTY=$TTY
unset CLASSPATH
case $TERM in
	linux)
		LANG=C
		;;
	*)
	LANG=ja_JP.UTF-8
	LC_ALL=ja_JP.UTF-8
	;;
esac
export LANG
export LC_ALL
export MANPATH=/usr/share/man/ja:$MANPATH

#alias
alias auth.log="sudo journalctl SYSLOG_FACILITY=10"
alias paccache="sudo paccache -r;sudo paccache -ruk0"
alias gitrow="git ls-files | xargs -Iname find name -type f | xargs -n1 git --no-pager blame -f -w 2> /dev/null | strings | grep ray45422 | wc -l"

#function
function zplug-init(){
	source /usr/share/zsh/scripts/zplug/init.zsh
	if ! zplug check --verbose; then
	    printf "Install? [y/N]: "
	    if read -q; then
	        echo; zplug install
	    fi
	fi

	zplug load
	echo "[zplug] enable"
}
function zplug-install(){
	source /usr/share/zsh/scripts/zplug/init.zsh
	zplug "zplug/zplug"
	zplug install
	zplug load
	
	zplug "zsh-users/zsh-history-substring-search"
	zplug "zsh-users/zsh-autosuggestions"
	zplug "zsh-users/zsh-syntax-highlighting"
	zplug "zsh-users/zsh-completions"
	zplug "mollifier/cd-gitroot"
	zplug "b4b4r07/enhancd", use:enhancd.sh
}
	
if [ -v $SSH_CONNECTION ]; then
	zplug-init
else
	if [ $TERM != "xterm-256color" ]; then
		zplug-init
	fi
fi
