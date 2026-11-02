
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

require('nvim-treesitter').install({'clojure', 'java', 'javascript', 'json', 'just', 'tsx', 'typescript'})

require('nvim-paredit').setup()

require('nvim-autopairs').setup {
  break_undo = false,
  enable_check_bracket_line = false,
  map_cr = false
}

require("nvim-autopairs").get_rules("'")[1].not_filetypes = { "lisp", "clojure" }
require("nvim-autopairs").get_rules("`")[1].not_filetypes = { "lisp", "clojure" }

vim.api.nvim_set_hl(0, "@string.escape.clojure", { fg = "white" })
vim.api.nvim_set_hl(0, "@string.regexp.clojure", { fg = "#bfc7d5" })
vim.api.nvim_set_hl(0, "@string.regexp.typescript", { fg = "#bfc7d5" })
vim.api.nvim_set_hl(0, "@string.special.symbol", { fg = "#f07178" })

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'clojure', 'java', 'javascript', 'json', 'just', 'tsx', 'typescript' },
  callback = function()
    vim.treesitter.start()
  end,
})
