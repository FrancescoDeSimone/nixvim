{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      nvim-neoclip-lua
    ];
    extraConfigLua = ''
      require('neoclip').setup()
      require('telescope').load_extension('neoclip')
    '';
    keymaps = [
      {
        mode = "n";
        key = "gy";
        action = ":Telescope neoclip<cr>";
        options = {
          silent = true;
          desc = "Telescope neoclip";
        };
      }
    ];
  };
}
