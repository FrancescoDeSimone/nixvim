{ pkgs, ... }:
{
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      nvim-spectre
    ];
  };
}
