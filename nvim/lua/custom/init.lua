local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.opt

autocmd("BufWritePost", {
  pattern = {"*.tsx"},
  callback = function ()
        vim.cmd("Neoformat prettier")
  end
})
