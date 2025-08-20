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

			# messaging
			discord
			slack

			# leisure
			prismlauncher
			legendary-heroic
			ani-cli
			cockatrice
			spotify-player
		];
	};
}
