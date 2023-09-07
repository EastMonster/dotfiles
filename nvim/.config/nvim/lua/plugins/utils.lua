return {
    -- 显示 nvim 加载时的事件及其耗时情况
    {
        "dstein64/vim-startuptime",
        cmd = "StartupTime",
    },
    -- 括号补全
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {}
    },
    -- 快捷键提示 (?)
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 1000
        end,
        opts = {},
    },
    -- 相同关键字高亮
    {
        "RRethy/vim-illuminate",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            delay = 1000,
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
    },
    -- 和 tmux 的跳转联动
    {
        "christoomey/vim-tmux-navigator"
    },
    -- 特殊注释高亮 (TODO...)
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {}
    }
}
