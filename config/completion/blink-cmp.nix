{
  plugins.blink-cmp = {
    enable = true;
    settings = {
      accept = {
        auto_brackets = {
          enabled = true;
        };
      };
      documentation = {
        auto_show = true;
      };
      highlight = {
        use_nvim_cmp_as_default = true;
      };
      trigger = {
        signature_help = {
          enabled = true;
        };
      };
    };
  };
}
