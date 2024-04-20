if status is-interactive
	if test "$(tty)" = /dev/tty1
    #export XDG_RUNTIME_DIR=/run/user/1000/
    #mkdir $XDG_RUNTIME_DIR
    #chmod 700 $XDG_RUNTIME_DIR
		exec dbus-run-session Hyprland
	end
end

source /usr/share/cachyos-fish-config/cachyos-config.fish

alias get "paru -S"
alias snv "sudo -E nv"
alias upd "paru -Syu"
alias sv systemctl
# pnpm
set -gx PNPM_HOME "/home/antonix/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH


export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

set -x MANROFFOPT '-c'

# Switch
export DEVKITPRO=/opt/devkitpro
export DEVKITARM={$DEVKITPRO}/devkitARM
export DEVKITPPC={$DEVKITPRO}/DEVKITPPC

export BROWSER=brave
export TERM=alacritty 

export DISTCC_HOSTS="10.8.0.1,cpp,lzo"

set SSH_AUTH_SOCK $XDG_RUNTIME_DIR/gcr/ssh

#eval "$(ssh-agent -s)"

set fish_greeting ""
