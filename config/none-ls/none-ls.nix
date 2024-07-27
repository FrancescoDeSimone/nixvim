{
  plugins.none-ls = {
    enable = false;
    enableLspFormat = false;
    sources = {
      hover.printenv.enable = true;
      completion = {
        spell.enable = true;
        tags.enable = true;
      };
      diagnostics = {
        # ansiblelint.enable = true;
        write_good.enable = true;
        yamllint.enable = true;
        trail_space.enable = true;
        todo_comments.enable = true;
        terraform_validate.enable = true;
        staticcheck.enable = true;
        rstcheck.enable = true;
        pylint.enable = true;
        cppcheck.enable = true;
        golangci_lint.enable = true;
      };
      # code_actions = {
      #   gitrebase.enable = true;
      #   gitsigns.enable = true;
      #   refactoring.enable = true;
      # };
      formatting = {
        nixpkgs_fmt.enable = true;
        nixfmt.enable = true;
        black = {
          enable = true;
        };
      };
    };
  };
}
