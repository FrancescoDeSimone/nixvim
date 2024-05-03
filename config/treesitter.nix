{ pkgs, ... }: {
  plugins.treesitter = {
    enable = true;
    folding = false;
    indent = true;
    incrementalSelection.enable = true;
    disabledLanguages = [ "make" ];
    nixvimInjections = true;
    grammarPackages = with pkgs.tree-sitter-grammars; [
      tree-sitter-norg
      tree-sitter-norg-meta
    ];
  };
  plugins.treesitter-refactor.enable = true;
  # plugins.treesitter-context.enable = true;
  plugins.endwise.enable = true;
}
