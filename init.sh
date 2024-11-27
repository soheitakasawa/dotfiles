#!/bin/bash

if [ "$(uname)" != "Darwin" ] ; then
    echo "Not macOS!"
    exit 1
fi

# bashに変更
chsh -s /bin/bash

# xcodeのインストール
if xcode-select -p &> /dev/null; then
    echo "Xcode Command Line Tools は既にインストールされています。"
else
    echo "Xcode Command Line Tools はインストールされていません。インストールを開始します。"
    xcode-select --install
fi

# rosettaのインストール
if /usr/bin/pgrep oahd > /dev/null; then
    echo "Rosetta 2 は既にインストールされています。"
else
    echo "Rosetta 2 がインストールされていません。インストールを開始します。"
    sudo /usr/sbin/softwareupdate --install-rosetta --agree-to-license
fi

# Homebrewのインストール
if command -v brew > /dev/null; then
    echo "Homebrew は既にインストールされています。"
else
    echo "Homebrew がインストールされていません。インストールを開始します。"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo >> /Users/stakasawa/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/stakasawa/.zprofile

    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
