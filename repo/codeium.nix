{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "codeium.vim";
  version = "dfe75c688a8ee9c3d192c51b6e7d315a3ca37d74";

  src = fetchFromGitHub {
    owner = "Exafunction";
    repo = "codeium.vim";
    hash = "sha256-I6Ev2m2WXhU3f2hXgjjmPhM2daoTyyScQZ+Oj0DgMB4=";
    rev = "dfe75c688a8ee9c3d192c51b6e7d315a3ca37d74";
  };

  meta = with lib; {
    description = " Free, ultrafast Copilot alternative for Vim and Neovim ";
    homepage = "https://github.com/Exafunction/codeium.vim";
    license = licenses.mit;
    maintainers = with maintainers; [];
    mainProgram = "codeium";
    platforms = platforms.all;
  };
}
