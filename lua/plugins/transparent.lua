return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    priority = 1001, -- Load after colorscheme
    opts = {
      groups = {
        "Normal",
        "NormalNC", 
        "NormalFloat",
        "EndOfBuffer",
        "SignColumn",
        "FoldColumn",
        "LineNr",
        "StatusLine",
        "StatusLineNC",
        "TabLine",
        "TabLineFill",
        "TabLineSel",
        "WinBar",
        "WinBarNC",
      },
      exclude_groups = { "CursorLine", "CursorLineNr" }, -- Keep cursor line visible for readability
    },
    config = function(_, opts)
      require("transparent").setup(opts)
      -- Enable transparency
      require("transparent").clear_prefix("BufferLine")
      require("transparent").clear_prefix("NeoTree")
      require("transparent").clear_prefix("Telescope")
    end,
  },
}
