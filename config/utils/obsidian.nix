{config, ...}: {
  plugins.obsidian = {
    enable = true;
    settings = {
      ui.enable = false; # required by render-markdown
      completion = {
        min_chars = 2;
        nvim_cmp = config.plugins.cmp.enable;
      };
      new_notes_location = "notes_subdir";
      workspaces = [
        {
          name = "work";
          path = "~/.obsidian/work";
        }
      ];
    };
  };
  keymaps = [
    {
      action = "<cmd>ObsidianOpen<CR>";
      key = "<leader>oo";
      options = {
        silent = false;
        desc = "Open Obsidian";
      };
    }
    {
      action = "<cmd>ObsidianNew<CR>";
      key = "<leader>onn";
      options = {
        silent = false;
        desc = "Create a new note";
      };
    }
    {
      action = "<cmd>ObsidianQuickSwitch<CR>";
      key = "<leader>oq";
      options = {
        silent = true;
        desc = "Quickly switch to another note";
      };
    }
    {
      action = "<cmd>ObsidianFollowLink<CR>";
      key = "<leader>of";
      options = {
        silent = true;
        desc = "Follow a note reference";
      };
    }
    {
      action = "<cmd>ObsidianBacklinks<CR>";
      key = "<leader>ob";
      options = {
        silent = true;
        desc = "Get backlinks for the current buffer";
      };
    }
    {
      action = "<cmd>ObsidianTags<CR>";
      key = "<leader>ott";
      options = {
        silent = true;
        desc = "Get a list of notes by tag";
      };
    }
    {
      action = "<cmd>ObsidianToday<CR>";
      key = "<leader>od";
      options = {
        silent = true;
        desc = "Open/create today's daily note";
      };
    }
    {
      action = "<cmd>ObsidianYesterday<CR>";
      key = "<leader>oy";
      options = {
        silent = true;
        desc = "Open/create yesterday's daily note";
      };
    }
    {
      action = "<cmd>ObsidianTomorrow<CR>";
      key = "<leader>otm";
      options = {
        silent = true;
        desc = "Open/create tomorrow's daily note";
      };
    }
    {
      action = "<cmd>ObsidianDailies<CR>";
      key = "<leader>oa";
      options = {
        silent = true;
        desc = "Open a list of daily notes";
      };
    }
    {
      action = "<cmd>ObsidianSearch<CR>";
      key = "<leader>os";
      options = {
        silent = true;
        desc = "Search for notes in your vault";
      };
    }
    {
      action = "<cmd>ObsidianLink<CR>";
      key = "<leader>ol";
      options = {
        silent = true;
        desc = "Link an inline visual selection of text to a note";
      };
    }
    {
      action = "<cmd>ObsidianLinkNew<CR>";
      key = "<leader>onl";
      options = {
        silent = true;
        desc = "Create a new note and link it to an inline visual selection
of text";
      };
    }
    {
      action = "<cmd>ObsidianLinks<CR>";
      key = "<leader>ol";
      options = {
        silent = true;
        desc = "Collect all links within the current buffer";
      };
    }
    {
      action = "<cmd>ObsidianExtractNote<CR>";
      key = "<leader>oe";
      options = {
        silent = false;
        desc = "Extract the selected text into a new note";
      };
    }
    {
      action = "<cmd>ObsidianWorkspace<CR>";
      key = "<leader>ow";
      options = {
        silent = true;
        desc = "Switch to another workspace";
      };
    }
    {
      action = "<cmd>ObsidianPasteImg<CR>";
      key = "<leader>op";
      options = {
        silent = true;
        desc = "Paste an image from the clipboard";
      };
    }
    {
      action = "<cmd>ObsidianRename<CR>";
      key = "<leader>or";
      options = {
        silent = false;
        desc = "Rename the current note";
      };
    }
    {
      action = "<cmd>ObsidianToggleCheckbox<CR>";
      key = "<leader>oc";
      options = {
        silent = true;
        desc = "Cycle through checkbox options";
      };
    }
    {
      action = "<cmd>ObsidianTOC<CR>";
      key = "<leader>otc";
      options = {
        silent = true;
        desc = "Load the table of contents";
      };
    }
  ];
}
