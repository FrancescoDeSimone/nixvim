{
  config,
  lib,
  ...
}: {
  plugins.todo-comments = {
    enable = true;
    keymaps = {
      todoTelescope = lib.mkIf config.plugins.telescope.enable {
        key = "<leader>st";
        options.desc = "Todo (Telescope)";
      };
    };
  };
}
