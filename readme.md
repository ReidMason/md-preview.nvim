# md-preview.nvim

Adds a markdown preview window inside neovim.\
This plugin uses [Charm Glow](https://github.com/charmbracelet/glow) markdown renderer to draw the preview

## Installation

First install [Glow](https://github.com/charmbracelet/glow)

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
return {
    "reidmason/md-preview.nvim",
    cmd = { "OpenMdPreview", "CloseMdPreview" },
    opts = {}
}
```

You can then map a keybind to the user commands

```lua
vim.keymap.set("n", "<C-b>", "<cmd> OpenMdPreview <CR>", {})
```

### Commands

- OpenMdPreview
- CloseMdPreview

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
- [x] Disable line numbers
- [ ] Custom markdown renderers
- [ ] Toggle command
