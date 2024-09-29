{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      nui-nvim
      (pkgs.callPackage ../../repo/aerial.nix {})
    ];
    extraConfigLua = ''
      require('aerial').setup()
    '';
  };
}
