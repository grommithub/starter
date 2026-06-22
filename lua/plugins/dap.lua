return {
  "mfussenegger/nvim-dap",
  optional = true,
  opts = function()
    local dap = require("dap")
    local base = {
      type = "ruby",
      request = "attach",
      options = { source_filetype = "ruby" },
      error_on_failure = true,
      localfs = true,
      waiting = 1000,
      random_port = true,
    }
    -- nvim-dap-ruby already sets up rspec configs; add minitest ones
    table.insert(dap.configurations.ruby, vim.tbl_extend("force", base, {
      name = "run rails test (current file)",
      command = "bin/rails",
      args = { "test" },
      current_file = true,
    }))
    table.insert(dap.configurations.ruby, vim.tbl_extend("force", base, {
      name = "run rails test (all)",
      command = "bin/rails",
      args = { "test" },
    }))
  end,
}
