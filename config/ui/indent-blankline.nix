{
  plugins = {
    indent-blankline = {
      enable = true;
      settings = {
        indent = {
          char = "│"; # "│" or "▎"
        };
        scope = {
          enabled = true;
          show_start = true;
        };
        exclude = {
          buftypes = ["terminal" "nofile"];
          filetypes = [
            "help"
            "Trouble"
            "trouble"
            "notify"
          ];
        };
      };
    };
  };
}
