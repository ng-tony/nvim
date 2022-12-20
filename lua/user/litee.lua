local status_ok, litee = pcall(require, "litee.lib")
if not status_ok then
	return
end

litee.setup({
    tree = {
        icon_set = "codicons"
      },
    panel = {
        orientation = "left",
        panel_size  = 30
      }
})
