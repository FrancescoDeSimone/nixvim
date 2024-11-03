{
  config,
  lib,
  ...
}: {
  plugins = {
    fugitive.enable = true;
  };
  keymaps = lib.mkIf config.plugins.fugitive.enable [
    {
      mode = "n";
      key = "<leader>gf";
      action = ":Git<CR>";
      options = {
        desc = "Open fugitive";
        silent = true;
      };
    }
  ];
}
