{
  lib,
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin rec {
  pname = "symbol-usage";
  version = "0f9b3da014b7e41559b643e7461fcabb2a7dc83a";

  src = fetchFromGitHub {
    owner = "Wansmer";
    repo = "symbol-usage.nvim";
    rev = "0f9b3da014b7e41559b643e7461fcabb2a7dc83a";
    hash = "sha256-vNVrh8MV7KZoh2MtP+hAr6Uz20qMMMUcbua/W71lRn0=";
  };

  meta = with lib; {
    description = "Display references, definitions and implementations of document symbols";
    homepage = "https://github.com/Wansmer/symbol-usage.nvim";
    license = licenses.mit;
    maintainers = with maintainers; [];
    mainProgram = "symbol-usage";
    platforms = platforms.all;
  };
}
