{ lib, vimUtils, fetchFromGitHub }:

vimUtils.buildVimPlugin rec {
  pname = "nvim-dap-rr";
  version = "2023-10-25";

  src = fetchFromGitHub {
    owner = "jonboh";
    repo = "nvim-dap-rr";
    rev = "89d41b02f7495e29ea0d4279fb98942b3ccb737d";
    hash = "sha256-jouY+7rvte90cn8hkFhnB5BJDolkNnuosAvfF0jL0nU=";
  };

  meta = with lib; {
    description =
      "Dap configuration for the record and replay debugger. Supports Rust, C++ and C";
    homepage = "https://github.com/jonboh/nvim-dap-rr";
    license = licenses.mit;
    maintainers = with maintainers; [ ];
    mainProgram = "nvim-dap-rr";
    platforms = platforms.all;
  };
}
