{
	description = "Nixos config flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
	};

	outputs = { self, nixpkgs, ... }@inputs: {
		nixosConfigurations.jason = nixpkgs.lib.nixosSystem {
			specialArgs = {inherit inputs;};
			modules = [
				./configuration.nix
				./jason/hardware-configuration.nix # hardware scan
				({pkgs, ...}: {
					networking.hostName = "jason";
				})
			];
		};
		nixosConfigurations.golden_fleece = nixpkgs.lib.nixosSystem {
			specialArgs = {inherit inputs;};
			modules = [
				./configuration.nix
				./golden_fleece/hardware-configuration.nix # hardware scan
				({pkgs, ...}: {
					networking.hostName = "golden_fleece";
				})
			];
		};
	};
}
