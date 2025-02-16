{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "telescope-terraform-doc";
  version = "28efe1f3cb2ed4c83fa69000ae8afd2f85d62826";

  src = fetchFromGitHub {
    owner = "ANGkeith";
    repo = "telescope-terraform-doc.nvim";
    rev = "28efe1f3cb2ed4c83fa69000ae8afd2f85d62826";
    hash = "sha256-ZMdsaW9wjmep0CMNCj8k2jSvV8aLMYmiOFm3iD8/pJw=";
  };

  meta = with lib; {
    description = "telescope-terraform-doc.nvim is an extension for telescope.nvim that provides its users with ability to search and browse terraform providers docs";
    homepage = "https://github.com/kawre/leetcode.nvim";
    license = licenses.mit;
    maintainers = with maintainers; [];
    mainProgram = "telescope-terraform-doc";
    platforms = platforms.all;
  };
}
