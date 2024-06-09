{ pkgs, ... }: {
  config = {
    extraPlugins = with pkgs.vimPlugins;
      [ (pkgs.callPackage ../../repo/github-nvim-theme.nix { }) ];
    extraConfigLua = ''
      vim.cmd('colorscheme github_dark_high_contrast')
    '';
  };
}
