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
  keymaps = [
    {
      key = "<leader>b";
      action = ":BufferLinePick<cr>";
      options = {
        silent = true;
        desc = "Pick a buffer";
      };
    }
  ];
}
