{pkgs, ...}: {
  plugins.treesitter = {
    enable = true;
    folding = false;
    settings = {
      indent.enable = true;
      highlight.disable = ["make"];
    };
    # incrementalSelection.enable = true;
    nixvimInjections = true;
    # not using norg anymore
    # grammarPackages = with pkgs.tree-sitter-grammars;
    #   [
    #     tree-sitter-norg
    #     tree-sitter-norg-meta
    #   ]
    #   ++ pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };
  plugins.treesitter-refactor.enable = true;
  # plugins.treesitter-context.enable = true;
  plugins.endwise.enable = true;
  plugins.treesitter-textobjects = {
    enable = true;
    select = {
      enable = true;
      lookahead = true;
      keymaps = {
        "aa" = "@parameter.outer";
        "ia" = "@parameter.inner";
        "af" = "@function.outer";
        "if" = "@function.inner";
        "ac" = "@class.outer";
        "ic" = "@class.inner";
        "ii" = "@conditional.inner";
        "ai" = "@conditional.outer";
        "il" = "@loop.inner";
        "al" = "@loop.outer";
        "at" = "@comment.outer";
      };
    };
    move = {
      enable = true;
      gotoNextStart = {
        "]m" = "@function.outer";
        "]]" = "@class.outer";
      };
      gotoNextEnd = {
        "]M" = "@function.outer";
        "][" = "@class.outer";
      };
      gotoPreviousStart = {
        "[m" = "@function.outer";
        "[[" = "@class.outer";
      };
      gotoPreviousEnd = {
        "[M" = "@function.outer";
        "[]" = "@class.outer";
      };
    };
    swap = {
      enable = true;
      swapNext = {"<leader>a" = "@parameters.inner";};
      swapPrevious = {"<leader>A" = "@parameter.outer";};
    };
  };
}
