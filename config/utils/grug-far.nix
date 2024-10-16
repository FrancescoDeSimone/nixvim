{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      grug-far-nvim
    ];
    extraConfigLua = ''
      require('grug-far').setup()
      vim.g.maplocalleader = ' '
    '';
    keymaps = [
      {
        key = "<leader>sr";
        action = ''
          :lua require('grug-far').open({ prefills = { search = vim.fn.expand("<cword>") } })<cr>
        '';
        options = {
          silent = true;
          desc = "Search and replace all";
        };
      }
    ];
  };
}
