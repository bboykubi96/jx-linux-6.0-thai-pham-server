-- script viet hoa By http://tranhba.com  ��ng b�c khu Tr��ng b�ch s�n ch�n to Tr��ng b�ch s�n nam l�c 1 
-- script viet hoa By http://tranhba.com Trap ID# ��ng b�c khu 2 

function main(sel)
--SetFightState(1); 
--NewWorld(321,966,2296); 
--AddTermini(198) 

	local tbSay = {}
	tinsert(tbSay,"�i tr��ng b�ch nam ./truongbachnam")
	--tinsert(tbSay,"�i tr��ng b�ch ��ng ./truongbachdong")
	tinsert(tbSay,"K�t th�c ��i tho�i ! /#no()")
	Say("V� huynh ��i n�y mu�n �i ��u ?", getn(tbSay), tbSay)
	return 1
end;

function truongbachnam()
SetFightState(1); 
NewWorld(321,966,2296); 
AddTermini(198) 
end;

function truongbachdong()
SetFightState(1); 
NewWorld(998,966,2296); 
AddTermini(227) 
end;