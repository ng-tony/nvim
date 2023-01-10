local status_ok, obsidian = pcall(require, "obsidian")
if not status_ok then
  return
end

obsidian.setup{
  dir = "~/my-vault",
  notes_subdir = "notes",
  daily_notes = {
    folder = "notes/dailies",
  }
}
