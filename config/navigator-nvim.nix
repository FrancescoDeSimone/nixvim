{ pkgs, ... }:
{
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      Navigator-nvim
    ];
  };
}
