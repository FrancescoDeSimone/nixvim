{
  plugins.treesitter = {
    enable = true;
    folding = false;
    indent = true;
    incrementalSelection.enable = true;
    disabledLanguages = [ "make" ];
    nixvimInjections = true;
  };
  plugins.treesitter-refactor.enable = true;
  plugins.treesitter-context.enable = true;
  plugins.endwise.enable = true;
}
