{
  config,
  lib,
  ...
}: {
  plugins = {
    neogit.enable = true;
  };
  keymaps = lib.mkIf config.plugins.neogit.enable [
    {
      mode = "n";
      key = "<leader>gn";
      action = "<cmd>Neogit<CR>";
    }
  ];
}
