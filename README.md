1. install yadm
```bash
curl -fLo /usr/local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x /usr/local/bin/yadm
yadm clone https://github.com/thomas-lebeau/.dotfiles.git
```

2. import iterm keymap preferences
  - iterm2 > Profiles > Keys > Presets > Import... 
  - select file in `~/.config/item2/key-mappings.itermkeymap`

## edit dotfiles

for convenience, all dotfiles are stored in `~/.config/dotfiles` and symlinked to their respective location.
`~/.config/dotfiles` is a yadm repo, so you can open this folder in your favorite editor and edit the dotfiles directly.
