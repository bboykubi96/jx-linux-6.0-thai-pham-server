---------------------------------***Edit*By*Heart*Doldly***------------------------------------
function main()
	mapindex = SubWorldID2Idx(226)
	if (mapindex < 0 ) then
		return
	end;
	bossid = 563
	bosslvl = 95
	posx = 1724*32
	posy = 3227*32
	AddNpcEx(bossid,bosslvl,3,mapindex,posx,posy,1, "Gia LuËt TÞ Ly", 1)
	AddGlobalNews("Nghe nãi H÷u sø cña Thiªn NhÉn Gi¸o Gia LuËt TÞ Ly ®· xuÊt hiÖn ë Mª Cung sa m¹c (215, 201) §«n Hoµng. ")
end; 