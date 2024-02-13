function ColorMyPencils(color)
	vim.cmd.colorscheme(color)
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

require('onedark').setup{
  style = 'darker'
}

require('onedark').load()

ColorMyPencils('onedark')

