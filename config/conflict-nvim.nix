{ pkgs, ... }: {
  config = { extraPlugins = with pkgs.vimPlugins; [ git-conflict-nvim ]; };
}
