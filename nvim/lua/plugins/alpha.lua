return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.startify'

    dashboard.section.header.val = {
	    [[                                                     ]],
	    [[  __  __                 __  __                      ]],
	    [[ /\ \/\ \               /\ \/\ \  __                 ]],
	    [[ \ \ `\\ \     __    ___\ \ \ \ \/\_\    ___ ___     ]],
	    [[  \ \ , ` \  /'__`\ / __`\ \ \ \ \/\ \ /' __` __`\   ]],
	    [[   \ \ \`\ \/\  __//\ \L\ \ \ \_/ \ \ \/\ \/\ \/\ \  ]],
	    [[    \ \_\ \_\ \____\ \____/\ `\___/\ \_\ \_\ \_\ \_\ ]],
	    [[     \/_/\/_/\/____/\/___/  `\/__/  \/_/\/_/\/_/\/_/ ]],
	    [[                                                     ]],    }

    alpha.setup(dashboard.opts)
  end,
}

