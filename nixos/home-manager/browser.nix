{ config, pkgs, inputs, ... }:

{

  programs.firefox = {
    enable = true;
    profiles.nathan = {
      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
        proton-pass
        privacy-badger
        ublock-origin
      ];
    };
  };
}
