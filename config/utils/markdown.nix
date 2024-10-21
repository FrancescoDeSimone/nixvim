{config, ...}: {
  plugins = {
    markview = {
      enable = true;
      settings = {
        latex = {
          enable = true;
        };
        checkboxes = {
          enable = true;
          checked.text = "✔";
        };
        html = {
          enable = true;
        };
        headings = {
          enable = true;
          heading_1 = {
            style = "icon";
            hl = "MarkviewHeading1";
          };
          heading_2 = {
            style = "icon";
            hl = "MarkviewHeading2";
          };
          heading_3 = {
            style = "icon";
            hl = "MarkviewHeading3";
          };
        };
      };
    };
    render-markdown = {
      enable = !config.plugins.markview.enable;
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
