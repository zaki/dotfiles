function fish_prompt --description "Write out the prompt"
  printf '%s%s %s%s%s%s%s $' (set_color green) (prompt_pwd) (set_color yellow) (parse_git_branch) (set_color green)
  set_color normal
  printf ' '
end
