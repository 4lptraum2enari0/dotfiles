source ~/.profile

if status is-interactive
and not set -q TMUX
    exec tmux
end

function fs -d "Switch tmux session"
  tmux list-sessions -F "#{session_name}" | fzf | read -l result; and tmux switch-client -t "$result"
end
function la
    command exa -a -l $argv
end

function py
    command python $argv
end




set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_TMUX 1
set -U FZF_DEFAULT_OPTS "--color=dark"
set -U FZF_OPEN_COMMAND "find ."
set -U FZF_FIND_FILE_COMMAND "find ."
set -U FZF_COMPLETE 3 


