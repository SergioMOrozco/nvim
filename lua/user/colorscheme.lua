-- vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
vim.cmd[[au ColorScheme * hi NvimTreeNormal ctermbg=none guibg=none]]
local colorscheme = "tokyonight"

require"tokyonight".setup
{
  style = "storm";
  transparent = true;
}

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

