{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      (pkgs.callPackage ../../repo/hlargs.nix {})
    ];
    extraConfigLua = ''
      require('hlargs').setup()
    '';
  };
}
