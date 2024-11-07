_: let
  get_bufnrs.__raw = ''
    function()
      local buf_size_limit = 1024 * 1024 -- 1MB size limit
      local bufs = vim.api.nvim_list_bufs()
      local valid_bufs = {}
      for _, buf in ipairs(bufs) do
        if vim.api.nvim_buf_is_loaded(buf) and vim.api.nvim_buf_get_offset(buf, vim.api.nvim_buf_line_count(buf)) < buf_size_limit then
          table.insert(valid_bufs, buf)
        end
      end
      return valid_bufs
    end
  '';
in {
  opts.completeopt = [
    "menu"
    "menuone"
    "noselect"
  ];

  plugins = {
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    cmp-cmdline.enable = true;
    # cmp-nvim-ultisnips.enable = true;
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        experimental = {ghost_text = true;};
        mapping = {
          "<C-d>" =
            # Lua
            "cmp.mapping.scroll_docs(-4)";
          "<C-f>" =
            # Lua
            "cmp.mapping.scroll_docs(4)";
          "<C-Space>" =
            # Lua
            "cmp.mapping.complete()";
          "<C-e>" =
            # Lua
            "cmp.mapping.close()";
          "<Down>" =
            # Lua
            "cmp.mapping(cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
          "<Tab>" =
            # Lua
            "cmp.mapping(cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
          "<Up>" =
            # Lua
            "cmp.mapping(cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
          "<C-Tab>" =
            # Lua
            "cmp.mapping(cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
          "<CR>" =
            # Lua
            "cmp.mapping.confirm({ select = false, behavior = cmp.ConfirmBehavior.Replace })";
        };

        snippet.expand =
          # Lua
          "function(args) require('luasnip').lsp_expand(args.body) end";

        sources = [
          {
            name = "nvim_lsp";
            priority = 1000;
            option = {
              inherit get_bufnrs;
            };
          }
          {
            name = "nvim_lsp_signature_help";
            priority = 1000;
            option = {
              inherit get_bufnrs;
            };
          }
          {
            name = "nvim_lsp_document_symbol";
            priority = 1000;
            option = {
              inherit get_bufnrs;
            };
          }
          {
            name = "luasnip";
            priority = 750;
          }
          {
            name = "buffer";
            priority = 500;
            option = {
              inherit get_bufnrs;
            };
          }
          {
            name = "path";
            priority = 300;
          }
        ];

        window = {
          completion.scrollbar = false;
          completion.__raw = ''cmp.config.window.bordered()'';
          documentation.__raw = ''cmp.config.window.bordered()'';
        };
      };
    };
  };
}
