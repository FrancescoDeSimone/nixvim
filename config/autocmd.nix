{
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
        pattern = ["*"];
        command = ":lua vim.diagnostic.open_float(nil, {focus=false})";
      }
      {
        event = ["VimResized"];
        pattern = ["*"];
        command = "wincmd =";
      }
    ];
  };
}
