return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = function()
            return {
                options = {
                    theme = "auto",
                    globalstatus = true
                },
                -- sections = {
                --     lualine_a = { "mode" }
                -- }
            }
        end,
    }
}
