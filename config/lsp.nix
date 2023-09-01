{
  plugins= {
    lsp = {
      enable = true;
      servers = {
        cmake.enable = true;
        clangd.enable = true;
        gopls.enable = true;
        bashls.enable = true;
        pyright.enable = true;
        tsserver.enable = true;
        terraformls.enable = true;
        rust-analyzer.enable = true;
        rnix-lsp.enable = true;
        lua-ls.enable = true;
        html.enable = true;
      };
    };
    null-ls = {
      enable = true;
      sources = {
        formatting = {
          black.enable = true;
          rustfmt.enable = true;
          prettier.enable = true;
          nixpkgs_fmt.enable = true;
          nixfmt.enable = true;

        };
      };
    };
    lsp-lines = {
      enable = true;
      currentLine = true;
    };
    lsp-format.enable = true;
    lspkind.enable = true;
    lspkind.cmp.enable = true;
    lspsaga.enable = true;
    lspsaga.lightbulb.enable = false;
    fidget.enable = true;
  };
}
