{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      (pkgs.callPackage ../../repo/aerial.nix {})
    ];
    extraConfigLua = ''
      require('aerial').setup()
    '';
  };
}
