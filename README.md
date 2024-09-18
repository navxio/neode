## Neo Development Environment

### Powered by [neovim](https://neovim.io) & [lazyvim](https://github.com/lazyvim/lazyvim)

![CleanShot 2024-09-18 at 14 36 56](https://github.com/user-attachments/assets/e17f314c-6d95-43b3-b942-dfc26a625f03)


### Intro

This config is actually an extension of the excellent lazyvim.org distro which i have modulated for my own purposes. It has most of the core power of lazyvim which includes:

- multiple web languages support
- preconfigured completion with snippets support
- git integration
- telescope bazed fuzzy finder with different strategies
- file explorer
- floating terminal
- lua dev support

### Major keybindings

`C-` ` toggle floating terminal

`C-t` open / switch to terminal window

`<leader>se` list all the relevant snippets in`ivy` view

`<leader>l` lazyvim window

`<c-g>` open lazygit window (center)

`<c-x>` close current window

`<c-n>` neotree toggle

`<c-.>` display code outline

`<c-e>`

#### TODO

- [ ] screenshots

#### Stats

Loading time: ~60ms

#### Setup notes

move config/go_task to .local/share/nvim/lazy/overseer.nvim/lua/overseer/template/navxio/go_task.lua
