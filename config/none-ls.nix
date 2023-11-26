{
  plugins.none-ls.sources = {
    diagnostics = {
      shellcheck.enable = true;
      flake8.enable = true;
      golangci_lint.enable = true;
    };
    code_actions = {
      shellcheck.enable = true;
    };
    formatting = {
      black.enable = true;
      rustfmt.enable = true;
      prettier.enable = true;
      nixpkgs_fmt.enable = true;
      nixfmt.enable = true;
    };
  };
}
