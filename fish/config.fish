if status is-interactive
  # Commands to run in interactive sessions can go here
  set -g theme_display_date yes
  set -g theme_date_format "+%F %H:%M"
  set -g theme_display_git_default_branch yes
  set -g theme_color_scheme dracula
    
  # Path
  set PATH /opt/homebrew/bin $PATH
  set PATH $HOME/.nodebrew/current/bin $PATH

  #Peco setting
  set fish_plugins theme peco

  #Docker
  set -x DOCKER_DEFAULT_PLATFORM linux/amd64

  function fish_user_key_bindings
    bind \cw peco_select_history
  end
end
