{ lib, vimUtils, fetchFromGitHub }:

vimUtils.buildVimPlugin rec {
  pname = "codeium.vim";
  version = "2024-04-02";

  src = fetchFromGitHub {
    owner = "Exafunction";
    repo = "codeium.vim";
    hash = "sha256-I6Ev2m2WXhU3f2hXgjjmPhM2daoTyyScQZ+Oj0DgMB4=";
    rev = "31dd2962c81759be007895db6ce089feec397c86";
  };

  meta = with lib; {
    description = " Free, ultrafast Copilot alternative for Vim and Neovim ";
    homepage = "https://github.com/Exafunction/codeium.vim";
    license = licenses.mit;
    maintainers = with maintainers; [ ];
    mainProgram = "codeium";
    platforms = platforms.all;
  };

}
