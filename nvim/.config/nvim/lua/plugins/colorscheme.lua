return {
    -- One Dark Pro
    {
        "navarasu/onedark.nvim",
        lazy = false,
        priority = 1000, -- Ensure it loads first
        config = function()
            vim.cmd([[colorscheme onedark]])
        end,
    },
    -- 缩进提示怎么不算 colorscheme 呢?
    {
        "lukas-reineke/indent-blankline.nvim"
    },
}
