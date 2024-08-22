{
  plugins.smart-splits = {
    enable = true;
    settings = {
      ignored_events = [
        "BufEnter"
        "WinEnter"
      ];
      resize_mode = {
        quit_key = "<ESC>";
        resize_keys = [
          "<left>"
          "<down>"
          "<up>"
          "<right>"
        ];
        silent = true;
      };
    };
  };
}
