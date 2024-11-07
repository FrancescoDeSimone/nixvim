{
  opts,
  helpers,
  ...
}: {
  config = {
    autoCmd = [
      {
        event = ["FileWritePre" "FileAppendPre" "FilterWritePre" "BufWritePre"];
        pattern = ["*"];
        command = ":lua MiniTrailspace.trim()";
      }
      {
        event = ["FileWritePre" "FileAppendPre" "FilterWritePre" "BufWritePre"];
        pattern = ["*"];
        command = ":lua MiniTrailspace.trim_last_lines()";
      }
      {
        event = ["InsertLeave"];
        pattern = ["*"];
        # idk why show() doesn't work
        command = ":lua vim.diagnostic.enable(0)";
      }
      {
        event = ["InsertEnter"];
        pattern = ["*"];
        command = ":lua vim.diagnostic.hide()";
      }
      {
        event = ["CursorHold"];
        desc = "lsp show diagnostics on CursorHold";
        callback =
          helpers.mkRaw #lua

          ''
            function()
             local hover_opts = {
                focusable = false,
                close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
                border = "rounded",
                source = "always",
              }
              vim.diagnostic.open_float(nil, hover_opts)
            end
          '';
      }
      {
        event = ["VimResized"];
        pattern = ["*"];
        command = "wincmd =";
      }
    ];
  };
}
