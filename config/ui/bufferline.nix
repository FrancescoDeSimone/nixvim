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
}
