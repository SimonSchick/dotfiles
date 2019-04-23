# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all'
alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch --delete '
alias gc='git commit'
alias gcl='git clone'
alias gcm='git commit --message'
alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gp='git push'
alias gl='git pull'
alias gst='git status'
alias glr='git pull --rebase'
alias grb='git rebase'
alias grbc='git rebase --continue'
alias gs='git status'
alias gss='git status --short'
alias grs='git reset'
alias gcmsg='git commit --message'
alias gca='git commit --amend --no-edit'
alias gcp='git cherry-pick'
alias gcph='git push origin head'
alias gpfff='git push --force'
alias gcapf='git commit --amend --no-edit && git push -f'

__git_complete gco _git_checkout
__git_complete gp _git_push
__git_complete gd _git_diff
__git_complete grs _git_reset
__git_complete ga _git_add
__git_complete gc _git_commit
__git_complete gcp _git_cherry_pick

# make bash autocomplete with up arrow 
# add to your ~/.profile
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

alias la='ls -la'
alias .....='cd .....'
alias ....='cd ....'
alias ...='cd ...'
alias ..='cd ..'

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
