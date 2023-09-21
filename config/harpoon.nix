{
  plugins.harpoon = {
    enable = true;
    keymaps.addFile = "<leader>a";
  };
  extraConfigLua = ''
    require("telescope").load_extension('harpoon')
  '';
}
