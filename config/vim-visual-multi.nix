{ pkgs, ... }:
{
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      vim-visual-multi
    ];
  };
}
