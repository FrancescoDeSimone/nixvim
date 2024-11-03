{pkgs, ...}: {
  plugins.treesitter = {
    enable = true;
    folding = true;
    settings = {
      indent.enable = true;
      highlight.enable = true;
      highlight.disable = ["make"];
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = "<leader>ss";
          node_decremental = "<leader>si";
          node_incremental = "<leader>sc";
          scope_incremental = "<leader>sd";
        };
      };
    };
    nixvimInjections = true;
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
    # swap = {
    #   enable = true;
    #   swapNext = {"<leader>a" = "@parameters.inner";};
    #   swapPrevious = {"<leader>A" = "@parameter.outer";};
    # };
  };
}
