local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = {"python","c_sharp","c","dockerfile","json","make","markdown","vim","lua",'jsonc'}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- (install languages synchronously (only applied to 'ensure_installed')
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,

  },
  indent = { enable = true, disable = { "yaml" } },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil
  },
  playground = {
    enabled = true
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = true
  }

}
