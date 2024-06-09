{ pkgs, ... }: {
  config = {
    extraPlugins = with pkgs.vimPlugins;
      [ (pkgs.callPackage ../../repo/codeium.nix { }) ];
  };
}
