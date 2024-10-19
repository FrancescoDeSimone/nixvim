{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "hlargs.nix";
  version = "53ec5d8ca6ed012de5545ba83ea1eb3d636b09fb";

  src = fetchFromGitHub {
    owner = "m-demare";
    repo = "hlargs.nvim";
    hash = "sha256-K4hoTSYtriCNOz43Xl3KPeR3K9MNw8euY8QLYwBGQE4=";
    rev = "53ec5d8ca6ed012de5545ba83ea1eb3d636b09fb";
  };

  meta = with lib; {
    description = "Highlight arguments' definitions and usages, using Treesitter";
    homepage = "https://github.com/m-demare/hlargs.nvim";
    maintainers = with maintainers; [];
    mainProgram = "hlargs.nvim";
    platforms = platforms.all;
  };
}
