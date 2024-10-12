{
  plugins.yanky = {
    enable = true;
    enableTelescope = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "gy";
      action = ":Telescope yank_history<cr>";
      options = {
        silent = true;
        desc = "Telescope yank_history";
      };
    }
  ];
  # extraConfigLua = ''
  #   require("telescope").load_extension("yank_history")
  # '';
}
