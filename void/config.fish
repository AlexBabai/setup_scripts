if status is-interactive
	if test "$(tty)" = /dev/tty1
		export XDG_RUNTIME_DIR=/run/user/1000/
		mkdir $XDG_RUNTIME_DIR
		chmod 700 $XDG_RUNTIME_DIR
		exec dbus-run-session sway
	end
end
set fish_greeting
#alias nv nvim

alias get "sudo xbps-install"
alias upd "sudo xbps-install -Su && sudo flatpak update"
alias snv "sudo -E nv"
alias poweroff "sudo poweroff"

#alias la "nnn -de"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# PS Vita
export VITASDK=/usr/local/vitasdk
export PSPDEV=/home/antonix/Games/pspdev
export PSPSDK=/home/antonix/Games/pspsdk


# DBUS
#export $(dbus-launch)

fastfetch


