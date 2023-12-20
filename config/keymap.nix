{
  keymaps = [
    {
      key = ";";
      action = ":";
    }
    {
      key = "<leader>e";
      action = ":NvimTreeToggle<cr>";
      options = {
        silent = true;
        desc = "Toggle NvimTree";
      };
    }
    {
      key = "<leader>e";
      action = ":NvimTreeToggle<cr>";
      options = {
        silent = true;
        desc = "Toggle NvimTree";
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
      key = "<leader>t";
      action = ":TroubleToggle<cr>";
      options = {
        silent = true;
        desc = "Toggle Trouble";
      };
    }
    {
      mode = "n";
      key = "<leader>r";
      action = ":lua vim.lsp.buf.rename()<cr>";
      options = {
        silent = true;
        desc = "Rename";
      };
    }
    {
      mode = "n";
      key = "<leader>u";
      action = ":Telescope undo<cr>";
      options = {
        silent = true;
        desc = "Undo telescope menu";
      };
    }
    {
      mode = "n";
      key = "<leader>n";
      action = ":lua Toggle_Neorg()<cr>";
      options = {
        silent = true;
        desc = "Toggle Neorg";
      };
    }
    {
      key = "<leader>a";
      action = "vipga=";
      options = {
        silent = true;
        desc = "Align with mini.align";
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
      key = "<leader>sr";
      action = ":Spectre<cr>";
      options = {
        silent = true;
        desc = "Search and replace all";
      };
    }
    {
      key = "<C-t>";
      action = ":ToggleTerm<cr>";
      options = {
        silent = true;
        desc = "Toggle terminal";
      };
    }
    {
      key = "<leader>b";
      action = ":BufferLinePick<cr>";
      options = {
        silent = true;
        desc = "Pick a buffer";
      };
    }
    {
      key = "<leader>p";
      action = ":DapToggleBreakpoint<cr>";
      options = {
        silent = true;
        desc = "Toggle breakpoint";
      };
    }
    {
      key = "<F9>";
      action = ":DapContinue<cr>";
      options = {
        silent = true;
        desc = "Continue (DAP)";
      };
    }
    {
      key = "<F8>";
      action = ":DapStepOver<cr>";
      options = {
        silent = true;
        desc = "Step over (DAP)";
      };
    }
    {
      key = "<F7>";
      action = ":DapStepInto<cr>";
      options = {
        silent = true;
        desc = "Step into (DAP)";
      };
    }
    {
      key = "<S><F8>";
      action = ":DapStepOut<cr>";
      options = {
        silent = true;
        desc = "Step out (DAP)";
      };
    }
    {
      key = "<leader>cd";
      action = '':lua require("dapui").close()<cr>'';
      options = {
        silent = true;
        desc = "Close DAP UI";
      };
    }
    {
      key = "<leader>z";
      action = ":lua MiniMisc.zoom()<cr>";
      options = {
        silent = true;
        desc = "Full screen buffer";
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
      key = "gy";
      action = ":Telescope neoclip<cr>";
      options = {
        silent = true;
        desc = "Telescope neoclip";
      };
    }
    {
      mode = "n";
      key = "gj";
      action = ":Telescope jumplist<cr>";
      options = {
        silent = true;
        desc = "Telescope jumplist";
      };
    }
    {
      mode = "n";
      key = "<leader>h";
      action = ":Telescope harpoon marks<cr>";
      options = {
        silent = true;
        desc = "Telescope harpoon marks";
      };
    }
  ];
}
