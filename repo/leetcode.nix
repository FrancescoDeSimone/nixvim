{ lib, vimUtils, fetchFromGitHub }:

vimUtils.buildVimPlugin rec {
  pname = "leetcode.nvim";
  version = "v0.2.0";

  src = fetchFromGitHub {
    owner = "kawre";
    repo = "leetcode.nvim";
    rev = "v0.2.0";
    hash = "sha256-rzmJHE02Zhnmlos4HZHS/UxFXW+c+4BBt1BjbxZPmHE=";
  };

  meta = with lib; {
    description = "A Neovim plugin enabling you to solve LeetCode problems";
    homepage = "https://github.com/kawre/leetcode.nvim";
    license = licenses.mit;
    maintainers = with maintainers; [ ];
    mainProgram = "leetcode";
    platforms = platforms.all;
  };

}
