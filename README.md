## Neo Development Environment

### Powered by [neovim](https://neovim.io) & [lazyvim](https://github.com/lazyvim/lazyvim)

![CleanShot 2024-09-18 at 14 36 56](https://github.com/user-attachments/assets/e17f314c-6d95-43b3-b942-dfc26a625f03)

### Intro

This config is actually an extension of the excellent lazyvim.org distro which i have modulated for my own purposes. It has most of the core power of lazyvim which includes:

- multiple web languages support (syntax highlighting)
- powerful editing with lsp based features
- auto completion with snippets support
- powerful git integration with dedicated diff viewer
- telescope bazed fuzzy finder with different strategies
- file explorer
- floating terminal
- lua dev support
- task runner
- debugging support
- which-key for reviewing keybindings when typing
- modern notification / cmdline UI
- easy plugin management with lazyvim

### How to use:

Just clone this repo inside your `~/.config/nvim`

### Major keybindings

`C-` ` toggle floating terminal

`<leader>l` lazyvim window

`<c-g>` open lazygit window (center)

`<c-.>` display code outline

`gcc` comment/uncomment line

#### Stats

Loading time (empty): ~60ms

#### Setup notes

move config/go_task to .local/share/nvim/lazy/overseer.nvim/lua/overseer/template/navxio/go_task.lua
