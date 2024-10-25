{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "cppman-nvim";
  version = "d52248494affdad266732a8601077ba0e9a337cc";

  src = fetchFromGitHub {
    owner = "madskjeldgaard";
    repo = "cppman.nvim";
    hash = "";
    rev = "d52248494affdad266732a8601077ba0e9a337cc";
  };

  meta = with lib; {
    description = "";
    homepage = "";
    maintainers = with maintainers; [];
    mainProgram = "cppman.nvim";
    platforms = platforms.all;
  };
}
