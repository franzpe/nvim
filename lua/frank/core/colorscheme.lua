-- Scheme override
local custom_highlight = vim.api.nvim_create_augroup("CustomHighlight", {})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "nightfly",
  callback = function()
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#ffffff" })
    vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { bg = "#080808" })
  end,
  group = custom_highlight,
})

-- set colorscheme to nightfly with protected call
-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme nightfly")

if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end
