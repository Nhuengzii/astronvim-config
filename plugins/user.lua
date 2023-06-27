return {
  -- You can also add new plugins here as well: Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "andweeb/presence.nvim",
    lazy = false,
    config = function()
      require("presence").setup {
        autoupdate = true,
        main_image = "file",
        neovim_image_text = "Neovim > Other Editor!",
        editing_text = "ทำอะไรอยู่ก็ไม่รู้ใน  %s",
        file_assets = {
          go = {
            "Go",
            "https://ih1.redbubble.net/image.866593118.1888/st,small,507x507-pad,600x600,f8f8f8.u3.jpg",
          },
          ["GustavoPrietoP.txt"] = { "GustavoPrietoP", "https://avatars.githubusercontent.com/u/70907734?v=4" },
          jittat = {
            "Jittat",
            "https://www.cpe.ku.ac.th/wp-content/uploads/2014/10/14-KUENG-PHO-01-44-44-40.jpg",
          },
        },
      }
    end,
  },
  {
    "vinnymeller/swagger-preview.nvim",
    lazy = false,
    config = function()
      require("swagger-preview").setup({
        port = 8000,
        host = "localhost"
      })
    end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = {     -- :h background
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true, -- disables setting the background color.
        show_end_of_buffer = false,    -- shows the '~' characters after the end of buffers
        term_colors = false,           -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
          enabled = false,             -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.15,           -- percentage of the shade to apply to the inactive window
        },
        no_italic = false,             -- Force no italic
        no_bold = false,               -- Force no bold
        no_underline = false,          -- Force no underline
        styles = {                     -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "italic" },     -- Change the style of comments
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          notify = false,
          mini = false,
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      })
      -- setup must be called before loading
      vim.cmd.colorscheme "catppuccin"
    end
  }
}
