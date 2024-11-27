defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false # 自動大文字の無効化
defaults write com.apple.CrashReporter DialogType -string "none"           # クラッシュレポートの無効化

defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist BatteryShowPercentage -bool true # バッテリーを%表記
defaults write com.apple.terminal StringEncodings -array 4 # UTF-8のみを使用する

# Sound
sudo nvram StartupMute=%01
defaults write -g com.apple.sound.beep.feedback -bool true
defaults write -g com.apple.sound.beep.volume -int 0
defaults write -g com.apple.sound.uiaudio.enabled -bool false
