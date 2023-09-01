{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<C-p>" = {
        action = "git_files";
        desc = "Telescope Git Files";
      };
      "<leader>/" = "live_grep";
      "<leader>f" = "find_files";
      "<leader>m" = "man_pages";
      "gr" = "lsp_references";
    };
  };
}
