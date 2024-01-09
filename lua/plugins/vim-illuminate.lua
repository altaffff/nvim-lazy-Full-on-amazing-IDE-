return {
  "RRethy/vim-illuminate",
  lazy = false,
  highlight = {
    IlluminateNormal = { ctermbg=490, guibg="282c34" },  -- Enclose hex color in quotes
  },
  config = function()
    require('illuminate').configure({
      providers = {
        'lsp',
        'treesitter',
        'regex',
      },
    })
  end,
}

