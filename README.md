# Neovim

My Neovim configuration - a modern IDE setup focused on web development, Python, Rust, and Lua.

## Package Manager

- **folke/lazy.nvim** - Modern plugin manager with lazy loading support

## Plugins

### LSP & Language Support

- **neovim/nvim-lspconfig** - LSP configurations
- **mason.nvim** + **mason-lspconfig.nvim** - LSP server installer and manager
  - Configured servers: TypeScript, Lua, Python (pyright), Rust, Docker, CSS, Tailwind, ESLint, HTML, Prisma
- **linux-cultist/venv-selector.nvim** - Python virtual environment selector
- **folke/lazydev.nvim** - Enhanced Lua development for Neovim config

### Code Completion

- **saghen/blink.cmp** - Fast Rust-based completion engine
- **rafamadriz/friendly-snippets** - Snippet collection

### Syntax & Parsing

- **nvim-treesitter** - Syntax highlighting and parsing
  - 30+ language parsers configured
- **nvim-treesitter-textobjects** - Syntax-aware text objects
- **folke/ts-comments.nvim** - Context-aware commenting

### Formatting & Linting

- **stevearc/conform.nvim** - Code formatter with format-on-save
  - Formatters: prettier, stylua, ruff, black, shfmt
- **mfussenegger/nvim-lint** - Async linting

### File Navigation & Fuzzy Finding

- **nvim-neo-tree/neo-tree.nvim** - File explorer with git integration
- **folke/snacks.nvim** - QoL collection including picker, dashboard, terminal, git tools
- **ThePrimeagen/harpoon** (v2) - Quick file navigation

### Git

- **lewis6991/gitsigns.nvim** - Git decorations and inline blame

### UI & Theme

- **folke/tokyonight.nvim** - Clean dark theme with transparency
- **nvim-lualine/lualine.nvim** - Statusline

### Editor Enhancement

- **echasnovski/mini.ai** - Extended text objects
- **folke/todo-comments.nvim** - TODO/FIXME highlighting and search
- **folke/which-key.nvim** - Keybinding helper

### Note-Taking

- **nvim-neorg/neorg** - Advanced note-taking and organization
  - Workspace: `~/personal/notes`
  - Features: journal, calendar, telescope integration

### Terminal & Navigation

- **christoomey/vim-tmux-navigator** - Seamless tmux/vim navigation

### AI Integration

- **coder/claudecode.nvim** - Claude AI code assistance

## Features

- Format-on-save for multiple languages
- Comprehensive fuzzy finding (files, buffers, git, LSP symbols, diagnostics)
- Full LSP support with 12+ language servers
- Git integration with inline blame and diff
- AI-assisted development with Claude
- Organized note-taking with Neorg


