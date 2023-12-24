# md-preview.nvim

Adds a markdown preview window inside neovim.

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
return {
    "reidmason/md-preview.nvim",
    cmd = { "OpenMdPreview", "CloseMdPreview" },
    opts = {}
}
```

You can then map a keybind to the user created user commands

```lua
vim.keymap.set("n", "<C-b>", "<cmd> OpenMdPreview <CR>", {})
```

### Setup options

```lua
require("md-preview.nvim").setup({
  showLineNumbers = false,
})
```

### Roadmap

- [x] Allow custom mappings
- [x] Auto close command
- [x] User command for opening
