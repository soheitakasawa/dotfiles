defaults write -g NSScrollAnimationEnabled -bool false # スムーズスクローリング無効
defaults write NSGlobalDomain com.apple.mouse.scaling -float "0.875" # センシを変更

# スクロール方向
defaults write .GlobalPreferences com.apple.swipescrolldirection -bool true
defaults write .GlobalPreferences com.apple.swipescrolldirection -bool true

# 副ボタンのクリックを有効化
defaults write .GlobalPreferences ContextMenuGesture -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadCornerSecondaryClick -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 0
