local status_ok, formatter = pcall(require, "nvim-lint")
if not status_ok then
	return
end
