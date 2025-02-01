{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs.vimPlugins; let
      genNvim = pkgs.callPackage ../../repo/gen-nvim.nix {};
    in [genNvim];
    extraConfigLua = ''
      require('gen').setup({
         model = "deepseek-r1",
         host = "localhost",
         port = "11434",
         quit_map = "q",
         retry_map = "<c-r>",
         init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
         command = function(options)
           local body = {model = options.model, stream = true}
           return "curl --silent --no-buffer -X POST http://" .. options.host .. ":" .. options.port .. "/api/chat -d $body"
         end,
         display_mode = "split",
         show_prompt = false,
         show_model = true,
         no_auto_close = true,
         debug = false
       })
    '';
  };
}
