{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "highlight-undo.nvim";
  version = "a5e2e2d43f6d131bf526619baeeeec32397b0789";

  src = fetchFromGitHub {
    owner = "tzachar";
    repo = "highlight-undo.nvim";
    hash = "sha256-YOU0vZ9vs1/kAeKpSNo5VHZ/uoTtX2XLIXc2cHd+J10=";
    rev = "a5e2e2d43f6d131bf526619baeeeec32397b0789";
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
