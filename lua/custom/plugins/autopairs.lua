return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/nvim-cmp',
  },
  config = function()
    -- Import nvim-autoparis
    local autopairs = require 'nvim-autopairs'

    -- Configuring autopairs
    autopairs.setup {
      check_ts = true,
      ts_config = {
        lua = { 'string' }, -- Dont add pairs to lua strings treesitter node
        javascript = { 'template_string' }, -- Dont add pairs to template_strings treesitter mode
      },
    }

    local cmp_autopairs = require 'nvim-autopairs.completion.cmp'

    local cmp = require 'cmp'

    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
  end,
}
