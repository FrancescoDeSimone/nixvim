{
  description = "A nixvim configuration";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim/main";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
    nixneovimplugins.url = "github:NixNeovim/NixNeovimPlugins";
  };

  outputs = {
    nixpkgs,
    nixvim,
    flake-utils,
    nixneovimplugins,
    ...
  }: let
    config = import ./config; # import the module directly
  in
    flake-utils.lib.eachDefaultSystem (system: let
      nixvimLib = nixvim.lib.${system};
      pkgs = import nixpkgs {
        inherit system;
        overlays = [nixneovimplugins.overlays.default];
        config.allowUnfree = true;
      };
      nixvim' = nixvim.legacyPackages.${system};
      nvim = nixvim'.makeNixvimWithModule {
        inherit pkgs;
        module = config;
      };
    in {
      checks = {
        # Run `nix flake check .` to verify that your config is not broken
        default = nixvimLib.check.mkTestDerivationFromNvim {
          inherit nvim;
          name = "A nixvim configuration";
        };
      };
      packages = {
        # Lets you run `nix run .` to start nixvim
        default = nvim;
      };
    });
}
