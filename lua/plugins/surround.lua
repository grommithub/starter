return {
  {
    "echasnovski/mini.surround",
    opts = {
      custom_surroundings = {
        -- Triggered by pressing '%'
        ["%"] = {
          input = { "<%%.-%%>", "<%%.-%%>" },
          output = function()
            local logic = vim.fn.input("ERB logic: ")
            if not logic or logic == "" then
              return nil
            end
            return {
              left = "<% " .. logic .. " %>\n",
              right = "\n<% end %>",
            }
          end,
        },
        -- Bonus: Triggered by pressing '=' for inline output tags!
        ["="] = {
          input = { "<%%=.-%%>", "" },
          output = function()
            return { left = "<%= ", right = " %>" }
          end,
        },
      },
    },
  },
}
