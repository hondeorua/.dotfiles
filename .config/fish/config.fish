if status is-interactive
    set -U fish_greeting
    alias ls="eza -a --icons --git"
    neofetch
    set -g fish_autosuggestion_enabled 1
end

function __fzf_select_file
set -l file (fzf --preview 'bat --style=numbers --color=always {} || cat {}' --preview-window=right:60%)
  if test -n "$file"
    commandline -i -- $file
  end
end

bind \cx '__fzf_select_file'  # Alt+f (Meta+f)
