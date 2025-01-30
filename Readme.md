# nvim-copy-diagnostics

A very simple Neovim plugin for copying diagnostics from the current line to the clipboard.

## Installation

If you're using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
require('lazy').setup({
  { 'username/myplugin' }
})
```

If you're using a lazy plugins folder

```lua
-- nvim-copy-diagnostics.lua

return {
  'https://github.com/NickStafford2/nvim-copy-diagnostics.git'
}
```

## 🔑 Usage

1. Place your cursor on the code causing the error/warning/message.
2. Press `<leader>cy`
3. Profit
