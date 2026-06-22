return {
  {
    "kalebhenrique/lazyrails.nvim",
    ft = { "ruby", "eruby" },
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    opts = {
      test_cmd = "bundle exec rails test",
    },
  },
}
