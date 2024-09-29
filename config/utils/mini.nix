{
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules = {
      icons = {
        style = "glyph";
      };
      align = {};
      trailspace = {};
      map = {window = {focusable = true;};};
      move = {
        mappings = {
          left = "<M-Left>";
          right = " <M-Right>";
          down = "<M-Down>";
          up = " <M-Up>";
          line_left = "<M-Left>";
          line_right = " <M-Right>";
          line_down = "<M-Down>";
          line_up = "<M-Up>";
        };
      };
      misc = {};
      trailspace = {};
    };
  };
  keymaps = [
    {
      key = "<leader>z";
      action = ":lua MiniMisc.zoom()<cr>";
      options = {
        silent = true;
        desc = "Full screen buffer";
      };
    }
  ];
}
