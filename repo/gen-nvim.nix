{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "gen.nvim";
  version = "";

  src = fetchFromGitHub {
    owner = "David-Kunz";
    repo = "gen.nvim";
    hash = "sha256-rBUltJdluSseNUiTfjBZyuBwrGrASWbW1ROVdcAW6ug=";
    rev = "83f1d6b6ffa6a6f32f6a93a33adc853f27541a94";
  };

  meta = with lib; {
    description = " Free, ultrafast Copilot alternative for Vim and Neovim ";
    homepage = "https://github.com/David-Kunz/gen.nvim";
    maintainers = with maintainers; [];
    mainProgram = "gen.nix";
    platforms = platforms.all;
  };
}
