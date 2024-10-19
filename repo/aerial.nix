{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "aerial.nvim";
  version = "140f48fb068d21c02e753c63f7443649e55576f0";

  src = fetchFromGitHub {
    owner = "stevearc";
    repo = "aerial.nvim";
    hash = "sha256-7Sj7Z5blJ6Qk/99EV4EBv4vdK1dHDGFL3WRYLEnrRC0=";
    rev = "140f48fb068d21c02e753c63f7443649e55576f0";
  };

  meta = with lib; {
    description = "https://github.com/m-demare/hlargs.nvim";
    homepage = "https://github.com/stevearc/aerial.nvim";
    maintainers = with maintainers; [];
    mainProgram = "aerial.nvim";
    platforms = platforms.all;
  };
}
