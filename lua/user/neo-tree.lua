local status_ok, neo_tree = pcall(require, "neo-tree")
if not status_ok then
	return
end

local Git = ""
local GitAdd = ""
local GitBranch = ""
local GitChange = ""
local GitConflict = ""
local GitDelete = ""
local GitIgnored = "◌"
local GitRenamed = "➜"
local GitStaged = "✓"
local GitUnstaged = "✗"
local GitUntracked = "★"
-- local FileModified = ""
-- local FileReadOnly = ""
local FolderClosed = ""
local FolderEmpty = ""
local FolderOpen = ""
local DefaultFile = ""

neo_tree.setup({
	filesystem = {
		follow_current_file = true,
		hijack_netrw_behavior = "open_current",
		use_libuv_file_watcher = true,
		-- window = { mappings = { h = "toggle_hidden" } },
	},
	default_component_configs = {
		indent = { padding = 0 },
		icon = {
			folder_closed = FolderClosed,
			folder_open = FolderOpen,
			folder_empty = FolderEmpty,
			default = DefaultFile,
		},
		git_status = {
			symbols = {
				added = GitAdd,
				deleted = GitDelete,
				modified = GitChange,
				renamed = GitRenamed,
				untracked = GitUntracked,
				ignored = GitIgnored,
				unstaged = GitUnstaged,
				staged = GitStaged,
				conflict = GitConflict,
			},
		},
		modified = {
			symbol = "[+]",
			highlight = "NeoTreeModified",
		},
	},
})
