{
  globals = {
    # Disable useless providers
    loaded_ruby_provider = 0; # Ruby
    loaded_perl_provider = 0; # Perl
    loaded_python_provider = 0; # Python 2
    # Custom for toggles
    disable_diagnostics = false;
    disable_autoformat = false;
    spell_enabled = true;
    colorizing_enabled = 1;
    first_buffer_opened = false;
    mapleader = " ";
    VM_theme = "purplegray";
    auto_session_pre_save_cmds = ["tabdo NvimTreeClose" "tabdo lua require'dapui'.close()"];
  };
}
