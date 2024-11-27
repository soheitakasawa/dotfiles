if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g theme_display_date yes
    set -g theme_date_format "+%F %H:%M"
    set -g theme_display_git_default_branch yes
    set -g theme_color_scheme dracula
    
    # Path
    set PATH /opt/homebrew/bin $PATH

    #Peco setting
    set fish_plugins theme peco

    function fish_user_key_bindings
	bind \cw peco_select_history
    end
end
