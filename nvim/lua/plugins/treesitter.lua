return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {
          "javascript",
          "python",
          "tsx",
          "toml",
          "php",
          "json",
          "yaml",
          "css",
          "html",
          "lua"
        },
        autotag = {
          enable = true,
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}
