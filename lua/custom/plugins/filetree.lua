-- NOTE This is neo-tree plugin.
-- return {
--   'nvim-neo-tree/neo-tree.nvim',
--   branch = 'v3.x',
--   dependencies = {
--     'nvim-lua/plenary.nvim',
--     'nvim-tree/nvim-web-devicons',
--     'MunifTanjim/nui.nvim',
--   },
--   config = function()
--     vim.keymap.set('n', '<leader>ft', ':Neotree filesystem reveal left <CR>', {})
--     vim.keymap.set('n', '<leader>fq', ':Neotree filesystem close <CR>', {})
--     vim.keymap.set('n', '<leader>bf', ':Neotree buffers reveal float <CR>', {})
--     vim.keymap.set('n', '<leader>bq', ':Neotree buffers close <CR>', {})
--   end,
-- }

return {
  'nvim-tree/nvim-tree.lua',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local nvimtree = require 'nvim-tree'

    -- Recommended settings from nvim-tree docs
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup {
      view = {
        width = 35,
        relativenumber = true,
      },
      -- Changing folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = '', -- arrow when folder is closed
              arrow_open = '', -- arrow when folder is open
            },
          },
        },
      },
      -- Disabling window_picker for explorer to work well with splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      git = {
        ignore = false,
      },
    }

    -- Keymaps
    local keymap = vim.keymap

    keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })
    keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Toggle file exlorer on current file' })
    keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>', { desc = 'Collapse file explorer' })
    keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = 'Refresh file explorer' })
  end,
}
