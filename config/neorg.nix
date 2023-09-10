{
  plugins.neorg = {
    enable = true;
    lazyLoading = true;
    modules = {
      "core.concealer" = {
        config = {
          folds = true;
        };
      };
      # "core.defaults" = {
      #   __empty = null;
      # };
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
}
