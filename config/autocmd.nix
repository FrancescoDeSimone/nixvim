{
  config = {
    autoCmd = [
      {
        event = [ "BufWritePre" ];
        pattern = [ "*" ];
        command = ":%s/\s\+$//e";
      }
      {
        event = [ "VimResized" ];
        pattern = [ "*" ];
        command = "wincmd =";
      }
    ];
  };
}
