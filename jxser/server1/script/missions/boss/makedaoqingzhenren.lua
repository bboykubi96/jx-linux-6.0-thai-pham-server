---------------------------------***Edit*By*Heart*Doldly***------------------------------------
function main()
	mapindex = SubWorldID2Idx(224)
	if (mapindex < 0 ) then
		return
	end;
	bossid = 562
	bosslvl = 95
	posx = 1596*32
	posy = 2978*32
	AddNpcEx(bossid,bosslvl,4,mapindex,posx,posy,1, "§¹o Thanh Ch©n Nh©n", 1)
	AddGlobalNews("Nghe nãi §¹o Thanh Ch©n Nh©n ë §«n Hoµng sa m¹c lµ ng­êi (199, 186) trõ gian diÖt ¸c ")
end; 