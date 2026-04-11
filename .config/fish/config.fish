if status is-interactive
    # Commands to run in interactive sessions can go here

    # branch color
    set -g __fish_git_prompt_color_branch yellow

    # symbols
    set -g __fish_git_prompt_showdirtystate true
    set -g __fish_git_prompt_showuntrackedfiles true
    set -g __fish_git_prompt_showstashstate true
    set -g __fish_git_prompt_show_informative_status true
    set -g __fish_git_prompt_char_branch (printf '\UE0A0')
    set -g __fish_git_prompt_showupstream auto

    # symbols color
    set -g __fish_git_prompt_color_dirtystate red
    set -g __fish_git_prompt_color_untrackedfiles red
    set -g __fish_git_prompt_color_stagedstate green

    # ssh agent
    set -x SSH_AUTH_SOCK $HOME/.ssh/ssh-agent.sock

    if not ssh-add -l &>/dev/null
        eval (ssh-agent -c -a $SSH_AUTH_SOCK) >/dev/null
        ssh-add ~/.ssh/id_ed25519_github 2>/dev/null
    end

end
