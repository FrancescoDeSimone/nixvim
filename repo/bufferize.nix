{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "bufferize.vim";
  version = "ec7c4445a97f19e5784a6fb6ad3c3d4a8ff505ac";

  src = fetchFromGitHub {
    owner = "AndrewRadev";
    repo = "bufferize.vim";
    hash = "";
    rev = "ec7c4445a97f19e5784a6fb6ad3c3d4a8ff505ac";
  };

  meta = with lib; {
    description = "Execute a :command and show the output in a temporary buffer";
    homepage = "https://github.com/AndrewRadev/bufferize.vim";
    license = licenses.mit;
    maintainers = with maintainers; [];
    mainProgram = "bufferize";
    platforms = platforms.all;
  };
}
