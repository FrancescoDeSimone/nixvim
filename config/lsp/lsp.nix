{config, ...}: {
  plugins = {
    lsp = {
      enable = true;
      servers = {
        ast_grep.enable = true;
        cmake.enable = true;
        clangd.enable = true;
        gopls.enable = true;
        bashls.enable = true;
        pylyzer.enable = true;
        yamlls.enable = true;
        terraformls.enable = true;
        nil_ls.enable = true;
        rust_analyzer = {
          enable = !config.plugins.rustaceanvim.enable;
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
        lua_ls = {
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

  keymaps = [
    {
      mode = "n";
      key = "<lerder>r";
      action = ":lua vim.lsp.buf.rename()<cr>";
      options = {
        silent = true;
        desc = "Rename";
      };
    }
  ];
}
