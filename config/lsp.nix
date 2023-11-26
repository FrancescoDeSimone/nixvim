{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        cmake.enable = true;
        ccls.enable = true;
        gopls.enable = true;
        bashls.enable = true;
        pylsp.enable = true;
        tsserver.enable = true;
        terraformls.enable = true;
        rust-analyzer.enable = true;
        rnix-lsp.enable = true;
        rust-analyzer.settings = {
          lens = {
            implementations.enable = true;
            references = {
              method.enable = true;
              adt.enable = true;
              trait.enable = true;
              enumVariant.enable = true;
            };
          };
        };
        lua-ls.enable = true;
        html.enable = true;
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = {
          action = "hover";
          desc = "Hover";
        };
      };
    };
    null-ls = {
      enable = true;
      sources = {
        diagnostics = {
          shellcheck.enable = true;
          flake8.enable = true;
        };
        code_actions = {
          shellcheck.enable = true;
        };
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
    };
    lsp-format.enable = true;
    lspkind.enable = true;
    lspkind.cmp.enable = true;
    lspsaga.enable = true;
    lspsaga.lightbulb.enable = false;
    fidget.enable = true;
  };
}
