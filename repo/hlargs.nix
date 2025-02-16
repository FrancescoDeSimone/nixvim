{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "hlargs.nix";
  version = "a5a7fdacc0ac2f7ca9d241e0e059cb85f0e733bc";

  src = fetchFromGitHub {
    owner = "m-demare";
    repo = "hlargs.nvim";
    hash = "sha256-K4hoTSYtriCNOz43Xl3KPeR3K9MNw8euY8QLYwBGQE4=";
    rev = "a5a7fdacc0ac2f7ca9d241e0e059cb85f0e733bc";
  };

  meta = with lib; {
    description = "Highlight arguments' definitions and usages, using Treesitter";
    homepage = "https://github.com/m-demare/hlargs.nvim";
    maintainers = with maintainers; [];
    mainProgram = "hlargs.nvim";
    platforms = platforms.all;
  };
}
