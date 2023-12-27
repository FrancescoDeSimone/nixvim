{
  config = {
    autoCmd = [
      {
        event = [ "InsertLeave" ];
        pattern = [ "*" ];
        # idk why show() doesn't work
        command = ":lua vim.diagnostic.enable(0)";
      }
      {
        event = [ "InsertEnter" ];
        pattern = [ "*" ];
        command = ":lua vim.diagnostic.hide()";
      }
      {
        event = [ "CursorHold" ];
        pattern = [ "*" ];
        command = ":lua vim.diagnostic.open_float(nil, {focus=false})";
      }
      {
        event = [ "BufWritePre" ];
        pattern = [ "*" ];
        command = ":%s/s+$//e";
      }
      {
        event = [ "VimResized" ];
        pattern = [ "*" ];
        command = "wincmd =";
      }
    ];
  };
}
