{pkgs, ...}: {
  extraPlugins = with pkgs; [ueberzugpp];
  plugins.image = {
    enable = true;
    backend = "ueberzug";
    ueberzugPackage = pkgs.ueberzugpp;
    editorOnlyRenderWhenFocused = true;
    windowOverlapClearEnabled = true;
    integrations.markdown = {
      clearInInsertMode = true;
    };
  };
}
