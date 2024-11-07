{
  config,
  pkgs,
  ...
}: {
  # Needed for RustPlay
  extraPlugins = with pkgs.vimPlugins; [webapi-vim];
  plugins = {
    rust-tools.enable = !config.plugins.rustaceanvim.enable;
    crates-nvim = {enable = true;};
    rustaceanvim = {
      enable = true;
      settings = {
        dap = {
          autoloadConfigurations = true;
        };
        server = {
          default_settings = {
            rust-analyzer = {
              completion.fullFunctionSignatures.enable = true;
              cargo = {
                buildScripts.enable = true;
                features = "all";
              };

              diagnostics = {
                enable = true;
                styleLints.enable = true;
              };

              checkOnSave = true;
              check = {
                command = "clippy";
                features = "all";
              };

              files = {
                excludeDirs = [
                  ".cargo"
                  ".direnv"
                  ".git"
                  "node_modules"
                  "target"
                ];
              };

              inlayHints = {
                bindingModeHints.enable = true;
                closureStyle = "rust_analyzer";
                closureReturnTypeHints.enable = "always";
                discriminantHints.enable = "always";
                expressionAdjustmentHints.enable = "always";
                implicitDrops.enable = true;
                lifetimeElisionHints.enable = "always";
                rangeExclusiveHints.enable = true;
              };

              procMacro = {
                enable = true;
              };
              rustc.source = "discover";
              rust.analyzerTargetDir = true;
            };
          };
        };
      };
    };
  };
}
