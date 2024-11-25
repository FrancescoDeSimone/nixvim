{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "leetcode.nvim";
  version = "9197cf8f09b8b50056388a6792e058af818468fe";

  src = fetchFromGitHub {
    owner = "kawre";
    repo = "leetcode.nvim";
    rev = "9197cf8f09b8b50056388a6792e058af818468fe";
    hash = "sha256-mrIn9bY+Wz0oc8Wkyx/zKFl1o1le5C3n96iL0lV3X2g=";
  };

  meta = with lib; {
    description = "A Neovim plugin enabling you to solve LeetCode problems";
    homepage = "https://github.com/kawre/leetcode.nvim";
    license = licenses.mit;
    maintainers = with maintainers; [];
    mainProgram = "leetcode";
    platforms = platforms.all;
  };
}
