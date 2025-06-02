# --- History Configuration ---
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST

# --- Enable colors ---
autoload -Uz colors && colors

# --- Git Branch Function ---

# Define the prompt_git function for git repository status
prompt_git() {
    local git_status=''
    local branchName=''

    # Check if the current directory is in a Git repository.
    if git rev-parse --is-inside-work-tree &>/dev/null; then
        # Get the status summary.
        local gitSummary=$(git status --porcelain)

        # Check for uncommitted changes in the index, unstaged changes, untracked files, and stashed files.
        [[ -n $(echo "$gitSummary" | grep '^M') ]] && git_status+='+'
        [[ -n $(echo "$gitSummary" | grep '^ M') ]] && git_status+='!'
        [[ -n $(echo "$gitSummary" | grep '^\?\?') ]] && git_status+='?'
        [[ $(
            git rev-parse --verify refs/stash &>/dev/null
            echo "${?}"
        ) == '0' ]] && git_status+='$'

        # Get the short symbolic ref or the short SHA for the latest commit.
        branchName="$(git symbolic-ref --quiet --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null || echo '(unknown)')"

        [ -n "${git_status}" ] && git_status=" [${git_status}]"

        printf "%b on %b%s%s" "${white}" "${blue}" "${branchName}" "${git_status}"
    else
        return
    fi
}

# --- Fish-style Prompt ---
PROMPT='%F{cyan}%n@%m%f %F{greeen}%~%f $(prompt_git)
❯' 

# --- Auto suggestions (if installed) ---
if [[ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# --- Syntax highlighting (if installed) ---
if [[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# --- Completion System ---
autoload -Uz compinit && compinit

# --- PATH Setup ---
export PATH="$HOME/bin:/usr/local/bin:$PATH"
