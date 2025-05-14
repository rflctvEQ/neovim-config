-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize None-ls sources

-- local null_ls = require "null-ls"
-- -- local utils = require "null-ls.utils"
--
-- null_ls.setup {
--   sources = {
--     null_ls.builtins.formatting.eslint_d.with {
--       condition = function(utils) return utils.root_has_file { ".eslintrc.js", ".eslintrc.json" } end,
--     },
--   },
-- }

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require "null-ls"
    local formatting = null_ls.builtins.formatting

    null_ls.setup {
      sources = {
        formatting.eslint_d.with {
          condition = function(utils)
            return utils.root_has_file {
              ".eslintrc",
              ".eslintrc.js",
              ".eslintrc.json",
              ".eslintrc.cjs",
              ".eslintrc.yaml",
              ".eslintrc.yml",
            }
          end,
        },
        formatting.stylua,
      },
    }
  end,
}
