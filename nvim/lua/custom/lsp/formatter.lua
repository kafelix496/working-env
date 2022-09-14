local status_ok, formatter = pcall(require, "vim-prettier")
if not status_ok then
	return
end
