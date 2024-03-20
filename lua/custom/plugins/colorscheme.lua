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
        vim.cmd.colorscheme 'solarized-osaka',
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
      }
    end,
  },
}
