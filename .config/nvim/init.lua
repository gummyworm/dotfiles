vim.cmd [[ packadd packer.nvim ]]
vim.opt.scrollbind = false

local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('tpope/vim-fugitive')
vim.call('plug#end')

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<c-P>", require('fzf-lua').files, { desc = "Fzf Files" })

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'stevearc/oil.nvim',
	  config = function() require('oil').setup() end
  }
  use "ibhagwan/fzf-lua"
  use "maxbane/vim-asm_ca65"
  use { "ellisonleao/gruvbox.nvim" }
end)
