{ pkgs, fetchFromGitHub, ... }:
let
  mypkgs = pkgs.vimPlugins.overrideDerivation
    (oldAttrs: {
      src = fetchFromGitHub
        {
          owner = "francescoDeSimone";
          repo = "nixpkgs";
          rev = "7d33f229c4b6b5b8b2596699e9a2cd92316016b3";
          sha256 = "";
        };
    });
in
{
  config = {
    extraPlugins = with mypkgs.vimPlugins; [
      codeium-vim
    ];
  };
}
