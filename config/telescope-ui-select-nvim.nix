{ pkgs, ... }:
{
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      telescope-ui-select-nvim
    ];

    extraConfigLua = ''
      require('telescope').load_extension('ui-select')
    '';
  };
}
