---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>qf"] = {
      function()
        vim.lsp.buf.code_action({
            filter = function(a) return true end,
            apply = true
        })
      end,
        "Quick fix",
    },
      ["<C-a>"] = { "ggVG", "Mark all text in buffer"},
    },
  v = {
    [">"] = { ">gv", "indent"},
  },

}



-- more keybinds!

return M
