# Zsh Configuration
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Use Emacs as the default editor.
export EDITOR="emacs -nw"

# GNUPG Pinentry TTY
export GPG_TTY="$(tty)"
gpg-connect-agent --quiet updatestartuptty /bye >/dev/null

# Default Connection URI for libvirt Tools
export LIBVIRT_DEFAULT_URI="qemu:///system"
