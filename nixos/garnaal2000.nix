{ lib, config, pkgs, ... }:

{
	users.users.garnaal2000 = {
		shell = pkgs.zsh;
		isNormalUser = true;
		description = "Bente de Koning";
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
			firefox

			# programming tooling
			nil # nix_ls
			clang-tools # properly wrapped clangd
			lua-language-server
			gcc
			clang
			gdb
			gnumake
			cmake

			# messaging
			discord
			slack

			# leisure
			spotify-player
		];
	};
}
