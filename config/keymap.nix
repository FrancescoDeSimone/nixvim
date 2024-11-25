{
  keymaps = [
    {
      key = ";";
      action = ":";
    }
    {
      key = "<leader>ui";
      action = ":lua toggleInlay()<CR>";
      options = {
        silent = true;
        desc = "Toggle Inlay Hints";
      };
    }
    {
      key = "<leader>rw";
      action = ":s/\\v(.{80})/\\1\\r/g<CR>";
      options = {
        silent = true;
        desc = "Wrap after 80";
      };
    }
    {
      key = "<leader>.";
      action = ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>";
      options = {
        silent = false;
        desc = "Find/Replace under cursor";
      };
    }
    {
      key = "<C-s>";
      action = ":w<cr>";
      options = {
        silent = true;
        desc = "Save";
      };
    }
    {
      key = "<leader>q";
      action = ":lua Snacks.bufdelete.delete()<cr>";
      options = {
        silent = true;
        desc = "Close buffer";
      };
    }
    {
      mode = "t";
      key = "<Esc>";
      action = "<C-\\><C-n>";
      options = {
        silent = true;
        desc = "Escape terminal mode";
      };
    }
    {
      mode = "n";
      action = "v<Up>";
      key = "<S-Up>";
      options = {
        silent = true;
        desc = "Select lines above";
      };
    }
    {
      mode = "n";
      action = "v<Down>";
      key = "<S-Down>";
      options = {
        silent = true;
        desc = "Select lines below";
      };
    }
    {
      mode = "n";
      action = "v<Left>";
      key = "<S-Left>";
      options = {
        silent = true;
        desc = "Select characters to the left";
      };
    }
    {
      mode = "n";
      action = "v<Right>";
      key = "<S-Right>";
      options = {
        silent = true;
        desc = "Select characters to the right";
      };
    }
    {
      mode = "v";
      action = "<Up>";
      key = "<S-Up>";
      options = {
        silent = true;
        desc = "Move selection up";
      };
    }
    {
      mode = "v";
      action = "<Down>";
      key = "<S-Down>";
      options = {
        silent = true;
        desc = "Move selection down";
      };
    }
    {
      mode = "v";
      action = "<Left>";
      key = "<S-Left>";
      options = {
        silent = true;
        desc = "Move selection left";
      };
    }
    {
      mode = "v";
      action = "<Right>";
      key = "<S-Right>";
      options = {
        silent = true;
        desc = "Move selection right";
      };
    }
    {
      mode = "i";
      action = "<Esc>v<Up>";
      key = "<S-Up>";
      options = {
        silent = true;
        desc = "Exit insert mode and select lines above";
      };
    }
    {
      mode = "i";
      action = "<Esc>v<Down>";
      key = "<S-Down>";
      options = {
        silent = true;
        desc = "Exit insert mode and select lines below";
      };
    }
    {
      mode = "i";
      action = "<Esc>v<Left>";
      key = "<S-Left>";
      options = {
        silent = true;
        desc = "Exit insert mode and select characters to the left";
      };
    }
    {
      mode = "i";
      action = "<Esc>v<Right>";
      key = "<S-Right>";
      options = {
        silent = true;
        desc = "Exit insert mode and select characters to the right";
      };
    }
  ];
}
