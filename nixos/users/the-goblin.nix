{
  lib,
  config,
  pkgs,
  ...
}:

{
  users.users.the-goblin = {
    shell = pkgs.zsh;
    isNormalUser = true;
    description = "Mats de Beer";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = with pkgs; [
      # day-to-day
      headsetcontrol

      # Workflow
      zsh
      tmux
      gh
      fzf
      lazygit
      gimp
      qutebrowser
      librewolf
      ripgrep
      yq
      yazi
      bear

      # programming tooling
      # # general
      # # haskell
      ghc
      cabal-install
      cabal2nix
      haskellPackages.hoogle
      haskell-language-server
      # # C/C++
      gcc
      clang
      gdb
      gnumake
      cmake
      clang-tools
      # # nix
      nil
      # # lua
      lua-language-server
      stylua

      # messaging
      discord
      slack

      # leisure
      prismlauncher
      rare
      ani-cli
      cockatrice
      spotify-player
      obs-studio
    ];
  };
}
