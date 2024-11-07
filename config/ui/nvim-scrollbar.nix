{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [nvim-scrollbar];
    extraConfigLua = ''
      require("scrollbar").setup()
    '';
  };
}
