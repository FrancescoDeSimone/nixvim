{ pkgs, ... }:
{
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      refactoring-nvim
    ];
    extraConfigLua = ''
      require("refactoring").setup()
    '';
  };
}
