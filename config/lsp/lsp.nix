{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        cmake.enable = true;
        clangd.enable = true;
        gopls.enable = true;
        bashls.enable = true;
        pylyzer.enable = true;
        yamlls.enable = true;
        terraformls.enable = true;
        nil-ls.enable = true;

        rust-analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
          settings = {
            completion.fullFunctionSignatures.enable = true;
            checkOnSave = true;
            check = {command = "clippy";};
            procMacro = {enable = true;};
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
                completion = {callSnippet = "Replace";};
                telemetry = {enabled = false;};
                hint = {enable = true;};
              };
            };
          };
        };
        html.enable = true;
      };
    };
  };
}
