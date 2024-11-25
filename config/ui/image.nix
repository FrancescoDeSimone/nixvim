{pkgs, ...}: {
  extraPlugins = with pkgs; [ueberzugpp];
  plugins.image = {
    enable = true;
    backend = "kitty";
    ueberzugPackage = pkgs.ueberzugpp;
  };
}
