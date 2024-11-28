{
  plugins.trouble = {
    enable = true;
  };
  keymaps = [
    {
      key = "<leader>td";
      action = ":Trouble diagnostics toggle<cr>";
      options = {
        silent = true;
        desc = "Toggle Diagnostics (Trouble)";
      };
    }
    {
      key = "<leader>us";
      action = ":Trouble symbols toggle focus=false<cr>";
      options = {
        silent = true;
        desc = "Symbols (Trouble)";
      };
    }
  ];
}
