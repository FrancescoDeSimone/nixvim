{ pkgs, ... }: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [ git-conflict-nvim ];
    extraConfigLua = ''
      require('git-conflict').setup()
    '';
  };
}
