{
  extraConfigLuaPre = ''
    function bool2str(bool) return bool and "on" or "off" end

    function toggleVirtualText()
      if vim.diagnostic.config().virtual_text == false then
        vim.diagnostic.config({
          virtual_text = {
            prefix = "●",
            source = "if_many",
            spacing = 4
          },
        })
      else
        vim.diagnostic.config({
          virtual_text = false,
        })
      end
      vim.notify(string.format("Virtual Text %s", bool2str(vim.diagnostic.config().virtual_text), "info"))
    end

    function toggleInlay()
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
      vim.notify(string.format("Inlay %s", bool2str(vim.lsp.inlay_hint.is_enabled()), "info"))
    end

    function isModuleAvailable(name)
      if package.loaded[name] then
        return true
      else
        for _, searcher in ipairs(package.searchers or package.loaders) do
          local loader = searcher(name)
          if type(loader) == 'function' then
            package.preload[name] = loader
            return true
          end
        end
        return false
      end
    end
  '';

  extraConfigLua = ''
    vim.diagnostic.config({
      bufferline = true,
      float = true,
      severity_sort = true,
      signs = {
        text = { " ", " ", " ", " " }
      },
      underline = true,
      update_in_insert = false,
      virtual_text = false,
    })
  '';
  extraConfigLuaPost = ''
    vim.lsp.codelens.refresh()
  '';
}
