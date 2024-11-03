{
  config,
  lib,
  ...
}: {
  plugins = {
    gitignore = {
      enable = true;
    };
  };
  keymaps = lib.mkIf config.plugins.gitignore.enable [
    {
      mode = "n";
      key = "<leader>gi";
      action.__raw = ''require('gitignore').generate'';
      options = {
        desc = "Gitignore generate";
        silent = true;
      };
    }
  ];
}
