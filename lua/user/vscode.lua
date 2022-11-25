-- Lua:
-- For dark theme (neovim's default)
vim.o.background = "dark"

local c = require("vscode.colors")
require("vscode").setup({
	-- Enable italic comment
	italic_comments = true,

	-- Disable nvim-tree background color
	disable_nvimtree_bg = true,

	-- Override colors (see ./lua/vscode/colors.lua)
	color_overrides = {
		vscNone = "NONE",
		vscFront = "#bababa",
		vscBack = "#000000",
		vscTabCurrent = "#040404",
		vscTabOther = "#131313",
		vscTabOutside = "#0c0c0c",
		vscLeftDark = "#000000",
		vscLeftMid = "#1d1d1d",
		vscLeftLight = "#4d4d4d",
		vscPopupFront = "#a1a1a1",
		vscPopupBack = "#000000",
		vscPopupHighlightBlue = "#03283c",
		vscPopupHighlightGray = "#212121",
		vscSplitLight = "#6f6f6f",
		vscSplitDark = "#2a2a2a",
		vscSplitThumb = "#282828",

		vscCursorDarkDark = "#080808",
		vscCursorDark = "#363636",
		vscCursorLight = "#949494",
		vscSelection = "#1f354c",
		vscLineNumber = "#404040",

		vscDiffRedDark = "#220e0e",
		vscDiffRedLight = "#3f0f0f",
		vscDiffRedLightLight = "#be0b0b",
		vscDiffGreenDark = "#1a1c17",
		vscDiffGreenLight = "#2d3123",
		vscSearchCurrent = "#424446",
		vscSearch = "#341e0f",

		vscGitAdded = "#6d9975",
		vscGitModified = "#cea86e",
		vscGitDeleted = "#964537",
		vscGitRenamed = "#5aaf78",
		vscGitUntracked = "#5aaf78",
		vscGitIgnored = "#727272",
		vscGitStageModified = "#cea86e",
		vscGitStageDeleted = "#964537",
		vscGitConflicting = "#d1474c",
		vscGitSubmodule = "#6ea0ce",

		vscContext = "#262626",
		vscContextCurrent = "#565656",

		-- vscFoldBackground = "#101316",
		vscFoldBackground = "#101316",

		-- Syntax colors
		vscGray = "#666666",
		vscViolet = "#595a6d",
		vscBlue = "#3d82bc",
		vscDarkBlue = "#17232d",
		vscMediumBlue = "#0c86d7",
		vscLightBlue = "#71c8f6",
		vscGreen = "#576f4c",
		vscBlueGreen = "#41a38f",
		vscLightGreen = "#9cb291",
		vscRed = "#e52323",
		vscOrange = "#b5775e",
		vscLightRed = "#b94e4e",
		vscYellowOrange = "#c0a161",
		vscYellow = "#c5c58e",
		vscPink = "#a96fa4",
	},

	-- Override highlight groups (see ./lua/vscode/theme.lua)
	group_overrides = {
		-- this supports the same val table as vim.api.nvim_set_hl
		-- use colors from this colorscheme by requiring vscode.colors!
		Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
	},
})
