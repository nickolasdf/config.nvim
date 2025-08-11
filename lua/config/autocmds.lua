local group = vim.api.nvim_create_augroup('user_cmds', { clear = true })

-- Yank highlighting
vim.api.nvim_create_autocmd('TextYankPost', {
  group = group,
  callback = function()
    vim.hl.on_yank()
  end,
  desc = 'Highlight on yank',
})
