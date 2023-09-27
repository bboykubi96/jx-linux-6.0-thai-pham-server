npc_thai_pham = { 
	--{585,80,4,53,1549,3266,0,"Céc Gç Train",0,"\\script\\global\\namcung\\namcung_say.lua"},
	--{603,80,4,53,1546,3278,0,"Ng­êi TuyÕt",0,"\\script\\global\\namcung\\namcung_say.lua"},
}


function add_npc_thai_pham()
	add_thai_pham(npc_thai_pham)
end

------------------------------------------------------------------------------------------------------------------------------
function add_thai_pham(tbnpc_thai_pham)
	for i = 1 , getn(tbnpc_thai_pham) do
		local Mid = SubWorldID2Idx(tbnpc_thai_pham[i][4]);
		if (Mid >= 0 ) then
			local t_value_5 = tbnpc_thai_pham[i][5] * 32;
			local t_value_6 = tbnpc_thai_pham[i][6] * 32;
			local nNpcIdx = AddNpc(tbnpc_thai_pham[i][1],tbnpc_thai_pham[i][2],Mid,t_value_5,t_value_6,tbnpc_thai_pham[i][7],tbnpc_thai_pham[i][8]);
			--SetNpcScript(nNpcIdx, tbnpc_thai_pham[i][10]);
		end;
	end;
end