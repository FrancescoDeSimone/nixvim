{
  plugins.clangd-extensions = { enable = true; };
  extraConfigLua = ''
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    require("lspconfig").clangd.setup {
      on_attach = on_attach,
      capabilities = cmp_nvim_lsp.default_capabilities(),
      cmd = {
        "/usr/bin/clangd",
          "--offset-encoding=utf-16",
      },
    }
  '';

}
