function cd --description "Change working directory"
  builtin cd "$argv"
  set -l cwd $PWD
  while true
    if test -f "$cwd/.rvmrc"
      . "$cwd/.rvmrc"
      break
    else
      set cwd (dirname "$cwd")
      if contains "$cwd" "$HOME" "/" "~" ""
        rvm default 1>/dev/null 2>&1
        break
      end
    end
  end

  set -e cwd
end
