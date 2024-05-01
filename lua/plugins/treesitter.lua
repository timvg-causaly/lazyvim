return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "bash", "c", "html", "lua", "markdown", "vim", "vimdoc", "python" },
    -- Autoinstall languages that are not installed

    auto_install = true,
    ignore_install = { "csv" },
    highlight = {
      enable = true,
      -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
      --  If you are experiencing weird indenting issues, add the language to
      --  the list of additional_vim_regex_highlighting and disabled languages for indent.
      disable = function(_, bufnr)
        return vim.api.nvim_buf_line_count(bufnr) > 100000
      end,
      additional_vim_regex_highlighting = { "ruby", "python" },
    },
    indent = { enable = true, disable = { "ruby", "python" } },
  },
}
