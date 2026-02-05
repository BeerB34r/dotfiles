{ lib, config, pkgs, ... }:

{
	users.users.the-goblin = {
		shell = pkgs.zsh;
		isNormalUser = true;
		description = "Mats de Beer";
		extraGroups = [ "networkmanager" "wheel" ];
		packages = with pkgs; [
			# day-to-day
			headsetcontrol

			# Workflow
			zsh
			tmux
			gh
			fzf
			lazygit
			norminette
			gimp
			qutebrowser
			ripgrep
			yazi

			# programming tooling
			nil # nix_ls
			haskell-language-server
			clang-tools # properly wrapped clangd
			lua-language-server
			haskellPackages.ghc
			haskellPackages.cabal-install
			haskellPackages.cabal2nix
			haskellPackages.hoogle
			gcc
			clang
			gdb
			gnumake
			cmake

			# messaging
			discord
			slack

			# leisure
			prismlauncher
			rare
			ani-cli
			cockatrice
			spotify-player
			lutris
		];
	};
}
