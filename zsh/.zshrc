eval "$(starship init zsh)"
export PATH="$HOME/.composer/vendor/bin:$PATH"
alias neofetch='neofetch --ascii ~/.config/neofetch/ascii.txt'
alias cmatrix='cmatrix -C blue'
export PATH="$HOME/.vim/plugged/fzf/bin:$PATH"
alias EXIT='tmux kill-server'
function y() {
    local tmp="$(mktemp -t yazi-cwd.XXXXXX)"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f "$tmp"
}
[[ -z "$TMUX" ]] && tmux
set -o vi
