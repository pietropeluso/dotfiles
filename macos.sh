########## DOCK settings ##########
# Position
defaults write com.apple.dock "orientation" -string "left" && killall Dock #left|bottom|right
# Autohide, animation and delay
defaults write com.apple.dock "autohide" -bool "true" && killall Dock
defaults write com.apple.dock "autohide-time-modifier" -float "0" && killall Dock
defaults write com.apple.dock "autohide-delay" -float "0" && killall Dock
# Do not display Recent apps
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock
# Scale effect (instead of Genie)
defaults write com.apple.dock "mineffect" -string "scale" && killall Dock
# Set size to 36 (default is 48)
defaults write com.apple.dock "tilesize" -int "36" && killall Dock
# Disable Magnification
defaults write com.apple.dock magnification -bool false


########## SCREENSHOTS ##########
# Setting default location
mkdir -p ~/Documents/Screenshots
defaults write com.apple.screencapture location ~/Documents/Screenshots
# Add date
defaults write com.apple.screencapture "include-date" -bool "true"
# Do not display thumbnail
defaults write com.apple.screencapture "show-thumbnail" -bool "false"
# Set format to Jpg
defaults write com.apple.screencapture "type" -string "jpg"


########## FINDER ##########
# Show Path bar
defaults write com.apple.finder "ShowPathbar" -bool "true" && killall Finder
# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true
# Default view style (List)
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" && killall Finder
# Keep folders on top
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true" && killall Finder
# Default search scope (only current folder)
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf" && killall Finder
# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true
# Show the ~/Library folder
chflags nohidden ~/Library
# Hide hidden files
defaults write com.apple.Finder AppleShowAllFiles NO
# Show file extension
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# disable animation when opening the Info window in Finder
defaults write com.apple.Finder DisableAllAnimations -bool true
# Hide internal hard drives on desktop
defaults write com.apple.Finder ShowHardDrivesOnDesktop -bool false
# Hide external hard drives on desktop
defaults write com.apple.Finder ShowExternalHardDrivesOnDesktop -bool false
# Hide removable media on desktop
defaults write com.apple.Finder ShowRemovableMediaOnDesktop -bool false
# Disable the warning before emptying the Trash
defaults write com.apple.Finder WarnOnEmptyTrash -bool false
# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
# Disable the 'Are you sure you want to open this application?' dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false
# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false


########## TRACKPAD ##########
# Enable dragging with three fingers
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool "true"
# Click weight
defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "1"


########## HOT CORNERS ##########
# Top left → Desktop
defaults write com.apple.dock wvous-tl-corner -int 4
defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right → Mission Control
defaults write com.apple.dock wvous-tr-corner -int 2
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom left → Desktop
defaults write com.apple.dock wvous-bl-corner -int 3
defaults write com.apple.dock wvous-bl-modifier -int 0
# Bottom right → Sleep
defaults write com.apple.dock wvous-br-corner -int 10
defaults write com.apple.dock wvous-br-modifier -int 0


########## MENU BAR ##########
# Show remaining battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
# Sound: always show in menu bar
defaults -currentHost write com.apple.controlcenter Sound -int 18


########## SAFARI ##########
# Disable Safari’s thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2
# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
# Show full website URL
defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool "true" && killall Safari


# Disable auto-correct
# defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Disable send and reply animations in Mail.app
# defaults write com.apple.Mail DisableReplyAnimations -bool true
# defaults write com.apple.Mail DisableSendAnimations -bool true

# Don’t open Photos when plugging in an iPhone
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES

# Git, use nano as editor
git config --global core.editor `which nano`

# Kill all affected apps
for app in "cfprefsd" "Dock" "Finder" "Mail" "Safari" "SystemUIServer"; do
	killall "${app}" > /dev/null 2>&1
done
