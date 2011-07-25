function parse_git_branch
  # make sure the directory is a git repo
  if not is-git
    return
  end

  echo -n '('
  set -l branch (env git symbolic-ref -q HEAD)
  if test ! -z "$branch"
    echo -n $branch | sed -e 's/refs\/heads\///'
  else
    git name-rev --name-only HEAD ^/dev/null
  end
  if has-git-changes
    set_color red
    echo -n '●'
    set_color yellow
  else
  end
  echo -n ')'
end
