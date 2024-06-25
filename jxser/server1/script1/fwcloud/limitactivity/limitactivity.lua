

tb_limitactivity = {}

function add_player()
local hwid = GetHex()
tb_limitactivity[hwid] = tb_limitactivity[hwid] + 1
Msg2Player(tb_limitactivity[1])
end


function remove_player()
local hwid = GetHex()
tb_limitactivity[hwid] = tb_limitactivity[hwid] - 1
end

function check_player()
return tb_limitactivity[hwid]
end






function GetHex()
	local szHWID = GetInfo()
	local ArrayHDD = split(szHWID,"-")
	local szHdd= ArrayHDD[1]..ArrayHDD[2]
	local szHdd_hex = floor(String2Id(szHdd)/100000)
	--Msg2Player(szHdd_hex)
	return szHdd_hex
end

function GetCount()
local hwid = GetHex()
tb_limitactivity[hwid] = tb_limitactivity[hwid] or 0

return tb_limitactivity[hwid]
end
