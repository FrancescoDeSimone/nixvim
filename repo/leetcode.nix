{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "leetcode.nvim";
  version = "db7e1cd6b9191b34b4c1f2f96e4e3949cde9f951";

  src = fetchFromGitHub {
    owner = "kawre";
    repo = "leetcode.nvim";
    rev = "db7e1cd6b9191b34b4c1f2f96e4e3949cde9f951";
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
