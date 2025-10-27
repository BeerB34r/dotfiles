{ config, pkgs, ... }:

{
	imports = 
	[
		./the-goblin.nix
		./garnaal2000.nix
	];

# Bootloader
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;
	
# Various system configurations
	networking.networkmanager.enable = true;
	time.timeZone = "Europe/Amsterdam";
	i18n.defaultLocale = "en_US.UTF-8";
	i18n.extraLocaleSettings = {
		LC_ADDRESS = "nl_NL.UTF-8";
		LC_IDENTIFICATION = "nl_NL.UTF-8";
		LC_MEASUREMENT = "nl_NL.UTF-8";
		LC_MONETARY = "nl_NL.UTF-8";
		LC_NAME = "nl_NL.UTF-8";
		LC_NUMERIC = "nl_NL.UTF-8";
		LC_PAPER = "nl_NL.UTF-8";
		LC_TELEPHONE = "nl_NL.UTF-8";
		LC_TIME = "nl_NL.UTF-8";
	};

# DE config
	services.displayManager.sddm.enable = true;
	services.desktopManager.plasma6.enable = true;
	services.xserver.xkb = {
		layout = "us";
		variant = "";
	};
	services.pulseaudio.enable = false;
	security.rtkit.enable = true;
	services.pipewire = {
		enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
	};
	hardware.bluetooth = {
		enable = true;
		powerOnBoot = true;
		settings = {
			General = {
				Experimental = true; # battery charge on bt devices
			};
		};
	};

# nix configs

	nixpkgs.config.allowUnfree = true;
	nix.settings.experimental-features = [
		"nix-command"
		"flakes"
	];
	system.stateVersion = "25.05";

# packages
	programs.steam.enable = true;
	programs.zsh.enable = true;
	environment.systemPackages = with pkgs; [
		# general stuff
		neovim
		git
		wget
		ghostty
		unzip
		python3
		wine
		vlc
		mpv
		paprefs
		pavucontrol
		tree
	];

# non-nix packages with runtime dependencies need this
	programs.nix-ld.enable = true;
	programs.nix-ld.libraries = with pkgs; [
	];
}
