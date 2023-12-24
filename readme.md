# md-preview.nvim

Adds a markdown preview window inside neovim.\
Enable the preview by pressing `ctrl+b`

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
return {
    "reidmason/md-preview.nvim",
    cmd = { "OpenMdPreview" },
    opts = {}
}
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
