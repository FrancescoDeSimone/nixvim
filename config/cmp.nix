{
  plugins = {
    nvim-cmp = {
      enable = true;
      sources = [
        { name = "path"; }
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "crates"; }
        { name = "buffer"; }
      ];
      mapping = {
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.abort()";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Down>" = {
          action = "cmp.mapping.select_next_item()";
          modes = [ "i" "s" ];
        };
        "<Up>" = {
          action = "cmp.mapping.select_prev_item()";
          modes = [ "i" "s" ];
        };
      };
      snippet.expand = "luasnip";
    };
    cmp_luasnip.enable = true;
    cmp-zsh.enable = true;
    cmp-vim-lsp.enable = true;
    cmp-treesitter.enable = true;
    cmp-tmux.enable = true;
    # cmp-tabnine.enable = true;
    cmp-spell.enable = true;
    cmp-rg.enable = true;
    cmp-path.enable = true;
    cmp-nvim-lua.enable = true;
    cmp-clippy.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-npm.enable = true;
    cmp-look.enable = true;
    cmp-fuzzy-path.enable = true;
    cmp-git.enable = true;
    cmp-fuzzy-buffer.enable = true;
    cmp-dictionary.enable = true;
    cmp-dap.enable = true;
    cmp-conventionalcommits.enable = true;
    cmp-buffer.enable = true;
  };
}
