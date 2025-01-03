
require('which-key').setup {
  plugins = {
    registers = false
  },
  triggers = {
    { "<leader>", mode = {"n", "v"}},
  }
}

require('lualine').setup {
  options = {
    theme = 'OceanicNext'
  },
  sections = {
    lualine_a = {'branch', 'diff', 'diagnostics'},
    lualine_b = {
      {
        'buffers',
        show_filename_only = true,
        mode = 2
      }
    },
    lualine_c = {}
  }
}

require('neogit').setup { }

require('conform').setup({
  formatters_by_ft = {
    clojure = { "cljfmt" }
  }
})

local actions = require("telescope.actions")

require('telescope').setup {
  defaults = {
    dynamic_preview_title = true,
    preview = {
      treesitter = false
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-u>"] = false,
      }
    },
    extensions = {
      fzf = {
        fuzzy = false
      }
    }
  },
  pickers = {
    find_files = {
      find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }
    }
  }
}

require('telescope').load_extension('emoji')
require('telescope').load_extension('fzf')
