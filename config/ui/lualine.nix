{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        disabled_filetypes = {
          statusline = [
            "aerial"
            "dap-repl"
            "NvimTree"
            "filetree"
          ];
        };
      };
      globalstatus = true;
      extensions = ["fzf"];
      ignoreFocus = ["NvimTree"];
      theme = "auto";
      sections = {
        lualine_a = ["mode"];
        lualine_b = [
          "branch"
          ""
          "diff"
          "diagnostics"
        ];
        lualine_c = [
          "filename"
          # Show active language server
          {
            __unkeyed.__raw = ''
              function()
                  local msg = ""
                  local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                  local clients = vim.lsp.get_active_clients()
                  if next(clients) == nil then
                      return msg
                  end
                  for _, client in ipairs(clients) do
                      local filetypes = client.config.filetypes
                      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                          return client.name
                      end
                  end
                  return msg
              end
            '';
            icon = "";
            color.fg = "#ffffff";
          }
        ];
        lualine_x = ["encoding" "fileformat" "filetype"];
        lualine_y = ["progress" "location"];
        lualine_z = [''os.date("%R")''];
      };
    };
  };
}
