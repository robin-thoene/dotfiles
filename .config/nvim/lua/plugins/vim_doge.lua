return {
  {
    'kkoomen/vim-doge',
    build = function()
      -- Ensure the install function is being called after the first install and after updates
      -- vim.fn[':call doge#install()']()
    end,
  },
}
