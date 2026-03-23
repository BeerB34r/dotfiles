{
	description = "Nixos config flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
	};

	outputs = { self, nixpkgs, ... }@inputs: {
		nixosConfigurations = {
			jason = nixpkgs.lib.nixosSystem {
				specialArgs = {inherit inputs;};
				modules = [
					./configuration.nix
					./hosts/jason/hardware-configuration.nix # hardware scan
					({pkgs, ...}: { networking.hostName = "jason"; })
				];
			};
			golden_fleece = nixpkgs.lib.nixosSystem {
				specialArgs = {inherit inputs;};
				modules = [
					./configuration.nix
					./hosts/golden_fleece/hardware-configuration.nix # hardware scan
					({pkgs, ...}: { networking.hostName = "golden_fleece"; })
				];
			};
			scrying-orb = nixpkgs.lib.nixosSystem {
				specialArgs = {inherit inputs;};
				modules = [
					./configuration.nix
					./hosts/scrying-orb/hardware-configuration.nix

					({pkgs, ...}: { networking.hostName = "scrying-orb";})
				];
			};
		};
	};
}
