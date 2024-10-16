{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "highlight-undo.nvim";
  version = "ee2f6355e08719fea902e7c478aa7351934f2bb6";

  src = fetchFromGitHub {
    owner = "tzachar";
    repo = "highlight-undo.nvim";
    hash = "sha256-YOU0vZ9vs1/kAeKpSNo5VHZ/uoTtX2XLIXc2cHd+J10=";
    rev = "ee2f6355e08719fea902e7c478aa7351934f2bb6";
  };

  meta = with lib; {
    description = "Highlight changed text after Undo / Redo operations";
    homepage = "https://github.com/tzachar/highlight-undo.nvim";
    license = licenses.mit;
    maintainers = with maintainers; [];
    mainProgram = "highlight-undo.nvim";
    platforms = platforms.all;
  };
}
