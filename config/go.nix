{ pkgs, ...}:
{
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      go-nvim
    ];
  };
}
