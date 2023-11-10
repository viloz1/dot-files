local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.opt

autocmd("BufWritePost", {
  pattern = {"*"},
  callback = function ()
        vim.cmd("FormatWrite")
  end
})
