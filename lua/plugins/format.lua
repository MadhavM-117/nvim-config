return {
  'stevearc/conform.nvim',
  keys = {
    -- format code blocks embedded in a file of [possibly] another type
    {
      '<leader>cF',
      function()
        require('conform').format { formatters = { 'injected' }, timeout_ms = 1000 }
      end,
      mode = { 'n', 'v' },
      desc = 'Format Injected Langs',
    },
    {
      '<leader>cf',
      function()
        require('conform').format { timeout_ms = 1000 }
      end,
      mode = { 'n', 'v' },
      desc = 'Format Code',
    },
  },

  opts = {

    -- LazyVim will use these options when formatting with the conform.nvim formatter
    format = {
      timeout_ms = 3000,
      async = false, -- not recommended to change
      quiet = false, -- not recommended to change
      lsp_fallback = true, -- not recommended to change
    },
    formatters_by_ft = {
      css = { { 'prettierd', 'prettier' } },
      fish = { 'fish_indent' },
      html = { { 'prettierd', 'prettier' } },
      javascript = { { 'prettierd', 'prettier' } },
      javascriptreact = { { 'prettierd', 'prettier' } },
      lua = { 'stylua' },
      python = { 'ruff_organize_imports', 'ruff_format', 'ruff_fix' },
      sh = { 'shfmt' },
      typescript = { { 'prettierd', 'prettier' } },
      typescriptreact = { { 'prettierd', 'prettier' } },
      yaml = { { 'prettierd', 'prettier' } },
    },
    format_on_save = {
      timeout_ms = 3000,
      async = false, -- not recommended to change
      quiet = false, -- not recommended to change
      lsp_fallback = true, -- not recommended to change
    },
    -- The options you set here will be merged with the builtin formatters.
    -- You can also define any custom formatters here.
    formatters = {
      injected = { options = { ignore_errors = true } },
    },
  },
}