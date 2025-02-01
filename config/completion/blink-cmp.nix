{
  plugins.blink-cmp = {
    enable = true;
    settings = {
      completion = {
        accept = {
          auto_brackets.enabled = true;
          create_undo_point = true;
        };
        documentation = {
          auto_show = true;
          treesitter_highlighting = true;
          window.border = "single";
        };
        ghost_text.enabled = true;
        menu.border = "single";
      };
      keymap = {
        preset = "enter";
      };
      signature = {
        enabled = true;
        trigger.enabled = true;
        window.border = "single";
      };
    };
  };
  plugins.blink-compat = {
    enable = true;
    settings.impersonate_nvim_cmp = true;
  };
}
