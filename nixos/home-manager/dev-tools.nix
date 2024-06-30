{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Nathan Wilson";
    userEmail = "github.wound@nordac.simplelogin.com";
    extraConfig = { core = { editor = "hx"; }; };
  };
  programs.nushell = {
    enable = true;
    extraConfig = ''
      $env.config = {
          show_banner: false,
      }
      use ~/.cache/starship/init.nu
      source ~/.cache/atuin/init.nu
    '';
  };
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[➜](bold red)";
      };
    };
  };
  programs.atuin = {
    enable = true;
    enableNushellIntegration = true;
  };
  programs.zellij = { enable = true; };
  programs.alacritty = {
    enable = true;
    settings = {
      shell = {
        program = "zellij";
        args =
          [ "attach" "--create" "general" "options" "--default-shell" "nu" ];
      };
      window.startup_mode = "Maximized";
    };
  };

  programs.helix = {
    enable = true;
    settings = {
      theme = "dark_plus";

      editor = {
        line-number = "relative";
        mouse = false;

        file-picker.hidden = false;

        cursor-shape = {
          insert = "bar";
          normal = "bar";
        };
      };
    };

    languages.language = [
      {
        name = "typescript";
        language-servers = [ "typescript-language-server" "eslint" ];
        formatter = {
          command = "prettier";
          args = [ "--parser" "typescript" ];
        };
        auto-format = true;
      }
      {
        name = "nix";
        auto-format = true;
        formatter.command = "${pkgs.nixfmt}/bin/nixfmt";
        #     },{

      }
    ];
  };
}
