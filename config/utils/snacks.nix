{
  plugins.snacks = {
    enable = true;
    settings = {
      bigfile = {
        enabled = true;
      };
      notifier = {
        enabled = false;
        timeout = 3000;
      };
      words = {
        debounce = 100;
        enabled = true;
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>tt";
      action = ":lua Snacks.terminal()<CR>";
      options = {
        desc = "Toggle Terminal";
        silent = true;
      };
    }
  ];
}
