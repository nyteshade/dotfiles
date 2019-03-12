# dotfiles

Config Files and Mac Setup

## Mac Preferences

### General

- Enable Dark Mode

### Dock

- Prefer tabs when opening documents: Always
- Show recent applications in Dock: False

### Mission Control

- Automatically rearrange Spaces based on most recent use: False

### Notifications

- Notification Center sort order: Recents by App

### Displays

- Night Shift: Sunset to Sunrise

### Keyboard

- Keyboard
  - Keyboard Backlight
- Modifier Keys
  - Caps Lock Key: Escape
- Shortcuts
  - iTerm.app
    - Toggle Full Screen: ⌃⌘F
  - Finder.app
    - Get Info: ⌥⌘I
    - Show Inspector: ⌘I

### Trackpad

- Point & Click
  - Look up & data detectors: Tap with three fingers
  - Secondary click: Click or tap with two fingers
  - Tap to click: Tap with one finger
  - Tracking speed (1...10): 6
- More Gestures
  - Swipe between pages: Swipe with three fingers
  - Swipe between full-screen apps: Swipe left or right with four fingers
  - Notification Center: True
  - Mission Control: Swipe up with four fingers

### Sound

- Play sound effects through: Selected sound output device
- Play feedback when volume is changed: True

### iCloud

- Sign In
- Find my Mac (remove old machines)

### Bluetooth

- Show Bluetooth in menu bar

### TouchID

- Setup

### Date & Time

- Date options: Show date

### Accessibility

- Spring-loading delay: Short

## Finder

- Don't show items on desktop
- New finder windows show Home folder
- Open folders in tabs instead of new windows
- Sidebar settings
- Show all filename extensions

## Messages

- Enable Messages in iCloud

## Git

Run the following commands (replace your email)

```sh
ssh-keygen -t rsa -C "me@example.com"
cat ~/.ssh/id_rsa.pub
```

Paste the result into [GitHub SSH Keys](https://github.com/settings/keys) and confirm it's working:

```sh
ssh -T git@github.com
```

## Installation of `.dotfiles`

Clone this repo into your home directory:

```sh
cd ~
git clone git@github.com:codytwinton/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

chmod +x run
./run install

chmod +x run_tests
./run_tests
```

## Acknowledgement

- [github.com/mscoutermarsh/dotfiles](https://github.com/mscoutermarsh/dotfiles)
- [github.com/lra/mackup](https://github.com/lra/mackup)
- [gorails.com/setup/osx/10.14-mojave](https://gorails.com/setup/osx/10.14-mojave)
