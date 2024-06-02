{ lib, vimUtils, fetchFromGitHub }:

vimUtils.buildVimPlugin rec {
  pname = "highlight-undo.nvim";
  version = "1ea1c79372d7d93c88fd97543880927b7635e3d2";

  src = fetchFromGitHub {
    owner = "tzachar";
    repo = "highlight-undo.nvim";
    hash = "sha256-yGw1SxcUmGQxqKhMb2SJAai07g+rOpEJy2CqIX2h9dM=";
    rev = "1ea1c79372d7d93c88fd97543880927b7635e3d2";
  };

  meta = with lib; {
    description = "Highlight changed text after Undo / Redo operations";
    homepage = "https://github.com/tzachar/highlight-undo.nvim";
    license = licenses.mit;
    maintainers = with maintainers; [ ];
    mainProgram = "highlight-undo.nvim";
    platforms = platforms.all;
  };

}
