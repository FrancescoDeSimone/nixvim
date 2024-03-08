{
  config = {
    luaLoader.enable = true;
    options = {
      autoindent = true;
      cc = "80,120";
      cursorline = false;
      equalalways = true;
      signcolumn = "number";
      sessionoptions =
        "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions";
      expandtab = true;
      foldcolumn = "1";
      incsearch = true;
      lazyredraw = true;
      undofile = true;
      showbreak = "↪\\";
      listchars = "tab:→ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨";
      list = true;
      number = true;
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
    };
  };
}
