local status_ok, printer = pcall(require, "printer")
if not status_ok then
	return
end

printer.setup({
	keymap = "gp",
})
