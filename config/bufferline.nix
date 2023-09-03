{
  plugins.bufferline = {
    enable = true;
    closeCommand = "Bdelete! %d";
    diagnostics = true;
    offsets = [
      { filetype = "NvimTree"; }
      { text = "File Explorer"; }
      { highlight = "Directory"; }
      { separator = true; }
    ];
  };
}
