return {
    "nvim-neorg/neorg",
    lazy = false,  -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    dependencies = { { "nvim-neorg/neorg-telescope" } },
    config = function()
        require("neorg").setup {
            load = {
                ["core.defaults"] = {},
                ["core.ui.calendar"] = {},
                ["core.concealer"] = {
                    config = {
                        icon_preset = "diamond",
                    },
                },
                ["core.completion"] = { config = { engine = "nvim-cmp" } },
                ["core.integrations.nvim-cmp"] = {},
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            notes = "~/personal/notes",
                            marble = "~/marble/notes",
                        },
                        default_workspace = "notes",
                    },
                },
                ["core.integrations.telescope"] = {},
            }
        }
    end,
}
