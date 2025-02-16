{pkgs, ...}: let
  telescope-terraform-doc = (pkgs.callPackage ../../repo/telescope-terraform-doc.nix {}).overrideAttrs {
    dependencies = with pkgs; [
      vimPlugins.plenary-nvim
    ];
  };
in {
  config = {
    extraPlugins = [
      telescope-terraform-doc
    ];
    extraConfigLua = ''
      require('telescope').load_extension('terraform_doc')
    '';
  };
}
