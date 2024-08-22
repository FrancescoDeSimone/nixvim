{
  # Import all your configuration modules here
  imports = [
    ./globals.nix
    ./keymap.nix
    ./options.nix

    ./completion/cmp.nix
    ./completion/codeium.nix
    ./completion/lspkind.nix

    ./dap/dap.nix

    ./git/conflict-nvim.nix
    ./git/diffview.nix
    ./git/git.nix

    ./languages/clangd-extensions.nix
    ./languages/go.nix
    ./languages/nix.nix
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

    ./telescope/nvim-neoclip.nix
    ./telescope/telescope-dap-nvim.nix
    ./telescope/telescope.nix
    ./telescope/yanky.nix

    ./ui/barbecue.nix
    ./ui/bufferline.nix
    ./ui/colorscheme.nix
    ./ui/highlight-undo.nix
    ./ui/indent-blankline.nix
    ./ui/lualine.nix
    ./ui/noice.nix
    ./ui/notify.nix
    ./ui/nvim-colorizer.nix
    ./ui/nvimtree.nix
    ./ui/dressing.nix
    ./ui/smartsplits.nix

    ./utils/auto-session.nix
    ./utils/cursorline.nix
    ./utils/debugprint.nix
    ./utils/harpoon.nix
    ./utils/hmts.nix
    ./utils/intellitab.nix
    ./utils/leetcode.nix
    ./utils/markdown.nix
    ./utils/mini.nix
    ./utils/neogen.nix
    ./utils/neoscroll.nix
    ./utils/nvim-spectre.nix
    ./utils/oil.nix
    ./utils/ollama.nix
    ./utils/todo.nix
    ./utils/venn.nix
    ./utils/vim-bbye.nix
    ./utils/vim-matchup.nix
    ./utils/vim-visual-multi.nix
    ./utils/vimtex.nix
    ./utils/whichkey.nix
    ./utils/wilder-nvim.nix
  ];
}
