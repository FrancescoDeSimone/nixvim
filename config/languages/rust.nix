{ pkgs, ... }:

{
  plugins.crates-nvim = { enable = true; };
  plugins.rust-tools = { enable = true; };
  # plugins.rustaceanvim.enable = true;
}
