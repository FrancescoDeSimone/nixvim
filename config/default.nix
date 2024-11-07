{
  # Import all your configuration modules here
  imports = [
    ./extraLuaConfig.nix
    ./globals.nix
    ./keymap.nix
    ./options.nix
    ./autocmd.nix
    ./performance.nix
    ./diagnostics.nix

    #./completion/coq.nix
    ./completion/cmp.nix
    # ./completion/blink-cmp.nix

    ./dap/dap.nix #TODO fix this

    ./git/conflict-nvim.nix
    ./git/diffview.nix
    ./git/fugitive.nix
    ./git/gitignore.nix
    ./git/gitsigns.nix
    ./git/neogit.nix

    ./languages/clangd-extensions.nix
    ./languages/go.nix
    ./languages/rust.nix
    ./languages/treesitter.nix

    ./lsp/conform.nix
    ./lsp/fidget.nix
    ./lsp/lsp.nix
    ./lsp/lspsaga.nix
    ./lsp/trouble.nix
    ./lsp/wgsl.nix

    ./none-ls/none-ls.nix

    ./snippets/luasnip.nix

    ./telescope/telescope-dap-nvim.nix #TODO fix this
    ./telescope/telescope.nix
    ./telescope/yanky.nix

    ./ui/barbecue.nix
    ./ui/bufferline.nix
    ./ui/colorscheme.nix
    ./ui/indent-blankline.nix
    ./ui/lualine.nix
    ./ui/noice.nix
    ./ui/notify.nix
    ./ui/nvim-colorizer.nix
    ./ui/nvimtree.nix
    # ./ui/aerial.nix
    ./ui/lspkind.nix
    ./ui/hlargs.nix
    ./ui/statuscol.nix

    ./utils/auto-session.nix
    ./utils/cursorline.nix
    ./utils/debugprint.nix
    # ./utils/harpoon.nix
    ./utils/hmts.nix
    ./utils/leetcode.nix
    ./utils/markdown.nix
    ./utils/mini.nix
    # ./utils/neogen.nix
    ./utils/grug-far.nix
    ./utils/oil.nix
    ./utils/ollama.nix
    ./utils/todo.nix
    ./utils/venn.nix
    ./utils/vim-bbye.nix
    ./utils/vim-matchup.nix
    ./utils/vim-visual-multi.nix
    ./utils/vimtex.nix
    ./utils/whichkey.nix
    ./utils/obsidian.nix
    ./utils/cppman.nix
    ./utils/refactoring.nix
  ];
}
