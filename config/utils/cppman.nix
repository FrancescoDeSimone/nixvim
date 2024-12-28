{pkgs, ...}: let
  cppman = (pkgs.callPackage ../../repo/cppman-nvim.nix {}).overrideAttrs {
    dependencies = with pkgs.vimPlugins; [
      nui-nvim
    ];
  };
in {
  config = {
    extraPlugins = [
      cppman
    ];
    extraConfigLua = ''
      require("cppman").setup()
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
