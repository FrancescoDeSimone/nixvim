{pkgs, ...}: let
  nvim-ide = (pkgs.callPackage ../../repo/nvim-ide.nix {}).overrideAttrs {
    nvimSkipModule = [
      "ide.components.bookmarks.init"
      "ide.workspaces.workspace_controller"
      "ide.workspaces.workspace_controller_test"
      "ide.workspaces.workspace_test"
      "ide.config"
      "ide.workspaces.workspace"
      "ide"
    ];
  };
in {
  config = {
    extraPlugins = [
      nvim-ide
    ];
    extraConfigLua = ''
        local explorer        = require('ide.components.explorer')
        local outline         = require('ide.components.outline')
        local callhierarchy   = require('ide.components.callhierarchy')
        local timeline        = require('ide.components.timeline')
        local changes         = require('ide.components.changes')
        local commits         = require('ide.components.commits')
        local branches        = require('ide.components.branches')

        require('ide').setup({
      icon_set = "default",
      log_level = "info",
      panels = {
          left = "explorer",
          right = "git",
      },
      panel_groups = {
          explorer = { explorer.Name, outline.Name, callhierarchy.Name},
          git = { changes.Name, commits.Name, timeline.Name, branches.Name }
      },
      workspaces = {
          auto_open = 'none',
          on_quit = "close"
      },
      panel_sizes = {
          left = 40,
          right = 50,
      }
        })
    '';
    keymaps = [
      {
        mode = "n";
        key = "<leader>gp";
        action = ":Workspace RightPanelToggle<cr>";
        options = {
          silent = true;
          desc = "Toggle git panel";
        };
      }
      {
        mode = "n";
        key = "<leader>e";
        action = ":Workspace LeftPanelToggle<cr>";
        options = {
          silent = true;
          desc = "Toggle explorer panel";
        };
      }
    ];
  };
}
