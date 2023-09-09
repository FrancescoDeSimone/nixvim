{ pkgs, ... }:
{
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      ssr-nvim
    ];
  };
}
