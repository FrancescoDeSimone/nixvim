{
    maps = {
      normalVisualOp.";" = ":";
      normalVisualOp."<leader>e" = {
        silent = true;
        action = ":NvimTreeToggle<cr>";
      };
      normal."<leader>t" = {
        silent = true;
        action = ":TroubleToggle<cr>";
      };
    };
}
