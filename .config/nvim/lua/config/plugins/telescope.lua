return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      vim.keymap.set("n", "<space>fd", function()
	require('telescope.builtin').find_files {
	  follow = true
	}
      end)
      vim.keymap.set("n", "<space>en", function()
	require('telescope.builtin').find_files {
	  cwd = vim.fn.stdpath("config"),
	  follow = true
	}
      end)
    end
  }
}
