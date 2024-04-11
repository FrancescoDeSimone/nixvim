{
  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          { name = "nvim_lsp"; }
          { name = "luasnip"; }
          { name = "path"; }
          { name = "crates"; }
          { name = "buffer"; }
        ];
        snippet.expand = ''
          function(args)
            require('luasnip').lsp_expand(args.body)
          end
        '';
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-e>" = "cmp.mapping.close()";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<UP>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        };
      };
    };
    cmp-buffer.enable = true;
    cmp-cmdline-history.enable = true;
    cmp-conventionalcommits.enable = true;
    cmp-digraphs.enable = true;
    cmp-fuzzy-buffer.enable = true;
    cmp-git.enable = true;
    cmp-look.enable = true;
    cmp-npm.enable = true;
    cmp-rg.enable = true;
    cmp-spell.enable = true;
    cmp-tmux.enable = true;
    cmp-vim-lsp.enable = true;
    cmp-clippy.enable = true;
    cmp-dap.enable = true;
    cmp-dictionary.enable = true;
    cmp-fuzzy-path.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lua.enable = true;
    cmp-path.enable = true;
    cmp-treesitter.enable = true;
    cmp_luasnip.enable = true;
    cmp_yanky.enable = true;
  };
}
