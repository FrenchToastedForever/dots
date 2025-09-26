
# Bmbay Dotfiles Unstable (Untested configs will be merged with master once tested)

A super W.I.P hyprland and currently waybar configuration (hoping to expand to the hyprland ecosystem and quickshell)



## Info
- Refer to .config/hyprland/global.conf for default apps opened by keybinds
- All configuration for hyprland is stored in .config/hypr/hyprland
- Deps W.I.P -> See install script
## Install

Theres really no reason to be doing fancy installations for this simple config so simply move the files in .config/ to your config directory!

## Dependencies
See globals.conf to change defaults but by default these packages are used optionally:
```bash
#Arch install optional deps
#In progress does not cover all deps atm
yay -S --needed --noconfirm hypr waybar adw-gtk-theme sddm polkit easyeffects ghostty dolphin wofi firefox visual-studio-code-bin starship blueman nm-connection-editor
#nm will be changed to kde settings in the future
```

## Acknowledgements

 - [Current Waybar config (planning on updating to my own later on or just straight to QS we will see)](https://github.com/Prateek7071/dotfiles)
 - [Presets for easyeffects](https://github.com/JackHack96/EasyEffects-Presets/)

