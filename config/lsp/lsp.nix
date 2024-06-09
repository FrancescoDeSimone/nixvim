{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        cmake.enable = true;
        clangd.enable = true;
        gopls.enable = true;
        bashls.enable = true;
        pylsp.enable = true;
        terraformls.enable = true;
        nil-ls.enable = true;

        rust-analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
          settings = {
            completion.fullFunctionSignatures.enable = true;
            checkOnSave = true;
            check = { command = "clippy"; };
            procMacro = { enable = true; };
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
        };
        lua-ls = {
          enable = true;
          extraOptions = {
            settings = {
              Lua = {
                completion = { callSnippet = "Replace"; };
                telemetry = { enabled = false; };
                hint = { enable = true; };
              };
            };
          };
        };
        html.enable = true;
      };
      # keymaps.lspBuf = {
      #   # "gd" = "definition";
      #   "gD" = "declaration";
      #   # "gt" = "type_definition";
      #   # "gi" = "implementation";
      #   "K" = {
      #     action = "hover";
      #     desc = "Hover";
      #   };
      # };
    };
    # lspsaga = {
    #   enable = true;
    #   lightbulb.enable = true;
    #   codeAction.extendGitSigns = true;
    #   codeAction.onlyInCursor = true;
    #   implement.enable = true;
    #   implement.virtualText = true;
    # };
    # fidget.enable = true;
  };
}
