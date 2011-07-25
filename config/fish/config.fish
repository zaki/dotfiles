# aliases
## general
alias c clear
alias ls 'ls -laG'
alias lg 'less +G'

## git
alias g git
alias gg 'gitx -c'
alias gk 'gitx --all'
alias gp 'git pull'
alias gpr 'git pull --rebase'
alias gb 'git branch -a'
alias gru 'git remote update'
alias grm 'git rebase origin/master'

## rails
alias b bundle
alias r rails
alias rc 'rails console'
alias rs 'rails server'
alias rg 'rails generate'
alias rk rake
alias s 'rake spec'
alias v 'mvim .'
alias o open


# prompt
#set fish_git_dirty_color red
#function parse_git_dirty
#   git diff --quiet HEAD ^&-
#   if test $status = 1
#      echo (set_color red)"●"(set_color normal)
#   end
#end
#
#function parse_git_branch
#   # git branch outputs lines, the current branch is prefixed with a *
#   set -l branch (git branch ^&- | awk '/\*/ {print $2}')
#   echo $branch(parse_git_dirty)
#end
#
#function fish_prompt
#   if test -z (git branch --quiet 2>| awk '/fatal:/ {print "no git"}')
#      printf '%s@%s %s%s%s (%s) $ ' (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) (parse_git_branch)
#   else
#      printf '%s@%s %s%s%s $ '  (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
#   end
#end
