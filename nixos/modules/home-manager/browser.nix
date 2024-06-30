{ config, pkgs, inputs, ... }:

{
  programs.firefox = {
    enable = true;
    profiles.nathan = {
      settings = {
        "browser.search.defaultenginename" = "Kagi";
        "browser.search.order.1" = "Kagi";
      };

      search = {
        force = true;
        default = "Kagi";
        order = [ "Kagi" ];
        privateDefault = "Kagi";
        engines = {
          "Kagi" = {
            urls = [{
              template = "https://kagi.com/search";
              params = [{
                name = "q";
                value = "{searchTerms}";
              }];
            }];
            definedAliases = [ "@k" ];
          };
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
