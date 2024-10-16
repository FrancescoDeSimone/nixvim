{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "nvim-dap-rr";
  version = "1682c13a2096a4a6394c803e14f009f121400acf";

  src = fetchFromGitHub {
    owner = "jonboh";
    repo = "nvim-dap-rr";
    rev = "1682c13a2096a4a6394c803e14f009f121400acf";
    hash = "";
  };

  meta = with lib; {
    description = "Dap configuration for the record and replay debugger. Supports Rust, C++ and C";
    homepage = "https://github.com/jonboh/nvim-dap-rr";
    license = licenses.mit;
    maintainers = with maintainers; [];
    mainProgram = "nvim-dap-rr";
    platforms = platforms.all;
  };
}
