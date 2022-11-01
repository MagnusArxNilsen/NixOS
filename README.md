# NixOS Configs

```
# Right click touchpad fix Gnome.
services.xserver.desktopManager.gnome.extraGSettingsOverrides = ''
  [org.gnome.desktop.peripherals.touchpad]
  click-method='default'
'';
```


```
# Enable video drivers support.
services.xserver.videoDrivers = [
  "amdgpu"
  "intel"
  #"nvidia"
];
```
