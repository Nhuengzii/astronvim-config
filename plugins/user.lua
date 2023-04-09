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
            "https://camo.githubusercontent.com/0e3c4976eb4b8ec80e285608a7f23744408a0ffb/68747470733a2f2f736563757265676f2e696f2f696d672f676f7365632e706e67",
          },
          ["GustavoPrietoP.txt"] = { "GustavoPrietoP", "https://avatars.githubusercontent.com/u/70907734?v=4" },
        },
      }
    end,
  },
}
