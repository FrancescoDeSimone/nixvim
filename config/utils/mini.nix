{
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules = {
      # completion = {};
      operators = {};
      cursorword = {};
      icons = {
        style = "glyph";
      };
      align = {};
      trailspace = {};
      move = {
        mappings = {
          left = "<M-Left>";
          right = " <M-Right>";
          down = "<M-Down>";
          up = " <M-Up>";
          line_left = "<M-Left>";
          line_right = "<M-Right>";
          line_down = "<M-Down>";
          line_up = "<M-Up>";
        };
      };
      misc = {};
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
