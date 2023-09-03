{
  plugins.mini = {
    enable = true;
    modules = {
      ai = {
        n_lines = 50;
        search_method = "cover_or_next";
      };
      align = { };
      trailspace = { };
      # gS
      splitjoin = { };
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
      surround = { };
      jump2d = { };
      misc = { };
    };
  };
}
