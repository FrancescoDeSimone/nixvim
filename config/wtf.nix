{ pkgs, ... }:
{
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      wtf-nvim
    ];
  };
}

