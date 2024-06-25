---------------------------------***Edit*By*Heart*Doldly***------------------------------------
function main()
	mapindex = SubWorldID2Idx(227)
	if (mapindex < 0 ) then
		return
	end;
	bossid = 565
	bosslvl = 95
	posx = 1630*32
	posy = 3276*32
	AddNpcEx(bossid,bosslvl,3,mapindex,posx,posy,1, "§oan Méc DuÖ ", 1)
	AddGlobalNews("Cã ng­êi nh×n thÊy §oan Méc DuÖ ®· xuÊt hiÖn bÝ Èn ë mª cung (203, 204) sa m¹c §«n Hoµng. ")
end; 