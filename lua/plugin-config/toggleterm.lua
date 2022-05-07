require'toggleterm'.setup{
  start_in_insert = true,
  size = 6,
  on_open = function()
    vim.cmd("setlocal nospell")
  end,
  direction = 'float'

}
