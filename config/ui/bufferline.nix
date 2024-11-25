{
  config,
  lib,
  ...
}: {
  plugins.bufferline = {
    enable = true;
    settings.options = {
      closeCommand = "Bdelete! %d";
      diagnostics = "nvim_lsp";
      diagnostics_indicator =
        # Lua
        ''
          function(count, level, diagnostics_dict, context)
            local s = ""
            for e, n in pairs(diagnostics_dict) do
              local sym = e == "error" and " "
                or (e == "warning" and " " or "" )
              if(sym ~= "") then
                s = s .. " " .. n .. sym
              end
            end
            return s
          end
        '';
      offsets = [
        {filetype = "NvimTree";}
        {text = "File Explorer";}
        {highlight = "Directory";}
        {separator = true;}
      ];
    };
  };
  keymaps = lib.mkIf config.plugins.bufferline.enable [
    {
      mode = "n";
      key = "<leader>bP";
      action = "<cmd>BufferLineTogglePin<cr>";
      options = {
        desc = "Pin buffer toggle";
      };
    }
    {
      mode = "n";
      key = "<leader>bp";
      action = "<cmd>BufferLinePick<cr>";
      options = {
        desc = "Pick Buffer";
      };
    }
    {
      key = "<leader>bc";
      action = ":lua Snacks.bufdelete.other()<cr>";
      options = {
        silent = true;
        desc = "Close all buffers except current";
      };
    }
    {
      key = "<leader>ba";
      action = ":lua Snacks.bufdelete.all()<cr>";
      options = {
        silent = true;
        desc = "Close all buffers except current";
      };
    }
    {
      mode = "n";
      key = "<leader>bsd";
      action = "<cmd>BufferLineSortByDirectory<cr>";
      options = {
        desc = "Sort By Directory";
      };
    }
    {
      mode = "n";
      key = "<leader>bse";
      action = "<cmd>BufferLineSortByExtension<cr>";
      options = {
        desc = "Sort By Extension";
      };
    }
    {
      mode = "n";
      key = "<leader>bsr";
      action = "<cmd>BufferLineSortByRelativeDirectory<cr>";
      options = {
        desc = "Sort By Relative Directory";
      };
    }
  ];
}
