return {
	"zk-org/zk-nvim",
	config = function()
		require("zk").setup({
			picker = "telescope",
			lsp = {
				config = {
					cmd = { "zk", "lsp" },
					name = "zk",
					on_attach = function()
						require("cmp_nvim_lsp").default_capabilities()
					end,
				},
			},
		})

		vim.keymap.set("n", "<leader>zn", function()
			require("zk.commands").get("ZkNotes")()
		end, {
				desc = "Open [Z]k [N]otes"
			})
		vim.keymap.set("n", "<leader>zl", function()
			require("zk.commands").get("ZkInsertLink")()
		end, {
				desc = "Insert [Z]k [L]ink"
			})
	end
};
