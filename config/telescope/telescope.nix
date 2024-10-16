{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "gr" = "lsp_references";
      "gd" = "lsp_definitions";
      "gi" = "lsp_implementations";
      "gt" = "lsp_type_definitions";
      "gS" = "lsp_document_symbols";
      "gW" = "lsp_workspace_symbols";
    };
    extensions = {
      fzf-native.enable = true;
      manix.enable = true;
      undo.enable = true;
      live-grep-args.enable = true;
      # ui-select = {
      #   settings = {
      #     specific_opts = {
      #       codeactions = true;
      #     };
      #   };
      # };
    };
    # If you'd prefer Telescope not to enter a normal-like mode when hitting escape (and instead exiting), you can map <Esc> to do so via:
    settings = {
      defaults = {
        mappings = {
          i = {
            "<esc>" = {
              __raw = ''
                function(...)
                  return require("telescope.actions").close(...)
                end'';
            };
          };
        };
      };
    };
    keymaps = {
      "<leader>/" = {
        action = "live_grep";
        options.desc = "Grep (root dir)";
      };
      "<leader>:" = {
        action = "command_history";
        options.desc = "Command History";
      };
      "<leader>f" = {
        action = "find_files";
        options.desc = "Find project files";
      };
      "<leader><leader>" = {
        action = "buffers";
        options.desc = "Buffers";
      };
      "<C-p>" = {
        action = "git_files";
        options.desc = "Search git files";
      };
      "<leader>gc" = {
        action = "git_commits";
        options.desc = "Commits";
      };
      "<leader>gs" = {
        action = "git_status";
        options.desc = "Status";
      };
      "<leader>sh" = {
        action = "help_tags";
        options.desc = "Help pages";
      };
      "<leader>sM" = {
        action = "man_pages";
        options.desc = "Man pages";
      };
      "<leader>sm" = {
        action = "marks";
        options.desc = "Jump to Mark";
      };
      "<leader>sR" = {
        action = "resume";
        options.desc = "Resume";
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>sd";
      action = "<cmd>Telescope diagnostics bufnr=0<cr>";
      options = {
        desc = "Document diagnostics";
      };
    }
    {
      mode = "n";
      key = "<leader>u";
      action = ":Telescope undo<cr>";
      options = {
        silent = true;
        desc = "Undo telescope menu";
      };
    }
    {
      mode = "n";
      key = "gj";
      action = ":Telescope jumplist<cr>";
      options = {
        silent = true;
        desc = "Telescope jumplist";
      };
    }
    {
      mode = "n";
      key = "<leader>st";
      action = "<cmd>TodoTelescope<cr>";
      options = {
        silent = true;
        desc = "Todo (Telescope)";
      };
    }
  ];
  extraConfigLua = ''
    local telescope = require('telescope')
    telescope.setup{
        pickers = {
          colorscheme = {
            enable_preview = true
          }
        }
    }
  '';
}
