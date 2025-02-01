{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "nvim-ide";
  version = "ca0278a9c3cbd7eaf8f62d1753c97c858bd01548";

  src = fetchFromGitHub {
    owner = "ldelossa";
    repo = "nvim-ide";
    rev = "ca0278a9c3cbd7eaf8f62d1753c97c858bd01548";
    hash = "sha256-jU2vmstsdnjcNItuFJLi8Oao7r1Bpmkkin07/0dVYlA=";
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
