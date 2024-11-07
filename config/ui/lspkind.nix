{config, ...}: {
  plugins.lspkind = {
    enable = true;
    cmp = {
      enable = config.plugins.cmp.enable;
      menu = {
        buffer = "";
        calc = "";
        cmdline = "";
        emoji = "󰞅";
        git = "";
        luasnip = "󰩫";
        nvim_lsp = "";
        nvim_lua = "";
        path = "";
        spell = "";
        treesitter = "󰔱";
        nixpkgs_maintainers = "";
      };
    };
    extraOptions = {
      maxwidth = 50;
      ellipsis_char = "...";
    };
  };
}
