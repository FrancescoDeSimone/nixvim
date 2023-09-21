{
  plugins.neorg = {
    enable = true;
    # lazyLoading = true;
    modules = {
      "core.concealer" = {
        config = {
          folds = true;
        };
      };
      "core.defaults" = {
        __empty = null;
      };
      "core.dirman" = {
        config = {
          workspaces = {
            home = "~/.notes/home";
            work = "~/.notes/work";
          };
          default_workspace = "home";
        };
      };
    };
  };
  extraConfigLua = ''
    function _G.Toggle_Neorg()
    local neorg_enabled2 = vim.inspect(vim.b.neorg_enabled2)
    if neorg_enabled2 == "nil" then
      vim.cmd[[Neorg index]]
      vim.b.neorg_enabled2 = true
    else
      vim.cmd[[Neorg return]]
      vim.b.neorg_enabled2 = nil
    end
    end
  '';
}
