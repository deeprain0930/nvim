return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup()

		-- set keymaps
		local keymap = vim.keymap

        keymap.set("n", "<leader>u", "<cmd>Telescope find_files<CR>")
        -- 查找 git 仓库中的文件
        keymap.set("n", "<leader>i", "<cmd>Telescope git_files<CR>")
        -- 查找最近打开过的文件
        keymap.set("n", "<leader>o", "<cmd>Telescope oldfiles<CR>")
        -- 查找 git status 中的文件
        keymap.set("n", "<leader>p", "<cmd>Telescope git_status<CR>")
        -- 查找当前项目文件中的文字
        keymap.set("n", "<leader>k", "<cmd>Telescope live_grep initial_mode=insert<CR>")
        -- 查找所有已打开文件
        keymap.set("n", "<leader>l", "<cmd>Telescope buffers<CR>")
        -- 查找 vim 的跳转记录
        keymap.set("n", "<leader>j", "<cmd>Telescope jumplist<CR>")
        -- 查找 vim 的标记
        keymap.set("n", "<leader>m", "<cmd>Telescope marks<CR>")
        -- 查找 / 的搜索记录
        keymap.set("n", "<leader>/", "<cmd>Telescope search_history<CR>")
        -- 查找 vim 命令历史记录
        keymap.set("n", "<leader>:", "<cmd>Telescope command_history<CR>")
        -- 查找所有 vim 命令
        keymap.set("n", "<leader>;", "<cmd>Telescope commands<CR>")
        -- 查找帮助文档
        keymap.set("n", "<leader>?", "<cmd>Telescope help_tags<CR>")
        -- 查找 todo 等事项
        keymap.set("n", "<leader>t", "<cmd>TodoTelescope<CR>")
        -- 查找 git 仓库的 commit 历史
        keymap.set("n", "<leader>c", "<cmd>Telescope git_commits<CR>")
        -- 查找 git 仓库的所有分支
        keymap.set("n", "<leader>C", "<cmd>Telescope git_branches<CR>")
        -- 查找本文件中所有静态分析报错
        keymap.set("n", "<leader>a", "<cmd>Telescope diagnostics<CR>")

        -- 查找符号定义（LSP）
        keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>")
        -- 查找所有引用（LSP）
        keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>")
        -- 查找函数实现（LSP）
        keymap.set("n", "gD", "<cmd>Telescope lsp_implementations<CR>")
	end,
}
