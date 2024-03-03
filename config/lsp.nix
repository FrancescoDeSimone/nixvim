{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        cmake.enable = true;
        #ccls.enable = true;
        clangd.enable = true;
        gopls.enable = true;
        bashls.enable = true;
        pylsp.enable = true;
        tsserver.enable = true;
        terraformls.enable = true;
        rust-analyzer.enable = true;
        rust-analyzer.installCargo = false;
        rust-analyzer.installRustc = false;
        rnix-lsp.enable = true;
        rust-analyzer.settings = {
          interpret.tests = true; # test this
          completion.fullFunctionSignatures.enable = true;
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
    none-ls = {
      enable = true;
      sources = {
        diagnostics = {
          shellcheck.enable = true;
          flake8.enable = true;
          cppcheck.enable = true;
          golangci_lint.enable = true;
        };
        code_actions = { shellcheck.enable = true; };
        formatting = {
          trim_newlines.enable = true;
          trim_whitespace.enable = true;
          # black.enable = true;
          rustfmt.enable = true;
          # prettier.enable = true;
          nixpkgs_fmt.enable = true;
          nixfmt.enable = true;

        };
      };
    };
    #lsp-lines = {
    #  enable = true;
    #};
    lsp-format.enable = true;
    lspkind.enable = true;
    lspkind.cmp.enable = true;
    lspsaga = {
      enable = true;
      lightbulb.enable = true;
      codeAction.extendGitSigns = true;
      codeAction.onlyInCursor = true;
      implement.enable = true;
      implement.virtualText = true;
    };
    fidget.enable = true;
  };
}
