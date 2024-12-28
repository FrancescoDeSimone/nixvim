{config, ...}: {
  plugins.nui = {
    enable = true;
    autoLoad = true;
  };
  plugins.noice = {
    enable = true;
    settings = {
      cmdline = {
        enabled = true;
        format = {
          cmdline = {
            icon = "";
            lang = "vim";
            pattern = "^:";
          };
          filter = {
            icon = "$";
            lang = "bash";
            pattern = "^:%s*!";
          };
          help = {
            icon = "";
            pattern = "^:%s*he?l?p?%s+";
          };
          input = {};
          lua = {
            icon = "";
            lang = "lua";
            pattern = "^:%s*lua%s+";
          };
          search_down = {
            icon = " ";
            kind = "search";
            lang = "regex";
            pattern = "^/";
          };
          search_up = {
            icon = " ";
            kind = "search";
            lang = "regex";
            pattern = "?%?";
          };
        };
        view = "cmdline_popup";
      };
      health.checker = true;
      lsp = {
        documentation = {
          opts = {
            format = ["{message}"];
            lang = "markdown";
            render = "plain";
            replace = true;
            win_options = {
              winhighlight = {
                Normal = "NormalFloat";
                FloatBorder = "FloatBorder";
              };
              concealcursor = "n";
              conceallevel = 3;
            };
          };
          view = "hover";
        };
        hover = {
          enabled = true;
        };

        message = {
          enabled = true;
          view = "notify";
        };
        override = {
          "cmp.entry.get_documentation" = config.plugins.cmp.enable;
          "vim.lsp.util.convert_input_to_markdown_lines" = true;
          "vim.lsp.util.stylize_markdown" = true;
        };
        progress = {
          enabled = true;
          format = "lsp_progress";
          formatDone = "lsp_progress";
          view = "mini"; # https://github.com/folke/noice.nvim?tab=readme-ov-file#-views
        };
        signature = {
          enabled = true;
          autoOpen = {
            enabled = true;
            luasnip = true;
            throttle = 50;
            trigger = true;
          };
        };
      };
      markdown = {
        highlights = {
          "@%S+" = "@parameter";
          "^%s*(Parameters:)" = "@text.title";
          "^%s*(Return:)" = "@text.title";
          "^%s*(See also:)" = "@text.title";
          "{%S-}" = "@parameter";
          "|%S-|" = "@text.reference";
        };
        hover = {
          "%[.-%]%((%S-)%)" = {__raw = "require('noice.util').open";};
          "|(%S-)|" = {__raw = "vim.cmd.help";};
        };
      };
      routes = [
        {
          view = "split";
          filter = {
            event = "msg_show";
            min_height = 20;
          };
        }
      ];
      messages = {
        enabled = true;
        view = "notify";
        view_error = "notify";
        view_history = "messages";
        view_search = "virtualtext";
        view_warn = "notify";
      };
      notify = {
        enabled = true;
        view = "notify";
      };
      popupmenu = {
        backend = "nui";
        enabled = true;
        kindIcons = true;
      };
      presets = {
        bottom_search = true;
        command_palette = true;
        inc_rename = false;
        long_message_to_split = true;
        lsp_doc_border = false;
      };
      redirect = {
        filter = {event = "msg_show";};
        view = "split";
      };

      smartMove = {
        enabled = true;
        excludedFiletypes = ["cmp_menu" "cmp_docs" "notify"];
      };
      commands = {
        errors = {
          filter = {error = true;};
          filter_opts = {reverse = true;};
          opts = {
            enter = true;
            format = "details";
          };
          view = "split";
        };
        history = {
          filter = {
            any = [
              {event = "notify";}
              {error = true;}
              {warning = true;}
              {
                event = "msg_show";
                kind = [""];
              }
              {
                event = "lsp";
                kind = "message";
              }
            ];
          };
          opts = {
            enter = true;
            format = "details";
          };
          view = "split";
        };
        last = {
          filter = {
            any = [
              {event = "notify";}
              {error = true;}
              {warning = true;}
              {
                event = "msg_show";
                kind = [""];
              }
              {
                event = "lsp";
                kind = "message";
              }
            ];
          };
          filter_opts = {count = 1;};
          opts = {
            enter = true;
            format = "details";
          };
          view = "popup";
        };
      };
    };
  };
}
