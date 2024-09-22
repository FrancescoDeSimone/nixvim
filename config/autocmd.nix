{
  config = {
    autoCmd = [
      {
        event = ["VimEnter"];
        pattern = ["*"];
        command = "CodeiumDisable";
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
    extraConfigVim = ''
      function TrimWhiteSpace()
        %s/\s*$//
      endfunction
      autocmd FileWritePre * call TrimWhiteSpace()
      autocmd FileAppendPre * call TrimWhiteSpace()
      autocmd FilterWritePre * call TrimWhiteSpace()
      autocmd BufWritePre * call TrimWhiteSpace()
    '';
  };
}
