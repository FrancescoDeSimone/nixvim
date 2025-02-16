{
  plugins.blink-cmp = {
    enable = true;
    settings = {
      sources = {
        default = [
          "lsp"
          "path"
          "buffer"
          "ripgrep"
          "git"
        ];
        providers = {
          git = {
            module = "blink-cmp-git";
            name = "git";
            score_offset = 100;
            opts = {
              commit = {};
              git_centers = {git_hub = {};};
            };
          };
          ripgrep = {
            async = true;
            module = "blink-ripgrep";
            name = "Ripgrep";
            score_offset = 100;
            opts = {
              prefix_min_len = 3;
              context_size = 5;
              max_filesize = "1M";
              project_root_marker = ".git";
              project_root_fallback = true;
              search_casing = "--ignore-case";
              additional_rg_options = {};
              fallback_to_regex_highlighting = true;
              ignore_paths = {};
              additional_paths = {};
              debug = false;
            };
          };
        };
      };
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
        enabled = false;
        trigger.enabled = true;
        window.border = "single";
      };
    };
  };
  plugins.blink-ripgrep.enable = true;
  plugins.blink-cmp-git.enable = true;
  plugins.blink-compat = {
    enable = true;
    settings.impersonate_nvim_cmp = true;
  };
}
