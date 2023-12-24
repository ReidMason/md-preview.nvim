local M = {}

-- M._buf = nil
M._win = nil
M._showLineNumbers = false

local showPreview = function()
	local currWin = vim.api.nvim_get_current_win()
	local curr_buff = vim.api.nvim_get_current_buf()
	local curr_file = vim.api.nvim_buf_get_name(curr_buff)

	-- Don't run for non markdown files
	if string.match(curr_file, "^.*.md$") == nil then
		return
	end

	local x = vim.api.nvim_buf_get_lines(curr_buff, 0, -1, false)

	if M._win == nil then
		vim.cmd.vsplit()
		M._win = vim.api.nvim_get_current_win()
	end
	vim.api.nvim_set_current_win(M._win)

	-- vim.cmd.terminal("glow " .. curr_file)
	local text = '"' .. table.concat(x, "\n") .. '"'
	text = text:gsub("#", "\\#")
	-- text = text:gsub("<", "\\<")
	-- text = text:gsub(">", "\\>")
	text = text:gsub("`", "\\`")

	local command = "echo " .. text .. " | glow -"
	vim.cmd.terminal(command)

	if not M._showLineNumbers then
		vim.cmd("setlocal nonumber norelativenumber")
	end

	vim.api.nvim_set_current_win(currWin)
end

local closePreview = function()
	local buff = vim.api.nvim_win_get_buf(M._win)
	vim.api.nvim_buf_delete(buff, {})
end

M.setup = function(config)
	if config.showLineNumbers then
		M._showLineNumbers = config.showLineNumbers
	end

	vim.api.nvim_create_user_command("OpenMdPreview", function()
		showPreview()
	end, {})

	vim.api.nvim_create_user_command("CloseMdPreview", function()
		closePreview()
	end, {})
end

return M
