{ pkgs, ... }:
{
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      nvim-treesitter-parsers.wgsl
      wgsl-vim
    ];
    extraConfigLua = ''
      require'lspconfig'.wgsl_analyzer.setup{}
    '';
  };
}
