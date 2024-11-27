defaults write com.apple.dock persistent-apps -array     # 標準アプリをDockから消す
defaults write com.apple.dock autohide -bool true        # Dockを隠す
defaults write com.apple.dock mineffect -string "scale"  # DOCKのアニメーションをscaleにする
defaults write com.apple.dock magnification -bool false  # Dockの拡大表示を無効化
defaults write com.apple.dock orientation -string bottom # Dockの表示位置
defaults write com.apple.dock tilesize -int 38           # Dockのアイコンサイズ
defaults write com.apple.dock autohide-delay -float 0    # Dockの表示時間を最速に変更
defaults write com.apple.dock show-process-indicators -bool true # 起動中のアプリにindicatorを表示

defaults write NSGlobalDomain AppleInterfaceStyle Dark # Dark Mode

defaults write com.apple.menuextra.clock ShowSeconds -bool true # 時計を秒表示する
defaults write com.apple.menuextra.clock DateFormat -string 'EEE MMM d H:mm:ss'
