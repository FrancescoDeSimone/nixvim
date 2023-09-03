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
    normal."<leader>r" = {
      silent = true;
      action = ":lua vim.lsp.buf.rename()<cr>";
    };
# align with mini.align
    normalVisualOp."al" = {
      silent = true;
      action = "vipga=";
    };
    normal."<leader>q" = {
      silent = true;
      action = ":Bdelete<cr>";
    };
    normal."<leader>ca" = {
      silent = true;
      action = ":%bd|e#<cr>";
    };
    normal."<C-t>" = {
      silent = true;
      action = ":ToggleTerm<cr>";
    };
    normal."<leader>b" = {
      silent = true;
      action = ":BufferLinePick<cr>";
    };
    normal."<leader>z" = {
      silent = true;
      action = ":lua MiniMisc.zoom()<cr>";
    };
    terminal."<Esc>" =
    {
      silent = true;
      action = "<C-\\><C-n>";
    };
    normal."gy" = {
      silent = true;
      action = ":Telescope neoclip<cr>";
    };
    normal."<leader>h" = {
      silent = true;
      action = ":Telescope harpoon marks<cr>";
    };
  };
}
