{
  pkgs,
  lib,
  ...
}: {
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;
      formatters_by_ft = {
        html = [["prettierd" "prettier"]];
        css = [["prettierd" "prettier"]];
        sh = [
          "shellcheck"
          "shellharden"
          "shfmt"
        ];
        javascript = [["prettierd" "prettier"]];
        terraform = ["terraform_fmt"];
        tf = ["terraform_fmt"];
        yaml = ["yamlfmt"];
        javascriptreact = [["prettierd"]];
        typescript = [["prettierd"]];
        typescriptreact = [["prettierd"]];
        c = ["clang_format"];
        cmake = ["cmake-format"];
        cpp = ["clang_format"];
        json = ["jq"];
        python = ["black"];
        lua = ["stylua"];
        nix = ["alejandra"];
        markdown = ["deno_fmt"];
        rust = ["rustfmt"];
        toml = ["taplo"];
        "_" = [
          "squeeze_blanks"
          "trim_whitespace"
          "trim_newlines"
        ];
      };
      formatters = {
        black = {
          command = lib.getExe pkgs.black;
        };
        cmake-format = {
          command = lib.getExe pkgs.cmake-format;
        };
        deno_fmt = {
          command = lib.getExe pkgs.deno;
        };
        jq = {
          command = lib.getExe pkgs.jq;
        };
        alejandra = {
          command = lib.getExe pkgs.alejandra;
        };
        prettierd = {
          command = lib.getExe pkgs.prettierd;
        };
        rustfmt = {
          command = lib.getExe pkgs.rustfmt;
        };
        shellcheck = {
          command = lib.getExe pkgs.shellcheck;
        };
        shfmt = {
          command = lib.getExe pkgs.shfmt;
        };
        squeeze_blanks = {
          command = lib.getExe' pkgs.coreutils "cat";
        };
        shellharden = {
          command = lib.getExe pkgs.shellharden;
        };
        stylua = {
          command = lib.getExe pkgs.stylua;
        };
        taplo = {
          command = lib.getExe pkgs.taplo;
        };
        terraform_fmt = {
          command = lib.getExe pkgs.terraform;
        };
        xmlformat = {
          command = lib.getExe pkgs.xmlformat;
        };
        yamlfmt = {
          command = lib.getExe pkgs.yamlfmt;
        };
        zigfmt = {
          command = lib.getExe pkgs.zig;
        };
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>rf";
      action = "<cmd>lua require('conform').format()<cr>";
      options = {
        silent = true;
        desc = "Format Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>tf";
      action = ":FormatToggle<CR>";
      options = {
        silent = true;
        desc = "Toggle format";
      };
    }
  ];

  extraConfigLua = ''
    local conform = require("conform")
    local notify = require("notify")

    conform.setup({
      format_on_save = function(bufnr)
      -- Disable with a global or buffer-local variable
        if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
          return
        end
        return { timeout_ms = 500, lsp_fallback = true }
      end,
    })

    local function show_notification(message, level)
      notify(message, level, { title = "conform.nvim" })
    end

    vim.api.nvim_create_user_command("FormatToggle", function(args)
      local is_global = not args.bang
      if is_global then
        vim.g.disable_autoformat = not vim.g.disable_autoformat
      if vim.g.disable_autoformat then
        show_notification("Autoformat-on-save disabled globally", "info")
      else
        show_notification("Autoformat-on-save enabled globally", "info")
      end
      else
        vim.b.disable_autoformat = not vim.b.disable_autoformat
      if vim.b.disable_autoformat then
        show_notification("Autoformat-on-save disabled for this buffer", "info")
      else
        show_notification("Autoformat-on-save enabled for this buffer", "info")
        end
      end
    end, {
      desc = "Toggle autoformat-on-save",
      bang = true,
    })
  '';
}
