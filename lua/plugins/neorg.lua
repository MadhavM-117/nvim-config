return {
  'madhavm-117/neorg',
  branch = 'debug',
  dependencies = { { 'nvim-neorg/neorg-telescope' } },
  config = function()
    require('neorg').setup {
      load = {
        ['core.clipboard.code-blocks'] = {},
        ['core.completion'] = { config = { engine = 'nvim-cmp' } },
        ['core.concealer'] = {
          config = {
            icon_preset = 'diamond',
          },
        },
        ['core.defaults'] = {},
        ['core.dirman'] = {
          config = {
            workspaces = {
              notes = '~/personal/notes',
              marble = '~/marble/notes',
            },
            default_workspace = 'notes',
          },
        },
        ['core.esupports.metagen'] = {
          config = {
            type = 'auto',
          },
        },
        ['core.integrations.nvim-cmp'] = {},
        ['core.integrations.telescope'] = {},
        ['core.integrations.treesitter'] = {},
        ['core.keybinds'] = {},
        ['core.looking-glass'] = {},
        ['core.text-objects'] = {},
        ['core.ui'] = {},
        ['core.ui.calendar'] = {},
      },
    }

    vim.keymap.set('n', '<leader>nr', '<cmd>Neorg return<CR>', { desc = '[N]eorg [Return]' })

    vim.keymap.set('n', '<leader>njt', function()
      if vim.bo.buftype ~= '' then
        -- work around for the weirdness when you try to enter journal while on a neotree buffer
        vim.api.nvim_command ':Neorg index'
        vim.defer_fn(function()
          vim.api.nvim_command ':Neorg journal today'
        end, 100)
      else
        vim.api.nvim_command ':Neorg journal today'
      end
    end, { desc = '[N]eorg - [J]ournal [T]oday' })

    vim.keymap.set('n', '<leader>njc', function()
      if vim.bo.buftype ~= '' then
        -- work around for the weirdness when you try to enter journal while on a neotree buffer
        vim.api.nvim_command ':Neorg index'
        vim.defer_fn(function()
          vim.api.nvim_command ':Neorg journal custom'
        end, 100)
      else
        vim.api.nvim_command ':Neorg journal custom'
      end
    end, { desc = '[N]eorg - [J]ournal @ [C]ustom Date' })
  end,
}
