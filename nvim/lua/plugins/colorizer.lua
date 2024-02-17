return {
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        "css",
        "html",
        "javascript",
        css = { css = true },
        html = { css = true },
        javascript = { css = true },
      })
    end,
  },
}
