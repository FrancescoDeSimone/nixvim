{ pkgs, ... }:

{
  plugins.crates-nvim = {
    enable = true;
  };

  plugins.rust-tools = {
    enable = true;
    extraOptions = {
      # https://github.com/simrat39/rust-tools.nvim/wiki/Debugging#codelldb-a-better-debugging-experience
      dap.adapter.__raw =
        let
          codelldb = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/";
        in
        "require('rust-tools.dap').get_codelldb_adapter('${codelldb}/adapter/codelldb', '${codelldb}/lldb/lib/liblldb.so')";

      server.on_attach.__raw = ''
        function(_, bufnr)
          vim.keymap.set("n", "<leader>db", function()
            require("dapui").open()
            if require("dap").session() == nil then
              require("rust-tools").debuggables.debuggables()
            else
              require("dap").continue()
            end
          end, {buffer = bufnr, desc = "Start/Continue"})
        end
      '';
    };

  };
}

