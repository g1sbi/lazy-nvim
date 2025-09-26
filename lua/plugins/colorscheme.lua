return {
  {
    "thedenisnikulin/vim-cyberpunk",
    lazy = false,
    priority = 1000,
    config = function()
      -- Load the colorscheme
      vim.cmd.colorscheme("cyberpunk")

      -- Enable transparency by clearing background colors
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "cyberpunk",
        callback = function()
          -- Clear background colors to enable transparency
          vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
          vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
          vim.cmd("hi NormalFloat guibg=NONE ctermbg=NONE")
          vim.cmd("hi EndOfBuffer guibg=NONE ctermbg=NONE")
          vim.cmd("hi SignColumn guibg=NONE ctermbg=NONE")
          vim.cmd("hi FoldColumn guibg=NONE ctermbg=NONE")
          vim.cmd("hi LineNr guibg=NONE ctermbg=NONE")
          -- Keep cursor line with cyberpunk red theme for readability
          vim.cmd("hi CursorLine guibg=#ff0055 ctermbg=196 guifg=#ffffff ctermfg=15")
          vim.cmd("hi CursorLineNr guibg=#ff0055 ctermbg=196 guifg=#000000 ctermfg=0")
          vim.cmd("hi StatusLine guibg=NONE ctermbg=NONE")
          vim.cmd("hi StatusLineNC guibg=NONE ctermbg=NONE")
          vim.cmd("hi TabLine guibg=NONE ctermbg=NONE")
          vim.cmd("hi TabLineFill guibg=NONE ctermbg=NONE")
          vim.cmd("hi TabLineSel guibg=NONE ctermbg=NONE")
          vim.cmd("hi WinBar guibg=NONE ctermbg=NONE")
          vim.cmd("hi WinBarNC guibg=NONE ctermbg=NONE")
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberpunk",
    },
  },
}
