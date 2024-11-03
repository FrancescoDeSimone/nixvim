{
  pkgs,
  config,
  ...
}: {
  plugins = {
    markview = {
      enable = true;
      package = pkgs.vimPlugins.markview-nvim.overrideAttrs (_oldAttrs: {
        dependencies = [];
      });

      settings = {
        buf_ignore = [];

        modes = [
          "n"
          "x"
          "i"
          "r"
        ];

        hybrid_modes = [
          "i"
          "r"
        ];
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
