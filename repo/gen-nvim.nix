{ lib, vimUtils, fetchFromGitHub }:

vimUtils.buildVimPlugin rec {
  pname = "gen.nvim";
  version = "";

  src = fetchFromGitHub {
    owner = "David-Kunz";
    repo = "gen.nvim";
    hash = "sha256-0AEB6im8Jz5foYzmL6KEGSAYo48g1bkFpjlCSWT6JeE=";
    rev = "bd19cf584b5b82123de977b44105e855e61e5f39";
  };

  meta = with lib; {
    description = " Free, ultrafast Copilot alternative for Vim and Neovim ";
    homepage = "https://github.com/David-Kunz/gen.nvim";
    maintainers = with maintainers; [ ];
    mainProgram = "gen.nix";
    platforms = platforms.all;
  };

}
