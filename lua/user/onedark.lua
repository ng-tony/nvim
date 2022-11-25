local status_ok, onedarkpro = pcall(require, "onedarkpro")
if not status_ok then
	return
end
onedarkpro.setup({
	dark_theme = "onedark_dark", -- The default dark theme
	theme = "onedark_dark",
	colors = {
		bg = "#000000",
		fg = "#abb2bf",
		red = "#aa4248",
		orange = "#af7445",
		yellow = "#d1af73",
		green = "#71a052",
		cyan = "#2bb8e2",
		blue = "#61afef",
		purple = "#a96bbc",
		white = "#abb2bf",
		black = "#000000",
		gray = "#26282e",
		highlight = "#e2be7d",
		comment = "#4e4e4e",
		cursorline = "#0e0e0e",
		none = "NONE",
	}, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
	highlights = {
    WhichKeyFloat = {bg = "${bg}"},
		["@annotation"] = { fg = "${orange}" },
		["@parameter"] = { fg = "${yellow}" },
		["@parameter.reference"] = { fg = "${yellow}" },
		["@property"] = { fg = "${yellow}" }, -- Same as `TSField`.
		["@symbol"] = { fg = "${orange}" }, -- For identifiers referring to symbols or atoms.
		["@tag"] = { fg = "${orange}" }, -- Tags like html tag names.
		["@text.danger"] = { fg = "${red}" }, -- Text representation of a danger note.
		["@variable"] = { fg = "${orange}" }, -- Any variable name that does not have another highlight.

		-- Error = { fg = "${error}", bg="orange" },
		Label = { fg = "${orange}" },
		CursorLineNrNC = { fg = "${orange}" },
		["@parameter.typescript"] = { fg = "${orange}" },
		["@variable.typescript"] = { fg = "${orange}" },
	}, -- Override default highlight and/or filetype groups
	-- filetypes = { -- Override which filetype highlight groups are loaded
	-- 	javascript = true,
	-- 	lua = true,
	-- 	markdown = true,
	-- 	php = true,
	-- 	python = true,
	-- 	ruby = true,
	-- 	rust = true,
	-- 	toml = true,
	-- 	typescript = true,
	-- 	typescriptreact = true,
	-- 	vue = true,
	-- 	yaml = true,
	-- },
	-- plugins = { -- Override which plugin highlight groups are loaded
	-- 	-- See the Supported Plugins section for a list of available plugins
	-- },
	-- styles = { -- Choose from "bold,italic,underline"
	-- 	types = "NONE", -- Style that is applied to types
	-- 	numbers = "NONE", -- Style that is applied to numbers
	-- 	strings = "NONE", -- Style that is applied to strings
	-- 	comments = "NONE", -- Style that is applied to comments
	-- 	keywords = "NONE", -- Style that is applied to keywords
	-- 	constants = "NONE", -- Style that is applied to constants
	-- 	functions = "NONE", -- Style that is applied to functions
	-- 	operators = "NONE", -- Style that is applied to operators
	-- 	variables = "NONE", -- Style that is applied to variables
	-- 	conditionals = "NONE", -- Style that is applied to conditionals
	-- 	virtual_text = "NONE", -- Style that is applied to virtual text
	-- },
	options = {
		bold = true, -- Use bold styles?
		italic = true, -- Use italic styles?
		underline = true, -- Use underline styles?
		undercurl = true, -- Use undercurl styles?

		cursorline = true, -- Use cursorline highlighting?
		transparency = false, -- Use a transparent background?
		terminal_colors = false, -- Use the theme's colors for Neovim's :terminal?
		window_unfocused_color = false, -- When the window is out of focus, change the normal background?
	},
})

local colorscheme = "onedarkpro"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
