{
  plugins.neorg = {
    enable = true;
    modules = {
      "core.concealer" = { config = { folds = true; }; };
      "core.defaults" = { __empty = null; };
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
    local neorg_enabled = vim.inspect(vim.b.neorg_enabled)
    if neorg_enabled == "nil" then
      vim.cmd[[Neorg index]]
      vim.b.neorg_enabled = true
    else
      vim.cmd[[Neorg return]]
      vim.b.neorg_enabled = nil
    end
    end
  '';
}
