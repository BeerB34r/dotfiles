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
			gimp
			qutebrowser
			ripgrep
			yq
			yazi

			# programming tooling
			# # haskell
			ghc
			cabal-install
			cabal2nix
			hoogle
			# # C/C++
			gcc
			clang
			gdb
			gnumake
			cmake
			# # lsp
			nil # nix_ls
			haskell-language-server
			clang-tools # properly wrapped clangd
			lua-language-server

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
			obs-studio
		];
	};
}
