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
        # rnix-lsp.enable = true;
        nixd.enable = true;
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
        # "gd" = "definition";
        "gD" = "declaration";
        # "gt" = "type_definition";
        # "gi" = "implementation";
        "K" = {
          action = "hover";
          desc = "Hover";
        };
      };
    };
    none-ls = {
      enable = true;
      enableLspFormat = true;
      sources = {
        hover.printenv.enable = true;
        completion = {
          spell.enable = true;
          tags.enable = true;
        };
        diagnostics = {
          ansiblelint.enable = true;
          write_good.enable = true;
          yamllint.enable = true;
          trail_space.enable = true;
          todo_comments.enable = true;
          terraform_validate.enable = true;
          staticcheck.enable = true;
          rstcheck.enable = true;
          pylint.enable = true;
          cppcheck.enable = true;
          golangci_lint.enable = true;
        };
        code_actions = {
          gitrebase.enable = true;
          gitsigns.enable = true;
          refactoring.enable = true;
        };
        formatting = {
          nixpkgs_fmt.enable = true;
          nixfmt.enable = true;

        };
      };
    };
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
