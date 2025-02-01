{
  plugins = {
    grug-far = {
      enable = true;
      lazyLoad = {
        # settings = {
        #   cmd = "GrugFar";
        #   keys = [
        #     "<leader>sr"
        #   ];
        # };
      };
    };
  };
  keymaps = [
    {
      key = "<leader>sr";
      action = ''
        :lua require('grug-far').open({ prefills = { search = vim.fn.expand("<cword>") } })<cr>
      '';
      options = {
        silent = true;
        desc = "Search and replace all";
      };
    }
  ];
}
