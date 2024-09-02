{
  plugins.obsidian = {
    enable = true;
    settings = {
      completion = {
        min_chars = 2;
        nvim_cmp = true;
      };
      new_notes_location = "notes_subdir";
      workspaces = [
        {
          name = "work";
          path = "~/obsidian/work";
        }
        {
          name = "startup";
          path = "~/obsidian/startup";
        }
      ];
    };
  };
}
