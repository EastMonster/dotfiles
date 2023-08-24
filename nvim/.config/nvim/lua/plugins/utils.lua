return {
    -- 显示 nvim 加载时的事件及其耗时情况
    {
        "dstein64/vim-startuptime",
        cmd = "StartupTime",
    },
    -- 括号补全
    {
        "echasnovski/mini.pairs",
        version = false,
        event = "VeryLazy",
        config = function()
            require("mini.pairs").setup()
        end,
    },
    -- 快捷键提示 (?)
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {},
    },
    {
        "RRethy/vim-illuminate",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            delay = 200,
            large_file_cutoff = 2000,
            large_file_overrides = {
                providers = { "lsp" },
            },
        },
        config = function(_, opts)
            require("illuminate").configure(opts)
            vim.cmd([[hi IlluminatedWordWrite guibg=#4A505F]])
            vim.cmd([[hi IlluminatedWordRead guibg=#4A505F]])
            vim.cmd([[hi IlluminatedWordText guibg=#4A505F]])
        end,
    }
}
