-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- COLOR THEMES
  -- {
  --   "catppuccin/nvim",
  --   config = function()
  --     require("catppuccin").setup {
  --       flavour = "mocha", -- Options: "latte", "macchiato", "mocha"
  --       transparent_background = true, -- Optional: Set to true for transparent background
  --     }
  --     vim.cmd "colorscheme catppuccin"
  --   end,
  -- },

  {
    "folke/tokyonight.nvim",
    config = function()
      vim.g.tokyonight_style = "storm" -- Options: "storm", "night", "day"
      vim.cmd "colorscheme tokyonight"
    end,
  },

  -- {
  --   "dracula/vim",
  --   config = function() vim.cmd "colorscheme dracula" end,
  -- },

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- -- customize the dashboard header
      local art1 = {
        "░▒▓███████▓▒░░▒▓███████▓▒░░▒▓█▓▒░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░▒▓████████▓▒░▒▓████████▓▒░▒▓███████▓▒░  ",
        "░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ ",
        "░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ ",
        "░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░       ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░ ░▒▓█▓▒░   ░▒▓██████▓▒░ ░▒▓███████▓▒░  ",
        "░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ ",
        "░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ ",
        "░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░       ░▒▓█████████████▓▒░░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░ ",
      }
      --
      -- local art2 = {
      --   "                                                                                                                             ",
      --   "    88     ,a8888a,                                             88                                                           ",
      --   '  ,d88   ,8P"\'  `"Y8,                                           88                                                           ',
      --   "888888  ,8P        Y8,                                          88                                                           ",
      --   "    88  88          88     8b,dPPYba,   88       88  ,adPPYba,  88,dPPYba,             88       88  8b,dPPYba,   ,adPPYba,  ",
      --   '    88  88          88     88P\'    "8a  88       88  I8[    ""  88P\'    "8a  aaaaaaaa  88       88  88P\'    "8a  I8[    ""  ',
      --   '    88  `8b        d8\'     88       d8  88       88   `"Y8ba,   88       88  """"""""  88       88  88       d8   `"Y8ba,   ',
      --   '    88   `8ba,  ,ad8\'      88b,   ,a8"  "8a,   ,a88  aa    ]8I  88       88            "8a,   ,a88  88b,   ,a8"  aa    ]8I  ',
      --   '    88     "Y8888P"        88`YbbdP"\'    `"YbbdP\'Y8  `"YbbdP"\'  88       88             `"YbbdP\'Y8  88`YbbdP"\'   `"YbbdP"\'  ',
      --   "                           88                                                                       88                      ",
      --   "                           88                                                                       88                      ",
      -- }
      --
      -- -- add more options here to spice it up
      -- local artOptions = { art1, art2 }
      --
      -- local index = math.random(1, #artOptions)
      -- opts.section.header.val = artOptions[index]

      local ok_custom, custom_alpha = pcall(require, "user.alpha")

      -- custom function to assign custom ASCII art to alpha
      if ok_custom then
        custom_alpha.set_random_header()
      -- if custom_alpha is not available, use the default art1
      else
        opts.section.header.val = art1
      end

      return opts
    end,
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },

  -- additional plugin for searching accross all files - might not be necessary
  {
    "dyng/ctrlsf.vim",
    cmd = { "CtrlSF", "CtrlSFToggle" },
    config = function()
      -- CtrlSF settings
      vim.g.ctrlsf_auto_close = { normal = true, compact = true }
      vim.g.ctrlsf_default_root = "project"
      vim.g.ctrlsf_backend = "rg"
      vim.g.ctrlsf_auto_focus = { at = "start" }

      -- Define the :F alias to call :CtrlSF properly
      vim.api.nvim_create_user_command(
        "F",
        function(opts) vim.cmd("CtrlSF " .. vim.fn.escape(opts.args, " ")) end,
        { nargs = "+" }
      )

      -- Ensure :f expands to :CtrlSF properly
      vim.cmd "cnoreabbrev f CtrlSF"
    end,
    init = function()
      -- Force load CtrlSF at startup to ensure :F is registered
      require("lazy").load { plugins = { "ctrlsf.vim" } }
    end,
  },

  -- copilot config
  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      vim.g.copilot_no_tab_map = true -- avoid copilot using tab key for suggestions
      vim.g.copilot_assume_mapped = true -- auto-map the tab key for copilot suggestions
      vim.g.copilot_filetypes = { ["*"] = true }

      vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
      vim.api.nvim_set_keymap("i", "<C-K>", "copilot#Dismiss()", { expr = true, silent = true })
    end,
  },

  -- lualine config for statusline
  {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = function()
      require("lualine").setup {
        sections = {
          lualine_c = {
            "filename",
            "%F",
          },
        },
      }
    end,
  },
}
