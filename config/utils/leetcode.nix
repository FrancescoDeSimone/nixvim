{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      nui-nvim
      (pkgs.callPackage ../../repo/leetcode.nix {})
    ];
    extraConfigLua = ''
      require('leetcode').setup({
        image_support = true,
      })
    '';
  };
}
