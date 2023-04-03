local status_ok, neorg = pcall(require, "neorg")
if not status_ok then
	return
end

neorg.setup({
	load = {
		["core.defaults"] = {}, -- Loads default behaviour
		["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
		["core.norg.dirman"] = { -- Manages Neorg workspaces
			config = {
				workspaces = {
					work = "~/notes/work",
					home = "~/notes/home",
				},
			},
		},
	},
	run = ":Neorg sync-parsers",
	requires = "nvim-lua/plenary.nvim",
})
