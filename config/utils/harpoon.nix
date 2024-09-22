{
  plugins.harpoon = {
    enable = true;
    keymaps.addFile = "<leader>a";
  };
  extraConfigLua = ''
    require("telescope").load_extension('harpoon')
  '';
  keymaps = [
    {
      mode = "n";
      key = "<leader>h";
      action = ":Telescope harpoon marks<cr>";
      options = {
        silent = true;
        desc = "Telescope harpoon marks";
      };
    }
  ];
}
