return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
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
      }
    end,
  },
}
