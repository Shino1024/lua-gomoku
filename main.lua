local dim
local table = {}
local row = {}
local player = {true, false}
local chosenCords = {}

function showTable(table, dim)
	for a in 1, dim, 1 do
		for b in 1, dim, 1 do
			print "+-"
		end
		print '+'
		for b in 1, dim, 1 do
			print '|'
			print table[a][b]
		end
		print '|'
	end
	for a in 1, dim, 1 do
		print "+-"
	end
	print '+'
end

function getDataFromPlayers()
	local answer
	local coords = {}
	while true do
		if player[0] then
			io.write("Player one, coordinates: ")
		end
		else
			io.write("Player two, coordinates: ")
		end
		io.flush()
		answer = io.read()
		coords = string:match("([^,]+),([^,]+)")
		if tonumber(coords[0]) ~= nil and tonumber(coords[1]) ~= nil then
			if coords[0] > 0 and coords[0] <= dim and coords[1] > 0 and coords[1] <= dim then
				chosenCords = coords
			end
		end
		else
			print "Enter correct coordinates!"
		end
	end
end
