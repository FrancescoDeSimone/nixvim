{
  config,
  lib,
  ...
}: {
  plugins.todo-comments = {
    enable = true;

    keymaps = {
      todoTrouble.key = lib.mkIf config.plugins.trouble.enable "<leader>xq";
      todoTelescope = lib.mkIf config.plugins.telescope.enable {
        key = "<leader>tf";
        keywords = [
          "TODO"
          "FIX"
          "FIX"
        ];
      };
    };
  };
}
