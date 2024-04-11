{ lib, vimUtils, fetchFromGitHub }:

vimUtils.buildVimPlugin rec {
  pname = "github-nvim-theme";
  version = "v1.0.1";

  src = fetchFromGitHub {
    owner = "projekt0n";
    repo = "github-nvim-theme";
    hash = "sha256-30+5q6qE1GCetNKdUC15LcJeat5e0wj9XtNwGdpRsgk=";
    rev = "v1.0.1";
  };

  meta = with lib; {
    description = "Github's Neovim themes ";
    homepage = "https://github.com/projekt0n/github-nvim-theme";
    license = licenses.mit;
    maintainers = with maintainers; [ ];
    mainProgram = "github-nvim-theme";
    platforms = platforms.all;
  };

}
