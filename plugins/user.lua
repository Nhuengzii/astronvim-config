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
}
