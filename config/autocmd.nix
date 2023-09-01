{
  config = {
    autoCmd = [
    {
      event = [ "BufWritePre" ];
      pattern = [ "*" ];
      command = ":%s/\s\+$//e";
    }
    ];
  };
}
