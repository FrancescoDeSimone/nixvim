{
  config,
  lib,
  ...
}: {
  plugins = {
    git-conflict = {
      enable = true;

      settings = {
        disable_diagnostics = true;
        default_mappings = {
          ours = "co";
          theirs = "ct";
          none = "c0";
          both = "cb";
          next = "]x";
          prev = "[x";
        };
      };
    };

    which-key.settings.spec = lib.optionals config.plugins.git-conflict.enable [
      {
        __unkeyed = "<leader>gc";
        group = "Conflicts";
        icon = "";
      }
    ];
  };
}
