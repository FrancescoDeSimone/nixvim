# nixvim

This is my Neovim config built with [nixvim from nix-community](https://github.com/nix-community/nixvim).

## Installation

You can install it with the makefile (specify INSTALL_PATH to the path where you want to install):

```sh
make install
```

or you can install this config using Nix or by downloading the appimages from the releases.

### Using Nix

1. Install Nix.
2. [enable flakes](https://nixos.wiki/wiki/Flakes)
3. run
   ```
   nix run git+https://github.com/FrancescoDeSimone/nixvim
   ```

### Downloading the Appimage

1. Go to the [releases page](https://github.com/FrancescoDeSimone/nixvim/releases).
2. Download the appimage  and give it executable permission

