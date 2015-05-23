local dim
local table = {}
local row = {}
function showTable(table, dim)
	for a in 1, dim, 1 do
		for b in 1, dim, 1 do
			print '+-'
		end
		print '+'
		for b in 1, dim, 1 do
			print '|'
			print table[a][b]
		end
		print '|'
	end
	for a in 1, dim, 1 do
		print '+-'
	end
	print '+'
end
