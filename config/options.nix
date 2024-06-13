{
  config = {
    luaLoader.enable = true;
    opts = {
      autoindent = true;
      cc = "80,120";
      cursorline = false;
      formatexpr = "v:lua.require'conform'.formatexpr()";
      equalalways = true;
      signcolumn = "number";
      sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions";
      expandtab = true;
      foldcolumn = "1";
      incsearch = true;
      undofile = true;
      showbreak = "↪\\";
      listchars = "tab:→ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨";
      list = true;
      number = true;
      scrolloff = 10;
      timeoutlen = 10;
      redrawtime = 10000;
      shiftwidth = 2;
      ignorecase = true;
      smartcase = true;
      spell = true;
      splitbelow = true;
      inccommand = "split";
      splitright = true;
      swapfile = false;
      synmaxcol = 125;
      tabstop = 2;
      ttyfast = true;
      updatetime = 1000;
      wildignorecase = true;
      encoding = "utf-8";
      fileencoding = "utf-8";
      cmdheight = 0;
    };
  };
}
