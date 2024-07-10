local options = {
	-- tab indent number
	-- tab缩进数
	shiftwidth=4,
	tabstop=4,
}

for k, v in pairs(options) do
	vim.opt[k] = v;
end

