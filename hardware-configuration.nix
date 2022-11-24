# Example hardware-configuration.nix
# Generated by ‘nixos-generate-config’.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "usb_storage ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/39b72cce-3627-4a09-9b7c-70e064b9f4cf";
      fsType = "ext4";
    };

  boot.initrd.luks.devices."luks-b78".device = "/dev/disk/by-uuid/b78";

  fileSystems."/boot/efi" =
    { device = "/dev/disk/by-uuid/1CF9-1235";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/a57"; }
    ];

  # Enables DHCP on ethernet and wireless interfaces.
  # Per-interface with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp3s0.useDHCP = lib.mkDefault true;

  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
  hardware.cpu.intel.updateMicrocode = 
    lib.mkDefault config.hardware.enableRedistributableFirmware;
}
