return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    -- local colors = {
    --   brown = "#cc8c3c",
    --   gold = "#ffdd33",
    --   quartz = "#95a99f",
    --   yellow = "#FFDA7B",
    --   red = "#FF4A4A",
    --   fg = "#c3ccdc",
    --   bg = "#181818",
    --   inactive_bg = "#181818",
    --   light_gray = "#8a8a8a",
    --   dark_gray = "#626262",
    -- }
    --
    -- local my_lualine_theme = {
    --   normal = {
    --     a = { bg = colors.brown, fg = colors.bg, gui = "bold" },
    --     b = { bg = colors.bg, fg = colors.fg },
    --     c = { bg = colors.bg, fg = colors.bg },
    --     x = { bg = colors.bg, fg = colors.fg },
    --     y = { bg = colors.dark_gray, fg = colors.bg },
    --     z = { bg = colors.light_gray, fg = colors.bg },
    --   },
    --   insert = {
    --     a = { bg = colors.gold, fg = colors.bg, gui = "bold" },
    --     b = { bg = colors.bg, fg = colors.fg },
    --     c = { bg = colors.bg, fg = colors.bg },
    --     x = { bg = colors.bg, fg = colors.fg },
    --     y = { bg = colors.dark_gray, fg = colors.bg },
    --     z = { bg = colors.light_gray, fg = colors.bg },
    --   },
    --   visual = {
    --     a = { bg = colors.dark_gray, fg = colors.bg, gui = "bold" },
    --     b = { bg = colors.bg, fg = colors.fg },
    --     c = { bg = colors.bg, fg = colors.bg },
    --     x = { bg = colors.bg, fg = colors.fg },
    --     y = { bg = colors.dark_gray, fg = colors.bg },
    --     z = { bg = colors.light_gray, fg = colors.bg },
    --   },
    --   command = {
    --     a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
    --     b = { bg = colors.bg, fg = colors.fg },
    --     c = { bg = colors.bg, fg = colors.bg },
    --     x = { bg = colors.inactive_bg, fg = colors.bg },
    --     y = { bg = colors.inactive_bg, fg = colors.bg },
    --     z = { bg = colors.inactive_bg, fg = colors.bg },
    --   },
    --   replace = {
    --     a = { bg = colors.red, fg = colors.bg, gui = "bold" },
    --     b = { bg = colors.bg, fg = colors.fg },
    --     c = { bg = colors.bg, fg = colors.bg },
    --     x = { bg = colors.inactive_bg, fg = colors.bg },
    --     y = { bg = colors.inactive_bg, fg = colors.bg },
    --     z = { bg = colors.inactive_bg, fg = colors.bg },
    --   },
    --   inactive = {
    --     a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
    --     b = { bg = colors.inactive_bg, fg = colors.semilightgray },
    --     c = { bg = colors.bg, fg = colors.bg },
    --     x = { bg = colors.inactive_bg, fg = colors.bg },
    --     y = { bg = colors.inactive_bg, fg = colors.bg },
    --     z = { bg = colors.inactive_bg, fg = colors.bg },
    --   },
    -- }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = "auto",
        component_separators = "",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { { "mode", separator = { left = "", right = "" }, right_padding = 2 } },
        lualine_b = { "filename", "branch" },
        lualine_c = {},
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "filetype" },
        },
        lualine_y = {},
        lualine_z = { "location" },
      },
    })
  end,
}
