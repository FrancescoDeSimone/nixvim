{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      go-nvim
    ];
    extraConfigLua = ''
      require('go').setup()
    '';
  };
}
