{
  plugins = {
    markdown-preview.enable = true;
    render-markdown = {
      enable = true;
      settings = {
        preset = "obsidian";
        bullet = {
          icons = [
            "◆ "
            "• "
            "• "
          ];
          right_pad = 1;
        };
        code = {
          above = " ";
          below = " ";
          border = "thick";
          language_pad = 2;
          left_pad = 2;
          position = "right";
          right_pad = 2;
          sign = false;
          width = "block";
        };
        heading = {
          position = "inline";
        };
        render_modes = true;
      };
    };
  };
}
