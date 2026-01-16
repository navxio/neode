# Neo Development Environment

## Powered by [neovim](https://neovim.io) & [lazyvim](https://github.com/lazyvim/lazyvim)

<img width="3240" height="2122" alt="Config UI screenshot" src="https://github.com/user-attachments/assets/76d61f85-9780-41b5-8009-df4d13224dcd" />


### Intro

This config is an extension of the excellent lazyvim.org distro. It has most of
the core power of lazyvim which includes:

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

`<leader>ft` toggle floating terminal

`<leader>l` lazyvim window

`<leader>gg` open lazygit window (center)

`<leader>cs` show project symbols

`gcc` comment/uncomment line

`<c-t>` Overseer: toggle task list

`<c-x>` Overseer: run task

`<leader>/` grep the entire project

#### Stats

Loading time (empty): ~100ms

#### Setup notes

move lua/go_task to .local/share/nvim/lazy/overseer.nvim/lua/overseer/template/navxio/go_task.lua
