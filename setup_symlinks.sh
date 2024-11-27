#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"

# シンボリックリンクを作成する関数
create_symlink() {
    local source="$1"
    local target="$2"
    
    # ターゲットディレクトリが存在しない場合は作成
    mkdir -p "$(dirname "$target")"
    
    # ターゲットが存在し、通常のファイルまたはディレクトリの場合は削除
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo "既存のファイル/ディレクトリを削除します: $target"
        rm -rf "$target"
    fi
    
    # シンボリックリンクを作成
    if ln -sfn "$source" "$target"; then
        echo "シンボリックリンクを作成しました: $source -> $target"
    else
        echo "シンボリックリンクの作成に失敗しました: $source -> $target" >&2
    fi
}

echo "シンボリックリンクを作成しています..."

# dotfilesディレクトリ内の隠しファイルに対してループ
for file in "$DOTFILES_DIR"/dots/.*; do
    # .と..を除外
    if [[ "$(basename "$file")" == "." || "$(basename "$file")" == ".." ]]; then
        continue
    fi
    
    # ホームディレクトリ直下に作成するパスを計算
    link_name="$HOME/$(basename "$file")"
    # シンボリックリンクを作成
    create_symlink "$file" "$link_name"
done

# fishディレクトリ用のリンク作成
create_symlink "$DOTFILES_DIR/fish/config.fish" "$HOME/.config/fish/config.fish"
create_symlink "$DOTFILES_DIR/fish/fish_plugins" "$HOME/.config/fish/fish_plugins"

echo "ホームディレクトリにシンボリックリンクが作成されました。"
