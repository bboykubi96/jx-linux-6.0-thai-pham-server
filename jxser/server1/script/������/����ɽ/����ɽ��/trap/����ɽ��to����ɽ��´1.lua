-- script viet hoa By http://tranhba.com  ®«ng b¾c khu Tr­êng b¹ch s¬n ch©n to Tr­êng b¹ch s¬n nam léc 1 
-- script viet hoa By http://tranhba.com Trap ID# ®«ng b¾c khu 2 

function main(sel)
--SetFightState(1); 
--NewWorld(321,966,2296); 
--AddTermini(198) 

	local tbSay = {}
	tinsert(tbSay,"§i tr­êng b¹ch nam ./truongbachnam")
	--tinsert(tbSay,"§i tr­êng b¹ch ®«ng ./truongbachdong")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i ! /#no()")
	Say("VÞ huynh ®µi nµy muèn ®i ®©u ?", getn(tbSay), tbSay)
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