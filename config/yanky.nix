{
  plugins.yanky = { enable = true; };
  extraConfigLua = ''
    require("telescope").load_extension("yank_history")
  '';
}
