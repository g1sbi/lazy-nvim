return {
  {
    "olimorris/codecompanion.nvim",
    config = function()
      -- Load environment variables from .env file if it exists
      local env_file = vim.fn.expand("~/.config/nvim/.env")
      if vim.fn.filereadable(env_file) == 1 then
        local lines = vim.fn.readfile(env_file)
        for _, line in ipairs(lines) do
          if line:match("^%s*[^#]") then -- Skip comments and empty lines
            local key, value = line:match("([^=]+)=(.+)")
            if key and value then
              os.setenv(key:gsub("^%s*(.-)%s*$", "%1"), value:gsub("^%s*(.-)%s*$", "%1"))
            end
          end
        end
      end
      
      require("codecompanion").setup({
        adapters = {
          gemini = function()
            return require("codecompanion.adapters").extend("gemini", {
              env = {
                api_key = os.getenv("GEMINI_API_KEY"),
              },
            })
          end,
        },
        strategies = {
          chat = {
            adapter = "gemini",
          },
          inline = {
            adapter = "gemini",
          },
        },
      })
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
}