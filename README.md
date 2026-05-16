# spring-kotlin-neovim

Neovim configuration for Spring (Java/Kotlin) development, forked from [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

## Requirements

- Neovim 0.12+
- Nerd Font (optional, for icons)

## Quick Start

```bash
git clone https://github.com/gom3az/spring-kotlin-neovim.git ~/.config/nvim
nvim --headless "+lua vim.pack.update()" +qa
```

Plugins auto-install on first launch. LSP servers install via Mason on first file open.

## Structure

```
~/.config/nvim/
├── init.lua              # Entry point
├── lua/config/
│   ├── foundation.lua    # Global options, leaders, basic keymaps
│   ├── autocmds.lua      # Yank highlight, terminal settings
│   ├── plugins.lua       # PackChanged build hooks
│   ├── ui.lua            # Colorscheme, lualine, neo-tree, bufferline,
│   │                     # gitsigns, neogit, diffview, which-key,
│   │                     # noice, fidget, mini (pairs/ai/surround/starter)
│   ├── search.lua        # Telescope setup + picker keymaps
│   ├── lsp.lua           # Mason, LSP config, LspAttach keymaps
│   ├── formatting.lua    # conform.nvim (autoformat on save)
│   ├── cmp.lua           # blink.cmp + LuaSnip + friendly-snippets
│   ├── treesitter.lua    # Parser install, textobjects, indentation
│   ├── dap.lua           # nvim-dap + dap-ui, Kotlin DAP config
│   ├── java.lua          # nvim-java (jdtls, DAP, test runner)
│   ├── rest.lua          # kulala.nvim (HTTP client)
│   ├── testing.lua       # neotest test runner
│   └── terminal.lua      # Quick terminal commands
├── nvim-pack-lock.json   # Plugin lock file
├── stylua.toml           # Lua formatter config
└── utils.lua             # gh() URL helper
```

## Features

- **Java / Kotlin IDE** — jdtls, kotlin_lsp, nvim-java, spring-boot.nvim
- **Debugging** — nvim-dap with Kotlin + Java DAP configurations
- **Testing** — neotest test runner
- **REST Client** — kulala.nvim (`.http` file support, like IntelliJ HTTP Client)
- **Autocomplete** — blink.cmp with LuaSnip snippets + friendly-snippets
- **Search** — Telescope with fzf-native fuzzy matcher
- **Git** — neogit (Git UI), diffview, gitsigns
- **UI** — catppuccin colorscheme, lualine statusline, neo-tree file explorer, bufferline tabs, mini.starter dashboard
- **Formatting** — conform.nvim (autoformat on save via stylua, prettierd, google-java-format)

## Plugins (44 total)

### Java / Spring
- `nvim-java` + `nvim-java-core` — jdtls wrapper, project config
- `spring-boot.nvim` — Spring Boot live reload, etc.
- `nvim-jdtls` — Java language server
- `nvim-java-dap` + `nvim-java-test` — Java debug + test runner
- `kotlin_lsp` — Kotlin language server (configured in lsp.lua)

### LSP Infrastructure
- `nvim-lspconfig` — LSP configuration
- `mason.nvim` + `mason-lspconfig.nvim` — LSP server installer
- `mason-nvim-dap.nvim` — Debug adapter installer

### Autocomplete
- `blink.cmp` + `blink.lib` — Completion engine
- `LuaSnip` — Snippet engine
- `friendly-snippets` — Premade snippet library

### UI
- `catppuccin/nvim` — Colorscheme
- `lualine.nvim` — Statusline
- `neo-tree.nvim` — File explorer
- `bufferline.nvim` — Tab line
- `mini.nvim` — Pairs, ai, surround, starter modules
- `noice.nvim` — Message/notification UI
- `fidget.nvim` — LSP progress spinner
- `which-key.nvim` — Keymap popup
- `nvim-web-devicons` — File icons
- `todo-comments.nvim` — TODO/FIXME highlighting

### Search & Navigation
- `telescope.nvim` + `plenary.nvim` — Fuzzy finder
- `telescope-fzf-native.nvim` — Rust fuzzy matcher
- `telescope-ui-select.nvim` — Better vim.ui.select
- `nvim-treesitter` + `nvim-treesitter-textobjects` — Syntax highlighting, code navigation
- `guess-indent.nvim` — Auto indentation detection

### Git
- `neogit` — Git UI (commit, status, etc.)
- `diffview.nvim` — Diff viewer
- `gitsigns.nvim` — Gutter signs, blame

### Debugging
- `nvim-dap` + `nvim-dap-ui` + `nvim-dap-virtual-text` — Debug adapter, UI, inline values

### Testing
- `neotest` + `nvim-nio` — Test runner framework

### Formatting & Linting
- `conform.nvim` — Autoformat on save
- `nvim-lint` — Linting

### REST Client
- `kulala.nvim` — HTTP request file support

### Async (dependency)
- `lua-async-await` — Dependency of nvim-java
