{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      nvim-spectre
    ];
    keymaps = [
      {
        key = "<leader>sr";
        action = ":Spectre<cr>";
        options = {
          silent = true;
          desc = "Search and replace all";
        };
      }
    ];
  };
}
