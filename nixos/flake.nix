{
	description = "Nixos config flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
	}

	outputs = { self, nixpkgs, ... }@inputs: {
		nixosConfigurations.jason = nixpkgs.lib.nixosSystem {
			specialArgs = {inherit inputs;};
			modules = [
				./configuration.nix
			];
		};
	};
}
