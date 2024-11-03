{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs; [
      vimPlugins.nui-nvim
      (pkgs.callPackage ../../repo/cppman-nvim.nix {})
    ];
    extraConfigLua = ''
      local cppman = require"cppman"
      cppman.setup()
    '';
    keymaps = [
      {
        key = "<leader>cm";
        action = ":lua require('cppman').open_cppman_for(vim.fn.expand('<cword>'))<CR>";
        options = {
          silent = true;
          desc = "CPPMAN: open Word Under Cursor";
        };
      }
      {
        key = "<leader>cc";
        action = ":lua require('cppman').input()<CR>";
        options = {
          silent = true;
          desc = "CPPMAN: open search box";
        };
      }
    ];
  };
}
