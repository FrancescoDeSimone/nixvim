{
  config,
  lib,
  ...
}: {
  plugins = {
    neogit.enable = true;
  };
  keymaps = lib.mkMerge [
    (lib.mkIf config.plugins.neogit.enable [
      {
        mode = "n";
        key = "<leader>gn";
        action = "<cmd>Neogit<CR>";
        options = {
          desc = "Open Neogit";
          silent = true;
        };
      }
    ])
    (lib.mkIf config.plugins.snacks.enable [
      {
        mode = "n";
        key = "<leader>gl";
        action = ":lua Snacks.gitbrowse.open()<CR>";
        options = {
          desc = "Open in the browser";
          silent = true;
        };
      }
    ])
  ];
}
