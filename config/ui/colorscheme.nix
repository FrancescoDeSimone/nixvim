{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [gruber-darker-nvim];
    extraConfigLua = ''
      vim.cmd('colorscheme gruber-darker')
    '';
  };
}
