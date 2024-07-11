return {
  'nvim-neorg/neorg',
  config = function()
    require('neorg').setup {
      load = {
        ['core.defaults'] = {},
        ['core.ui.calendar'] = {},
        ['core.concealer'] = {
          config = {
            icon_preset = 'diamond',
          },
        },
        ['core.esupports.metagen'] = {
          config = {
            type = 'auto',
          },
        },
        ['core.completion'] = { config = { engine = 'nvim-cmp' } },
        ['core.integrations.nvim-cmp'] = {},
        ['core.dirman'] = {
          config = {
            workspaces = {
              notes = '~/personal/notes',
              marble = '~/marble/notes',
            },
            default_workspace = 'notes',
          },
        },
        ['core.integrations.telescope'] = {},
      },
    }
  end,
}
