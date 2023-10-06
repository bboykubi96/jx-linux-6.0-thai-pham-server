new_npc = { 
	{455,80,4,53,1625,3185,0,"Hç Trî T©n Thñ",0,"\\script\\global\\namcung\\hotrotanthu\\npctanthu.lua"},
	{1136,80,4,53,1623,3181,0,"Hæ Trî Test Server",0,"\\script\\global\\namcung\\namcung_say.lua"},
	{203,80,4,53,1595,3217,0,"HiÖu Thuèc VIP",0,"\\script\\global\\npc\\hieuthuoc.lua"},
	{203,80,4,380,1246,3537,0,"Qu©n Nhu quan",0,"\\script\\battles\\butcher\\doctor.lua"},
	{203,80,4,380,1679,3067,0,"Qu©n Nhu quan",0,"\\script\\battles\\butcher\\doctor.lua"},
	{203,80,4,379,1679,3067,0,"Qu©n Nhu quan",0,"\\script\\battles\\butcher\\doctor.lua"},
	{203,80,4,379,1679,3067,0,"Qu©n Nhu quan",0,"\\script\\battles\\butcher\\doctor.lua"},
}

function add_npc_tinhnang()
	add_namcung(new_npc)
	--hoason_hoasonbynpc(hoason_parserby)
end

------------------------------------------------------------------------------------------------------------------------------
function add_namcung(tbnpc)
	for i = 1 , getn(tbnpc) do
		local Mid = SubWorldID2Idx(tbnpc[i][4]);
		if (Mid >= 0 ) then
			local TabValue5 = tbnpc[i][5] * 32;
			local TabValue6 = tbnpc[i][6] * 32;
			local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]);
			SetNpcScript(nNpcIdx, tbnpc[i][10]);
		end;
	end;
end