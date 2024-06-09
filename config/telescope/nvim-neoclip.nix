{ pkgs, ... }:
{
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      nvim-neoclip-lua
    ];
    extraConfigLua = ''
      require('neoclip').setup()
      require('telescope').load_extension('neoclip')
    '';
  };
}
