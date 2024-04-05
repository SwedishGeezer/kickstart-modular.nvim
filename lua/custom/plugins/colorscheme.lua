return {
  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require('solarized-osaka').setup {
        transparent = true,
        sidebars = 'transparent',
        floats = 'transparent',
        terminal_colors = false,
        -- vim.cmd.colorscheme 'solarized-osaka',
      }
    end,
  },

  {
    'ribru17/bamboo.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('bamboo').setup {
        transparent = true,
        lualine = {
          transparent = true,
        },
        -- vim.cmd.colorscheme 'bamboo',
      }
    end,
  },
  {
    'samharju/synthweave.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'synthweave-transparent'
    end,
  },
  {
    'catppuccin/nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        transparent_background = true,
        no_italic = true,
        styles = {
          comments = { 'bold' },
        },
        default_integrations = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          treesitter = true,
          neotree = true,
        },
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
