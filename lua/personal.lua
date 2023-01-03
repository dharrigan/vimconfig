
require('telescope').load_extension('emoji')
require('telescope').load_extension('fzf')

require('which-key').setup {
  plugins = {
    registers = false
  }
}

require('lualine').setup {
    options = {
        theme = 'OceanicNext'
    },
    sections = {
        lualine_a = {
          {
            'buffers',
            show_filename_only = true,
            mode = 2
          }
        },
        lualine_c = {
            {
                'filename',
                file_status = true,
                newfile_status = true,
                path = 1
            }
        }
    }
}

require('octo').setup()

local actions = require("telescope.actions")

require('telescope').setup {
  defaults = {
    preview = {
      treesitter = false
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-u>"] = false
      }
    },
    pickers = {
      find_files = {
        find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }
      }
    },
    extensions = {
      fzf = {
        fuzzy = false
      }
    }
  }
}
