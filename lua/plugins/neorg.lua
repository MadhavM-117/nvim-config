return {
  'nvim-neorg/neorg',
  config = function()
    require('neorg').setup {
      load = {
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
        ['core.looking-glass'] = {},
        ['core.ui.calendar'] = {},
      },
    }
  end,
}
