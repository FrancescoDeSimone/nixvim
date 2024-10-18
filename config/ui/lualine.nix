{
  plugins.lualine = {
    enable = true;
    settings = {
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
        lualine_c = ["filename"];
        lualine_x = ["encoding" "fileformat" "filetype"];
        lualine_y = ["progress" "location"];
        lualine_z = [''os.date("%R")''];
      };
    };
  };
}
