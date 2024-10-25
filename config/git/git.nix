{
  plugins = {
    fugitive.enable = true;
    gitsigns = {
      enable = true;
      settings = {
        trouble = true;
        current_line_blame = false;
        # ignore_blank_lines = true;
        # ignore_whitespace = true;
        # virt_text = true;
        # virt_text_pos = "eol";
      };
    };
    gitignore = {
      enable = true;
    };
    gitmessenger.enable = true;
    neogit.enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>gi";
      action.__raw = ''require('gitignore').generate'';
      options = {
        desc = "Gitignore generate";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>Neogit<CR>";
    }
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
      key = "<leader>ghb";
      action = ":Gitsigns blame_line<CR>";
      options = {
        silent = true;
        desc = "Blame line";
      };
    }
    {
      mode = "n";
      key = "<leader>ghd";
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
  ];
}
