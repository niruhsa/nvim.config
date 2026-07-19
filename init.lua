require("config.lazy")

-- General Editor Config
vim.o.tabstop = 4
vim.o.softtabstop = 0
vim.o.shiftwidth = 4
vim.g.have_nerd_font = true
vim.wo.number = true

-- Tree setup
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
require("nvim-tree").setup()
vim.keymap.set('n', '<leader>tt', '<Cmd>NvimTreeToggle<CR>', { desc = 'Toggle Tree' })

-- Telescope setup
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- ===== Language Configuration =====
-- === Go ===

-- https://github.com/crispgm/nvim-go
vim.lsp.config("go", {
	notify = true,
	auto_format = false,
	auto_lint = true,
	linter = 'golangic-lint',
	linter_flags = {},
	lint_prompt_style = 'qf',
	formatter = 'gofmt',
	maintain_cursor_pos = true,
	test_flags = {},
	test_timeout = '30s',
	test_env = {},
	test_popup = true,
	test_popup_auto_leave = false,
	test_popup_width = 80,
	test_popup_height = 10,
	test_open_cmd = 'edit',
	tags_name = 'json',
	tags_options = {'json=omitempty'},
    tags_transform = 'snakecase',
    tags_flags = {'-skip-unexported'},
    quick_type_flags = {'--just-types'},
})
vim.lsp.enable("go")

vim.lsp.config("gopls", {})
vim.lsp.enable("gopls")
