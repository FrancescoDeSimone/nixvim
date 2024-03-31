{ lib, vimUtils, fetchFromGitHub }:

vimUtils.buildVimPlugin rec {
  pname = "eagle.nvim";
  version = "177957f";

  src = fetchFromGitHub {
    owner = "soulis-1256";
    repo = "eagle.nvim";
    rev = "177957f";
    hash = "sha256-fIcvYEzpERqZH5Xh8NQxrY3px4sAQO3V9De5jNTl3bQ=";
  };

  meta = with lib; {
    description = "A Neovim plugin enabling you to solve LeetCode problems";
    homepage = "https://github.com/kawre/leetcode.nvim";
    license = licenses.asl20;
    maintainers = with maintainers; [ ];
    platforms = platforms.all;
  };

}
