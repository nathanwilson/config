{ config, pkgs, inputs, ... }:

{

  programs.firefox = {
    enable = true;
    profiles.nathan = {
      search.engines = {
        kagi = {

        };
      };
      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
        kagi-search
        proton-pass
        privacy-badger
        ublock-origin
      ];
    };
  };
}
