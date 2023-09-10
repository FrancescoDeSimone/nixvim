{ pkgs, ... }:
{
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      telescope-undo-nvim
    ];
    extraConfigLua = ''
      require("telescope").load_extension("undo")
    '';
  };
}
