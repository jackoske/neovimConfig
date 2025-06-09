-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- PDF viewer autocommand
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.pdf",
  callback = function()
    local file = vim.fn.expand("%")
    vim.fn.jobstart({ "zathura", file }, { detach = true })
    vim.schedule(function()
      vim.cmd("bd!") -- Close the buffer after launching Zathura
    end)
  end,
})

-- Wayland clipboard integration
vim.cmd([[
  augroup wl_clipboard
    autocmd!
    autocmd FocusLost * call system('wl-copy --trim-newline', @+)
    autocmd FocusGained * let @+ = system('wl-paste -n')
  augroup END
]])

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- VSCode-like file opening commands
vim.api.nvim_create_user_command('VSCodeOpen', function(opts)
  local file = opts.args
  -- Check if file exists
  if vim.fn.filereadable(file) == 1 then
    -- Open in a new buffer
    vim.cmd('edit ' .. file)
  end
end, { nargs = 1, complete = 'file' })

-- Add command to open file in new tab/buffer if not already open
vim.api.nvim_create_user_command('EditInNewBuffer', function(opts)
  local file = opts.args
  -- Check if buffer already exists
  local bufnr = vim.fn.bufnr(file)
  if bufnr > 0 then
    -- Buffer exists, switch to it
    vim.cmd('buffer ' .. bufnr)
  else
    -- Buffer doesn't exist, create new one
    vim.cmd('edit ' .. file)
  end
end, { nargs = 1, complete = 'file' }) 