

new_npc = { 
{455,80,4,53,1625,3185,0,"H� Tr� T�n Th�",0,"\\script\\global\\namcung\\hotrotanthu\\npctanthu.lua"},
{1136,80,4,53,1623,3181,0,"H� Tr� GM",0,"\\script\\global\\namcung\\namcung_say.lua"},
}




function add_npc_tinhnang()
	add_namcung(new_npc)
	hoason_hoasonbynpc(hoason_parserby)
end

------------------------------------------------------------------------------------------------------------------------------
function add_namcung(tbnpc)
	for i = 1 , getn(tbnpc) do
		Mid = SubWorldID2Idx(tbnpc[i][4]);
		if (Mid >= 0 ) then
			TabValue5 = tbnpc[i][5] * 32;
			TabValue6 = tbnpc[i][6] * 32;
			local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]);
			SetNpcScript(nNpcIdx, tbnpc[i][10]);
		end;
	end;
end