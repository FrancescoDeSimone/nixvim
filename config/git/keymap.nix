{
  config,
  lib,
  ...
}: {
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
    (lib.mkIf config.plugins.fugitive.enable [
      {
        mode = "n";
        key = "<leader>gf";
        action = ":Git<CR>";
        options = {
          desc = "Open fugitive";
          silent = true;
        };
      }
    ])
    (lib.mkIf config.plugins.git-conflict.enable [
      {
        mode = "n";
        key = "<leader>gc]";
        action = "<cmd>GitConflictNextConflict<CR>";
        options = {
          desc = "Next";
        };
      }
      {
        mode = "n";
        key = "<leader>gc[";
        action = "<cmd>GitConflictPrevConflict<CR>";
        options = {
          desc = "Prev";
        };
      }
      {
        mode = "n";
        key = "<leader>gcr";
        action = "<cmd>GitConflictRefresh<CR>";
        options = {
          desc = "Refresh";
        };
      }
      {
        mode = "n";
        key = "<leader>gcb";
        action = "<cmd>GitConflictChooseBase<CR>";
        options = {
          desc = "Choose Base";
        };
      }
      {
        mode = "n";
        key = "<leader>gcB";
        action = "<cmd>GitConflictChooseBoth<CR>";
        options = {
          desc = "Choose Both";
        };
      }
      {
        mode = "n";
        key = "<leader>gct";
        action = "<cmd>GitConflictChooseTheirs<CR>";
        options = {
          desc = "Choose Theirs";
        };
      }
      {
        mode = "n";
        key = "<leader>gco";
        action = "<cmd>GitConflictChooseOurs<CR>";
        options = {
          desc = "Choose Ours";
        };
      }
      {
        mode = "n";
        key = "<leader>gcn";
        action = "<cmd>GitConflictChooseNone<CR>";
        options = {
          desc = "Choose None";
        };
      }
      {
        mode = "n";
        key = "<leader>gcl";
        action = "<cmd>GitConflictListQf<CR>";
        options = {
          desc = "List";
        };
      }
    ])
    (lib.mkIf config.plugins.diffview.enable [
      {
        mode = "n";
        key = "<leader>gd";
        action.__raw = ''
          function()
            vim.g.diffview_enabled = not vim.g.diffview_enabled
            if vim.g.diffview_enabled then
              vim.cmd('DiffviewClose')
            else
              vim.cmd('DiffviewOpen')
            end
          end
        '';
        options = {
          desc = "Git Diff toggle";
          silent = true;
        };
      }
    ])
    (lib.mkIf config.plugins.gitignore.enable [
      {
        mode = "n";
        key = "<leader>gi";
        action.__raw = ''require('gitignore').generate'';
        options = {
          desc = "Gitignore generate";
          silent = true;
        };
      }
    ])
    (lib.mkIf config.plugins.gitsigns.enable [
      {
        mode = ["n" "v"];
        key = "<leader>ghm";
        action = "gitsigns";
        options = {
          silent = true;
          desc = "+hunks";
        };
      }
      {
        mode = "n";
        key = "<leader>gb";
        action = ":Gitsigns blame_line<CR>";
        options = {
          silent = true;
          desc = "Blame line";
        };
      }
      {
        mode = "n";
        key = "<leader>gd";
        action = ":Gitsigns diffthis<CR>";
        options = {
          silent = true;
          desc = "Diff This";
        };
      }
      {
        mode = "n";
        key = "<leader>ghp";
        action = ":Gitsigns preview_hunk<CR>";
        options = {
          silent = true;
          desc = "Preview hunk";
        };
      }
      {
        mode = "n";
        key = "<leader>ghR";
        action = ":Gitsigns reset_buffer<CR>";
        options = {
          silent = true;
          desc = "Reset Buffer";
        };
      }
      {
        mode = ["n" "v"];
        key = "<leader>ghr";
        action = ":Gitsigns reset_hunk<CR>";
        options = {
          silent = true;
          desc = "Reset Hunk";
        };
      }
      {
        mode = ["n" "v"];
        key = "<leader>ghs";
        action = ":Gitsigns stage_hunk<CR>";
        options = {
          silent = true;
          desc = "Stage Hunk";
        };
      }
      {
        mode = "n";
        key = "<leader>ghS";
        action = ":Gitsigns stage_buffer<CR>";
        options = {
          silent = true;
          desc = "Stage Buffer";
        };
      }
      {
        mode = "n";
        key = "<leader>ghu";
        action = ":Gitsigns undo_stage_hunk<CR>";
        options = {
          silent = true;
          desc = "Undo Stage Hunk";
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
