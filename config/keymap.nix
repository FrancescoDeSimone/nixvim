{
  extraConfigLuaPre = ''
    function bool2str(bool) return bool and "on" or "off" end
  '';
  keymaps = [
    {
      key = ";";
      action = ":";
    }
    {
      key = "<leader>.";
      action = ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>";
      options = {
        silent = false;
        desc = "Search And Replace The Word Under The Cursor";
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
      action = ":Bdelete<cr>";
      options = {
        silent = true;
        desc = "Close buffer";
      };
    }
    {
      key = "<leader>ca";
      action = ":%bd|e#<cr>";
      options = {
        silent = true;
        desc = "Close all buffers except current";
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
        desc = "Shift+Up: Select lines above";
      };
    }
    {
      mode = "n";
      action = "v<Down>";
      key = "<S-Down>";
      options = {
        silent = true;
        desc = "Shift+Down: Select lines below";
      };
    }
    {
      mode = "n";
      action = "v<Left>";
      key = "<S-Left>";
      options = {
        silent = true;
        desc = "Shift+Left: Select characters to the left";
      };
    }
    {
      mode = "n";
      action = "v<Right>";
      key = "<S-Right>";
      options = {
        silent = true;
        desc = "Shift+Right: Select characters to the right";
      };
    }
    {
      mode = "v";
      action = "<Up>";
      key = "<S-Up>";
      options = {
        silent = true;
        desc = "Shift+Up: Move selection up";
      };
    }
    {
      mode = "v";
      action = "<Down>";
      key = "<S-Down>";
      options = {
        silent = true;
        desc = "Shift+Down: Move selection down";
      };
    }
    {
      mode = "v";
      action = "<Left>";
      key = "<S-Left>";
      options = {
        silent = true;
        desc = "Shift+Left: Move selection left";
      };
    }
    {
      mode = "v";
      action = "<Right>";
      key = "<S-Right>";
      options = {
        silent = true;
        desc = "Shift+Right: Move selection right";
      };
    }
    {
      mode = "i";
      action = "<Esc>v<Up>";
      key = "<S-Up>";
      options = {
        silent = true;
        desc = "Shift+Up: Exit insert mode and select lines above";
      };
    }
    {
      mode = "i";
      action = "<Esc>v<Down>";
      key = "<S-Down>";
      options = {
        silent = true;
        desc = "Shift+Down: Exit insert mode and select lines below";
      };
    }
    {
      mode = "i";
      action = "<Esc>v<Left>";
      key = "<S-Left>";
      options = {
        silent = true;
        desc = "Shift+Left: Exit insert mode and select characters to the left";
      };
    }
    {
      mode = "i";
      action = "<Esc>v<Right>";
      key = "<S-Right>";
      options = {
        silent = true;
        desc = "Shift+Right: Exit insert mode and select characters to the right";
      };
    }
  ];
  extraConfigLua = ''
    -- Function to copy a line and reset the cursor position
    function _G.paste_and_reset_cursor()
      local save_cursor = vim.fn.col('.')
      vim.cmd('normal! ""p')
      vim.fn.cursor(vim.fn.line('.'), save_cursor)
    end
    -- Map the function to the 'p' key in normal mode
    vim.api.nvim_set_keymap('n', 'p', ':lua paste_and_reset_cursor()<CR>', { noremap = true, silent = true })
  '';
}
