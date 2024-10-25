{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs; [
      vimPlugins.nui-nvim
      (pkgs.callPackage ../../repo/cppman-nvim.nix {})
    ];
    extraConfigLua = ''
      local cppman = require"cppman"
      cppman.setup()

      -- Make a keymap to open the word under cursor in CPPman
      vim.keymap.set("n", "<leader>cm", function()
      	cppman.open_cppman_for(vim.fn.expand("<cword>"))
      end)

      -- Open search box
      vim.keymap.set("n", "<leader>cc", function()
      	cppman.input()
      end)
    '';
  };
}
