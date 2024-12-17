{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "nvim-ide";
  version = "6d695e5960701c178f03898dbd79041ea9ea375f";

  src = fetchFromGitHub {
    owner = "ldelossa";
    repo = "nvim-ide";
    rev = "6d695e5960701c178f03898dbd79041ea9ea375f";
    hash = "sha256-ldJk8X1Q1bOqYT4iKd2LGnpIERvltMGjyUNpJW5QUHQ=";
  };

  meta = with lib; {
    description = "A full featured IDE layer for Neovim. Heavily inspired by VSCode.";
    homepage = "https://github.com/ldelossa/nvim-ide";
    license = licenses.mit;
    maintainers = with maintainers; [];
    mainProgram = "nvim-ide";
    platforms = platforms.all;
  };
}
