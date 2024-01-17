{ pkgs, ... }:
{
  plugins.luasnip = {
    enable = true;
    fromVscode = [{ }]; # See https://github.com/L3MON4D3/LuaSnip#add-snippets
  };
  extraPlugins = [ pkgs.vimPlugins.friendly-snippets ];
}
