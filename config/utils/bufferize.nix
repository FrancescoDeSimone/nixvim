{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      nui-nvim
      (pkgs.callPackage ../../repo/bufferize.nix {})
    ];
    extraConfigLua = ''
      require('bufferize').setup()
    '';
  };
}
