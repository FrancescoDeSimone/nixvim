{pkgs, ...}: let
  leetcode = (pkgs.callPackage ../../repo/leetcode.nix {}).overrideAttrs {
    dependencies = with pkgs; [
      vimPlugins.nui-nvim
      vimPlugins.plenary-nvim
      vimPlugins.telescope-nvim
      vimPlugins.nvim-web-devicons
      tree-sitter-grammars.tree-sitter-html
    ];
    nvimSkipModule = [
      "leetcode-ui.layout.console"
      "leetcode-ui.question"
      "leetcode-ui.renderer.menu"
      "leetcode-ui.renderer.result"
      "leetcode-ui.popup.info"
      "leetcode-ui.popup.languages"
      "leetcode-ui.popup.skills"
      "leetcode-ui.popup.console.result"
      "leetcode-ui.group.similar-questions"
      "leetcode-ui.group.page.stats"
      "leetcode-plugins.cn.api"
      "leetcode.pickers.question"
      "leetcode.pickers.language"
      "leetcode.api.utils"
      "leetcode.api.problems"
      "leetcode.api.headers"
      "leetcode.api.question"
      "leetcode.api.interpreter"
      "leetcode.api.statistics"
      "leetcode.api.auth"
      "leetcode.runner.init"
      "leetcode.cache.init"
      "leetcode.cache.problemlist"
      "leetcode.cache.cookie"
      "leetcode-ui.lines.calendar"
      "leetcode-ui.lines.solved"
    ];
  };
in {
  config = {
    extraPlugins = [
      leetcode
    ];
    extraConfigLua = ''
      require('leetcode').setup({
        image_support = true,
      })
    '';
  };
}
