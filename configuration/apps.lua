local filesystem = require('gears.filesystem')

-- Thanks to jo148 on github for making rofi dpi aware!
local with_dpi = require('beautiful').xresources.apply_dpi
local get_dpi = require('beautiful').xresources.get_dpi

return {
  -- List of apps to start by default on some actions
  default = {
    terminal = 'kitty',
    lock = 'i3lock-fancy',
    quake = 'kitty',
    screenshot = 'flameshot full -p ~/Pictures',
    region_screenshot = 'flameshot gui -p ~/Pictures',
    delayed_screenshot = 'flameshot full -p ~/Pictures -d 5000',
    browser = 'firefox',
    editor = 'subl', -- gui text editor
    social = 'discord',
    game = rofi_command,
    files = 'thunar',
    music = rofi_command 
  },
  -- List of apps to start once on start-up
  run_on_start_up = {
    '/usr/bin/ibus-daemon -d',
    'blueman-applet',
    'nm-applet --indicator', -- wifi
    'numlockx on', -- enable numlock
    '/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)', -- credential manager
    'xfce4-power-manager', -- Power manager
    'flameshot',
    --'viber',
    'dropbox',
    'discord',
    'slack',
    'syncthing-gtk'
    -- Add applications that need to be killed between reloads
    -- to avoid multipled instances, inside the awspawn script
    -- '~/.config/awesome/configuration/awspawn' -- Spawn "dirty" apps that can linger between sessions
  }
}
