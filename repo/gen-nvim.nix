{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "gen.nvim";
  version = "";

  src = fetchFromGitHub {
    owner = "David-Kunz";
    repo = "gen.nvim";
    hash = "sha256-Yp7HrDMOyR929AfM7IjEz4dP3RhIx9kXZ1Z3zRr5yJg=";
    rev = "c9a73d8c0d462333da6d2191806ff98f2884d706";
  };

  meta = with lib; {
    description = " Free, ultrafast Copilot alternative for Vim and Neovim ";
    homepage = "https://github.com/David-Kunz/gen.nvim";
    maintainers = with maintainers; [];
    mainProgram = "gen.nix";
    platforms = platforms.all;
  };
}
