{
  plugins.harpoon = {
    enable = true;
    keymaps.addFile = "<leader>a";
    keymaps.toggleQuickMenu = "<leader>mh";
  };
  extraConfigLua = ''
    require("telescope").load_extension('harpoon')
  '';
}
