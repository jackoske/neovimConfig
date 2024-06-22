# Neovim Configuration with Lua
attributes to [ @Primeagen](https://github.com/ThePrimeagen)
inparticular this video but also just inspiring me:
https://www.youtube.com/watch?v=w7i4amO_zaE

This repository contains my Neovim configuration, written in Lua. The setup leverages modern Neovim plugins to enhance productivity and provide a rich development environment. Below is a summary of the included packages and how they are configured.

## Summary of Packages

### Package Manager
- **wbthomason/packer.nvim**: Plugin manager for Neovim.

### Fuzzy Finder
- **nvim-telescope/telescope.nvim**: Highly extendable fuzzy finder over lists.
  - **nvim-lua/plenary.nvim**: Dependency for Telescope.

### File Explorer
- **preservim/nerdtree**: A tree explorer plugin for navigating the filesystem.
  - **ryanoasis/vim-devicons**: Optional dependency to add file type icons.

### Color Scheme
- **rose-pine/neovim**: Elegant color scheme for Neovim.

### Linting and Diagnostics
- **folke/trouble.nvim**: Pretty diagnostics, references, telescope results, quickfix, and location lists.

### Treesitter
- **nvim-treesitter/nvim-treesitter**: Treesitter configurations and abstraction layer.
- **nvim-treesitter/playground**: Treesitter playground for inspecting Treesitter's AST.
- **nvim-treesitter/nvim-treesitter-context**: Show code context.

### Navigation and Refactoring
- **theprimeagen/harpoon**: Navigation tool for quick file access.
- **theprimeagen/refactoring.nvim**: Refactoring library based on the Treesitter.

### Undo Management
- **mbbill/undotree**: Visualize your undo tree.

### Git Integration
- **tpope/vim-fugitive**: A Git wrapper for Neovim.

### LSP and Autocompletion
- **VonHeikemen/lsp-zero.nvim**: Simplified LSP setup.
  - **neovim/nvim-lspconfig**: Quickstart configurations for the Nvim LSP client.
  - **williamboman/mason.nvim**: Portable package manager.
  - **williamboman/mason-lspconfig.nvim**: Bridge between mason.nvim and nvim-lspconfig.
  - **hrsh7th/nvim-cmp**: Autocompletion plugin.
  - **hrsh7th/cmp-buffer**: Buffer completions for nvim-cmp.
  - **hrsh7th/cmp-path**: Path completions for nvim-cmp.
  - **saadparwaiz1/cmp_luasnip**: Snippet completions for nvim-cmp.
  - **hrsh7th/cmp-nvim-lsp**: LSP source for nvim-cmp.
  - **hrsh7th/cmp-nvim-lua**: Lua source for nvim-cmp.
  - **L3MON4D3/LuaSnip**: Snippet engine.
  - **rafamadriz/friendly-snippets**: Snippet collection.

### Productivity and Miscellaneous
- **folke/zen-mode.nvim**: Distraction-free coding.
- **github/copilot.vim**: GitHub Copilot integration.
- **eandrju/cellular-automaton.nvim**: Fun plugin to run cellular automaton patterns.
- **laytan/cloak.nvim**: Plugin to hide secrets in code.

## Configuration Files

### Directory Structure

```plaintext
├── after
│   └── plugin
│       ├── colors.lua
│       ├── fugitive.lua
│       ├── harpoon.lua
│       ├── lsp.lua
│       ├── lualine.lua
│       ├── telescope.lua
│       ├── treesitter.lua
│       └── undotree.lua
├── init.lua
├── lua
│   └── halo
│       ├── init.lua
│       ├── packer.lua
│       └── remap.lua
└── plugin
    └── packer_compiled.lua
```

### Key Configuration Files

- **init.lua**: Entry point for the Neovim configuration.
- **lua/halo/packer.lua**: Plugin management setup using `packer.nvim`.
- **lua/halo/remap.lua**: Custom key mappings.

### Plugin Specific Configuration

- **after/plugin/colors.lua**: Configuration for color scheme.
- **after/plugin/fugitive.lua**: Git integration settings.
- **after/plugin/harpoon.lua**: Settings for Harpoon.
- **after/plugin/lsp.lua**: LSP setup and configuration.
- **after/plugin/lualine.lua**: Status line configuration.
- **after/plugin/telescope.lua**: Telescope settings.
- **after/plugin/treesitter.lua**: Treesitter configuration.
- **after/plugin/undotree.lua**: Undo tree visualization settings.

## Installation

1. Clone this repository to your Neovim configuration directory:

    ```bash
    git clone https://github.com/yourusername/your-repo ~/.config/nvim
    ```

2. Install `packer.nvim` if it's not already installed:

    ```bash
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
      ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```

3. Open Neovim and install the plugins:

    ```bash
    nvim +PackerSync
    ```

:PackerSync



REMAPPINGS
```
<leader> = spacebar
<leader> u = undo tree
<leader>t =inspectTree command
<a>https://www.youtube.com/watch?v=FrMRyXtiJkc&t=160s</a>
:Ex = explore mode


<leader>e (opens nerdtree)
m to open options
a to create child node/new file
append / for folder


<leader> + p + v = see files
% here to create a new file
d create a new folder

<leader> + p  = find file name
<leader> p + s = find in file (grep)
<ctr>  w + o = to close all other windows

h to change to 
<ctrl> z = to go to termional 
fg <number of job> leave blank for last (fg)
<ctrl> e = toggle tree
<ctrl> w = switch between tree and open file
<leader> + a = save file to harpoon list
<ctrl> + e = open harpoon list
<ctrl> + h  + t to switch


%s/nameyouwanttosearch/nameyouwanttoreplace/g

```

## License

This configuration is open-source and available under the MIT License.
