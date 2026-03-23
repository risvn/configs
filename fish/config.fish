if status is-interactive
fish_vi_key_bindings
 set -x PATH $PATH ~/bin   # Commands to run in interactive sessions can go here
end


# Gruvbox palette (minimal)
set -g fish_color_normal       ebdbb2
set -g fish_color_command      b8bb26
set -g fish_color_param        d5c4a1
set -g fish_color_keyword      fb4934
set -g fish_color_quote        fabd2f
set -g fish_color_redirection  d3869b
set -g fish_color_end          a89984
set -g fish_color_error d79921
# Autosuggestions (DIM / UNHIGHLIGHTED)
#set -g fish_color_autosuggestion 504945  # dark gray (barely visible)

# Selection
set -g fish_color_selection white --background=3c3836

# Cursor
set -g fish_color_cursor ebdbb2

# Search match
set -g fish_color_search_match black --background=bdae93
set -g fish_color_autosuggestion 504945

function fish_prompt
    # Exit status
    if test $status -eq 0
        set_color fbf1c7 # beig
    else
        set_color d79921 # red
    end
    echo -n "❯ "

    # Path
    set_color fbf1c7
    echo -n (prompt_pwd)

    # Reset
    set_color normal
    echo -n " "
end

