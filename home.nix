{ config, pkgs, ... }:

let 
  s = import ./services {};
  p = import ./programs {};
  x = import ./x {};
  nixpkgs_unstable = import /nix/var/nix/profiles/per-user/root/channels/nixos-unstable {};
in
{
  home.stateVersion = "20.03";
  home.packages = with pkgs; [

    vim                  maim
    unzip                wget
    curl                 neovim
    tmux                 cmus
    weechat              tree
    rofi                 rxvt-unicode
    firefox              chromium
    neomutt              nix-direnv
    xclip                mpv
    ripgrep              nodePackages.bash-language-server
    ccls                 nixpkgs_unstable.gitAndTools.delta
    miniserve            niv
    rnix-lsp             nodejs
    pfetch               w3m
    nixpkgs_unstable.st  noto-fonts-emoji
    arandr

  ];

  programs = {
    inherit (p) feh zathura fzf git bash htop;
    home-manager.enable = true;
    direnv = {
      enable = true;
      enableBashIntegration = true;
    };
  };

  services = {
    inherit (s) dunst redshift sxhkd picom;
    lorri.enable = true;
  };

  xdg = {
    userDirs = {
      enable = true;
      desktop = "\$HOME/desktop";
      documents="\$HOME/docs";
      download="\$HOME/dloads";
      music="\$HOME/music";
      pictures="\$HOME/pics";
      videos="\$HOME/vids";
    };
  };

  home.file.".xinitrc".text = ''
    #!/bin/sh

    xsetroot -cursor_name left_ptr &
    $HOME/.fehbg
    xrdb -load $HOME/.Xresources
    picom &
    sxhkd &
    urxvtd &
    exec 2bwm
    '';

  xresources = {
    inherit (x) properties;
  };
}
