{
  lib,
  helpers,
  config,
  ...
}: {
  plugins.oil = {
    enable = true;
    settings = {
      columns = [
        "type"
        {
          __unkeyed = "icon";
          default_file = "bar";
          directory = "dir";
          highlight = "Foo";
        }
        "size"
        "permissions"
      ];
      experimental_watch_for_changes = true;
      keymaps = {
        "<C-c>" = false;
        "<C-l>" = false;
        "<C-r>" = "actions.refresh";
        "<leader>qq" = "actions.close";
        "y." = "actions.copy_entry_path";
      };
      skip_confirm_for_simple_edits = true;
      view_options = {
        show_hidden = false;
      };
      win_options = {
        winbar = "%{v:lua.require('oil').get_current_dir()}";
        concealcursor = "ncv";
        conceallevel = 3;
        cursorcolumn = false;
        foldcolumn = "0";
        list = false;
        signcolumn = "yes";
        spell = false;
        wrap = false;
      };
    };
  };
  keymaps = lib.mkMerge [
    [
      {
        mode = "n";
        key = "-";
        action =
          helpers.mkRaw #lua

          ''
            function()
              vim.cmd("split | wincmd l")
              require("oil").open()
            end
          '';
        options = {
          desc = "Toggle orizontal split oil";
          silent = true;
        };
      }
    ]
    (lib.mkIf (!config.plugins.nvim-tree.enable) [
      {
        key = "<leader>e";
        action =
          helpers.mkRaw #lua

          ''
            function()
              vim.cmd("vsplit | wincmd l")
              require("oil").open()
            end
          '';
        options = {
          silent = true;
          desc = "Toggle vertical split oil";
        };
      }
    ])
  ];
}
