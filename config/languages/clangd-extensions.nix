{
  plugins = {
    clangd-extensions = {
      enable = true;
      enableOffsetEncodingWorkaround = true;
      ast = {
        roleIcons = {
          type = "";
          declaration = "";
          expression = "";
          specifier = "";
          statement = "";
          templateArgument = "";
        };
        kindIcons = {
          compound = "";
          recovery = "";
          translationUnit = "";
          packExpansion = "";
          templateTypeParm = "";
          templateTemplateParm = "";
          templateParamObject = "";
        };
      };
    };
  };
  extraConfigLua = ''
     if isModuleAvailable("cmp_nvim_lsp") then
       local cmp_nvim_lsp = require("cmp_nvim_lsp")
       require("lspconfig").clangd.setup {
         on_attach = on_attach,
         capabilities = cmp_nvim_lsp.default_capabilities(),
         cmd = {
           "/usr/bin/clangd",
           "--offset-encoding=utf-16",
         },
       }
    end
  '';
}
