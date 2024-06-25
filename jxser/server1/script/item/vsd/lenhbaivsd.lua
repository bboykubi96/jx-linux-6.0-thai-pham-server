Include("\\script\\maps\\checkmap.lua");

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(nItemIndex)

	--dofile("script/item/vsd/lenhbaivsd.lua")
	--dofile("script/global/g7vn/g7configall.lua")
	if 1==1 then
	Say("H·y ®Õn T©y S¬n Th«n, t×m T©y S¬n TiÓu NhÞ  ®Ó lªn §¶o nhÐ")
		return 1;
	end
	if divisondao == 0 then
		Say("Vi S¬n §¶o t¹m thêi ch­a më")
		return 1;
	end

	local pMapID, pMx, pMy = GetWorldPos();
	if GetFightState()>=1 or (IsCityMap(pMapID)~=1 and IsFreshmanMap(pMapID)~=1 and pMapID ~= 175)  then
		Msg2Player("<color=yellow>LÖnh bµi Vi S¬n §¶o chØ cã thÓ sö dông t¹i khu vùc phi chiÕn ®Êu cña thµnh thÞ, t©n thñ th«n vµ t©y s¬n th«n<color>");
		return 1;
	end;
	--DinhHQ
	--20110407: kh«ng cho sö dông lÖnh bµi VSD trong v­ît ¶i 30
	if pMapID == 957 then
		Msg2Player("<color=yellow>Cuén truyÒn tèng M¹c B¾c chØ cã thÓ sö dông t¹i khu vùc phi chiÕn ®Êu cña thµnh thÞ, t©n thñ th«n vµ t©y s¬n th«n<color>");
		return 1;
	end
	--NewWorld(342, 1417, 2801)
	NewWorld(342,1178,2412) 
	SetFightState(1);
	return 0
end


