{
  plugins.bufferline = {
    enable = true;
    settings.options = {
      closeCommand = "Bdelete! %d";
      diagnostics = "coc";
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
