{
  plugins = {
    clangd-extensions = {
      enable = true;
      enableOffsetEncodingWorkaround = true;
      settings = {
        ast = {
          role_icons = {
            type = "";
            declaration = "";
            expression = "";
            specifier = "";
            statement = "";
            templateArgument = "";
          };
          kind_icons = {
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
