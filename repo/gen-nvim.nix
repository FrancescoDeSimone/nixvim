{ lib, vimUtils, fetchFromGitHub }:

vimUtils.buildVimPlugin rec {
  pname = "gen.nvim";
  version= "";

  src = fetchFromGitHub {
    owner = "David-Kunz";
    repo = "gen.nvim";
    hash = "sha256-Bt7yJxToUnPv3JqBwWQeywIbVRqzHBqnu3NUaIxFx/M=";
    rev = "87fbe811155b90eea58622614809705b966009ad";
  };

  meta = with lib; {
    description = " Free, ultrafast Copilot alternative for Vim and Neovim ";
    homepage = "https://github.com/David-Kunz/gen.nvim";
    maintainers = with maintainers; [ ];
    mainProgram = "gen.nix";
    platforms = platforms.all;
  };

}
