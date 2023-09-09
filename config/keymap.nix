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
    normal."<leader>sr" = {
      silent = true;
      action = ":lua require(\"ssr\").open()<cr>";
    };
    normal."<C-t>" = {
      silent = true;
      action = ":ToggleTerm<cr>";
    };
    normal."<leader>b" = {
      silent = true;
      action = ":BufferLinePick<cr>";
    };
    normal."<leader>p" = {
      silent = true;
      action = ":DapToggleBreakpoint<cr>";
    };
    normal."<F9>" = {
      silent = true;
      action = ":DapContinue<cr>";
    };

    normal."<F8>" = {
      silent = true;
      action = ":DapStepOver<cr>";
    };
    normal."<F7>" = {
      silent = true;
      action = ":DapStepInto<cr>";
    };
    normal."<S><F8>" = {
      silent = true;
      action = ":DapStepOut<cr>";
    };
    normal."<leader>cd" = {
      silent = true;
      action = ":lua require(\"dapui\").close()<cr>";
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
