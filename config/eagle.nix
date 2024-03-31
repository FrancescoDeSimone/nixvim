{ pkgs, ... }: {
  config = {
    extraPlugins = with pkgs.vimPlugins;
      [
        (pkgs.callPackage ../repo/eagle.nix { })

      ];
    extraConfigLua = ''
      require('leetcode').setup()
    '';
  };
}
