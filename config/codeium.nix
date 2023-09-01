{ pkgs, ...}:
{
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      codeium-vim
    ];
  };
}
