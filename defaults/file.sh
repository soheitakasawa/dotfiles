chflags nohidden ~/Library     # Libraryフォルダを可視化
sudo chflags nohidden /Volumes # volumeフォルダを可視化

defaults write com.apple.finder DisableAllAnimations -bool true            # アニメーションを無効化する
defaults write com.apple.finder AppleShowAllFiles -bool true               # デフォルトで隠しファイルを表示する
defaults write NSGlobalDomain AppleShowAllExtensions -bool true            # 全ての拡張子のファイルを表示
defaults write com.apple.finder ShowStatusBar -bool true                   # ステータスバーを表示
defaults write com.apple.finder ShowPathbar -bool true                     # パスバーを表示
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"        # 名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"        # 検索時にデフォルトでカレントディレクトリを検索
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false # 拡張子変更時の警告を無効化
defaults write NSGlobalDomain com.apple.springing.enabled -bool true       # ディレクトリのスプリングロードを有効化
defaults write NSGlobalDomain com.apple.springing.delay -float 0           # スプリングロード遅延を除去

# USBやネットワークストレージに.DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# ディスク検証を無効化
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# ボリュームマウント時に自動的にFinderを表示
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# ゴミ箱を空にする前の警告の無効化
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# スクリーンショット関連
defaults write com.apple.screencapture name "screenshot"
defaults write com.apple.screencapture disable-shadow -bool true
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture location -string "~/Pictures/screenshot"
