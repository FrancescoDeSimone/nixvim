{
  plugins.nvim-tree = {
    enable = true;
    hijackNetrw = true;
    hijackCursor = true;
    disableNetrw = true;
    diagnostics.enable = true;
  };
  keymaps = [
    {
      key = "<leader>e";
      action = ":NvimTreeToggle<cr>";
      options = {
        silent = true;
        desc = "Toggle NvimTree";
      };
    }
  ];
}
