#{
#  description = "Neovim nix configuration";
#  inputs = {
#    nixpkgs.url = "github:NixOS/nixpkgs";
#    neovim = {
#      url = "github:neovim/neovim?dir=contrib";
#      inputs.nixpkgs.follows = "nixpkgs";
#    };
#  };
#  outputs = { self, nixpkgs, neovim }:
#let
#overlayNeovim = prev: final: {
#  neovim = {
#
#  };
#  pkgs = final;
#};
#      overlayFlakeInputs = prev: final: {
#        neovim = neovim.packages.x86_64-linux.neovim;
#      };
#pkgs = import nixpkgs {
#  system = "x86_64-linux";
#  overlays = [ overlayFlakeInputs overlayNeovim ];
#};
#in
#{
#  packages.x86_64-linux.default = neovim.packages.x86_64-linux.neovim;
#    apps.x86_64-linux.default = {
#      type = "app";
#      program = "${neovim.packages.x86_64-linux.neovim}/bin/nvim";
#    };
#  };
#}

{
  description = "A nixvim configuration";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    nixpkgs,
    nixvim,
    flake-utils,
    ...
  } @ inputs: let
    config = import ./config; # import the module directly
  in
    flake-utils.lib.eachDefaultSystem (system: let
      nixvimLib = nixvim.lib.${system};
      pkgs = import nixpkgs {inherit system;};
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
