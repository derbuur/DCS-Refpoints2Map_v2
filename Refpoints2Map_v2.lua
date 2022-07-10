-- Refpoints2Map_v2 by buur

function getTableSize(t)
    local count = 0
    for _, __ in pairs(t) do
        count = count + 1
    end
    return count
end 

for i = 0, 2, 1 do
--trigger.action.outText(i, 100, false)
	Ref2Map = coalition.getRefPoints(i)
--trigger.action.outText(mist.utils.tableShow(Ref2Map), 100, false)
		if Ref2Map then
		
			for key, val in pairs(Ref2Map) do
--trigger.action.outText(mist.utils.tableShow(Ref2Map), 100, false)
				local id_table = world.getMarkPanels( )
				local size_id_table = getTableSize(id_table)
				
				local myCallsigns = {
									[0] = "N/A",
									[1] = "FORD",
									[2] = "EDSEL",
									[3] = "DODGE",
									[4] = "MAZDA",
									[5] = "BANKS",
									[6] = "CHEVY",
									[7] = "TOWEL", 
									[8] = "ADDER"}
				
				trigger.action.textToAll(
					i,
					size_id_table + key,
					val["point"],
					{0,0,0, 1},
					{0.8,0.8,0.8,0.5},
					11,
					true,
					"◊ "..myCallsigns[val["callsign"]]
				)
			end
		end
end