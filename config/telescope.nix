{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<C-p>" = { action = "git_files"; };
      "<leader>/" = "live_grep";
      "<leader>f" = "find_files";
      "<leader>m" = "man_pages";
      "gr" = "lsp_references";
      "gd" = "lsp_definitions";
      "gI" = "lsp_implementations";
      "gt" = "lsp_type_definitions";
      "gS" = "lsp_document_symbols";
      "gW" = "lsp_workspace_symbols";
    };
  };
}
