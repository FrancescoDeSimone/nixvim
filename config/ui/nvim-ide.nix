{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      (pkgs.callPackage ../../repo/nvim-ide.nix {})
    ];
    extraConfigLua = ''
        -- default components
        local bufferlist      = require('ide.components.bufferlist')
        local explorer        = require('ide.components.explorer')
        local outline         = require('ide.components.outline')
        local callhierarchy   = require('ide.components.callhierarchy')
        local timeline        = require('ide.components.timeline')
        local terminal        = require('ide.components.terminal')
        local terminalbrowser = require('ide.components.terminal.terminalbrowser')
        local changes         = require('ide.components.changes')
        local commits         = require('ide.components.commits')
        local branches        = require('ide.components.branches')
        local bookmarks       = require('ide.components.bookmarks')

        require('ide').setup({
      icon_set = "default",
      log_level = "info",
      panels = {
          left = "explorer",
          right = "git",
      },
      panel_groups = {
          explorer = { explorer.Name, outline.Name},
          git = { changes.Name, commits.Name, timeline.Name, branches.Name }
      },
      workspaces = {
          auto_open = 'left',
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
