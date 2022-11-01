# NixOS Configuration

```
{ config, pkgs, ... };
{
  system.stateVersion = "22.05";
}
```

```
# Right click touchpad fix Gnome.
services.xserver.desktopManager.gnome.extraGSettingsOverrides = ''
  [org.gnome.desktop.peripherals.touchpad]
  click-method='default'
'';
```
