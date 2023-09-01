{
    maps = {
      normalVisualOp.";" = ":";
      normalVisualOp."<leader>e" = {
        silent = true;
        action = ":NvimTreeToggle<cr>";
      };
      normalVisualOp."<C-s>" = {
        silent = true;
        action = ":w<cr>";
      };
      normal."<leader>t" = {
        silent = true;
        action = ":TroubleToggle<cr>";
      };
      normal."<C-t>" = {
        silent = true;
        action = ":ToggleTerm<cr>";
      };
    };
}
