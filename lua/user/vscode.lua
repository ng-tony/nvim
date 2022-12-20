-- Lua:
-- For dark theme (neovim's default)
vim.o.background = "dark"
local c = {
	vscNone = "NONE",
	vscFront = "#ababab",
	vscBack = "#000000", --- Died
	vscTabCurrent = "#040404",
	vscTabOther = "#040404",
	vscTabOutside = "#0c0c0c",
	vscLeftDark = "#0c0c0c",
	vscLeftMid = "#0e0e0e",
	vscLeftLight = "#3d3d3d",
	vscPopupFront = "#929292",
	vscPopupBack = "#000000",
	vscPopupHighlightBlue = "#02151e",
	vscPopupHighlightGray = "#121212",
	vscSplitLight = "#606060",
	vscSplitDark = "#1b1b1b",
	vscSplitThumb = "#191919",

	vscCursorDarkDark = "#080808",
	vscCursorDark = "#272727",
	vscCursorLight = "#858585",
	vscSelection = "#182634",
	vscLineNumber = "#313131",

	vscDiffRedDark = "#0c0606",
	vscDiffRedLight = "#260b0b",
	vscDiffRedLightLight = "#9d0e0e",
	vscDiffGreenDark = "#0a0b0a",
	vscDiffGreenLight = "#1c1e18",
	vscSearchCurrent = "#353535",
	vscSearch = "#1b1009",

	vscGitAdded = "#65836a",
	vscGitModified = "#c1995d",
	vscGitDeleted = "#7b3e34",
	vscGitRenamed = "#53986b",
	vscGitUntracked = "#53986b",
	vscGitIgnored = "#636363",
	vscGitStageModified = "#c1995d",
	vscGitStageDeleted = "#7b3e34",
	vscGitConflicting = "#c1383d",
	vscGitSubmodule = "#5d90c1",

	vscContext = "#171717",
	vscContextCurrent = "#474747",

	vscFoldBackground = "#030404",

	-- Syntax colors
	vscGray = "#575757",
	vscViolet = "#505058",
	vscBlue = "#3b729f",
	vscDarkBlue = "#0d1318",
	vscMediumBlue = "#1073b5",
	vscLightBlue = "#59bbf0",
	vscGreen = "#4a5944",
	vscBlueGreen = "#3d8879",
	vscLightGreen = "#8ea084",
	vscRed = "#cb1f1f",
	vscOrange = "#a16a53",
	vscLightRed = "#a04848",
	vscYellowOrange = "#b19251",
	vscYellow = "#b5b57f",
	vscPink = "#966492",

	vscUiBlue = "#051621",
	vscUiOrange = "#ab571a",
	vscUiPopupHighlightLightBlue = "#90c1f3",
}

require("vscode").setup({
	-- Enable italic comment
	italic_comments = true,

	-- Disable nvim-tree background color
	disable_nvimtree_bg = true,

	-- Override colors (see ./lua/vscode/colors.lua)
	color_overrides = c,

	-- Override highlight groups (see ./lua/vscode/theme.lua)
	group_overrides = {
		-- this supports the same val table as vim.api.nvim_set_hl
		-- use colors from this colorscheme by requiring vscode.colors!
		-- Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
		WinBar = { fg = "#666666", bg = c.NONE, bold = false },
		-- WinBarNC = { fg = c.vscYellow, bg = c.vscRed, bold = false },
		-- ["@property"] = { fg = c.vscYellow, bg = c.NONE, bold = false },
		["@field"] = { fg = "#c5c58e", bg = c.NONE, bold = false },
		-- ["@variable"] = { fg = c.vscRed, bg = c.NONE, bold = false },
		NeoTreeDirectoryIcon = { fg = c.vscBlue }, --vscUiBlue
		NeoTreeRootName = { fg = c.vscFront, bold = true },
		NeoTreeFileName = { fg = c.vscFront },
		NeoTreeFileIcon = { fg = c.vscFront },
		NeoTreeFileNameOpened = { fg = c.vscGreen },
		NeoTreeIndentMarker = { fg = c.vscLeftLight },
		NeoTreeGitAdded = { fg = c.vscGreen },
		NeoTreeGitConflict = { fg = c.vscRed },
		NeoTreeGitModified = { fg = c.vscYellowOrange },
		NeoTreeGitUntracked = { fg = c.vscYellow },
		NeoTreeNormal = { bg = c.vscBack },
		NeoTreeNormalNC = { bg = c.vscBack },
		NeoTreeSymbolicLinkTarget = { fg = c.vscDarkBlue },
	},
})
