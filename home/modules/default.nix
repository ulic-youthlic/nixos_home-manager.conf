{
  inputs,
  lib,
  ...
}:
{
  imports =
    (with inputs; [
      sops-nix.homeManagerModules.sops
    ])
    ++ [
      ./nix.nix
      ./helix
      ./chromium.nix
      ./gpg
      ./git.nix
      ./shell
      ./ghostty.nix
      ./foot
      ./starship
      ./sops.nix
      ./fuzzel.nix
      ./firefox.nix
      ./niri.nix
      ./wluma.nix
      ./waybar.nix
      ./mpv.nix
      ./kvm.nix
      ./atuin.nix
      ./swaync.nix
      ./swaylock.nix
      ./thunderbird.nix
      ./obs.nix
    ];

  options = {
    youthlic.nixos.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      example = true;
      description = ''
        whether the os is nixos
      '';
    };
  };
  config = {
    programs.direnv = {
      enable = true;
      nix-direnv.enable = true;
    };
  };
}
