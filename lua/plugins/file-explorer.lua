-- File explorer and navigation plugins
return {
  -- Neo-tree is a Neovim plugin to browse the file system
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
      { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
      { '<leader>e', ':Neotree toggle<CR>', desc = 'Toggle File Explorer', silent = true },
      { '<C-e>', ':Neotree toggle<CR>', desc = 'Toggle File Explorer (VSCode style)', silent = true },
    },
    opts = {
      filesystem = {
        window = {
          mappings = {
            ['\\'] = 'close_window',
            ["o"] = function(state)
              local node = state.tree:get_node()
              local path = node:get_id()
              if path:match("%.pdf$") then
                vim.fn.jobstart({ "zathura", path }, { detach = true })
                vim.schedule(function()
                  vim.cmd("bd!") -- Close the buffer after opening Zathura
                end)
              else
                -- Custom handler to open files in new buffers
                require("neo-tree.sources.filesystem.commands").open(state)
              end
            end,
          },
        },
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
        hijack_netrw_behavior = "open_default",
      },
      default_component_configs = {
        indent = {
          with_expanders = true,
          expander_collapsed = "",
          expander_expanded = "",
          expander_highlight = "NeoTreeExpander",
        },
      },
      window = {
        width = 30,
        mappings = {
          ["<space>"] = false,
          ["<esc>"] = "cancel",
          ["P"] = { "toggle_preview", config = { use_float = true } },
        },
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function(_)
            vim.cmd("Neotree reveal")
          end
        },
      },
    },
  },
} 