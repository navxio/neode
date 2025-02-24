## Neo Development Environment

### Powered by [neovim](https://neovim.io) & [lazyvim](https://github.com/lazyvim/lazyvim)

![CleanShot 2025-02-02 at 22 10 19](https://github.com/user-attachments/assets/3a1daf31-c189-41a9-ac16-fb5be3dbbce2)

### Intro

This config is an extension of the excellent lazyvim.org distro. It has most of the core power of lazyvim which includes:

- multiple web languages support
- powerful editing with lsp based features
- auto completion with snippets
- powerful git integration with dedicated diff viewer
- telescope bazed fuzzy finder with different strategies
- Debugging support with `nvim-dap`
- floating terminal
- lua dev support
- task runner with auto task discovery for a variety of tools
- debugging support
- which-key for reviewing keybindings when typing
- modern notification / cmdline UI
- easy plugin management with lazyvim
- lazy loaded by default

### How to use

Just clone this repo inside your `~/.config/nvim`

### Major keybindings

leader key: `<space>`

`C-`` toggle floating terminal

`<leader>l` lazyvim window

`<leader>gg` open lazygit window (center)

`<c-.>` display code outline

`gcc` comment/uncomment line

`<c-t>` Overseer: toggle task list

`<c-o>` Overseer: run task

`<leader>np` NoNeckPain toggle

`<leader>/` grep the entire project

#### Stats

Loading time (empty): ~100ms

#### Setup notes

move lua/go_task to .local/share/nvim/lazy/overseer.nvim/lua/overseer/template/navxio/go_task.lua
