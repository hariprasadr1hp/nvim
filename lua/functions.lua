-- ~/.config/nvim/lua/functions.lua


-- dumping the contents
function _G.dump(...)
	local objects = vim.tbl_map(vim.inspect, {...})
	print(unpack(objects))
end
