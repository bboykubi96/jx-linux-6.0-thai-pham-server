--ÖÐÔ­ÄÏÇø ÏåÑô¸® ¢í··×Ó¶Ô»°
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
function main(sel)
Say("M· phiÕn tö: Cã lµ thiªn lý m·, còng ph¶i cã Nh¹c b¸ míi ®­îc, ®¸ng tiÕc trªn ®êi ng­êi nhiÒu dÜ m¹o lÊy vËt, thiÖt gi¶ ch¼ng ph©n biÖt ®­îc, bÊt kÓ ®óng sai , thËt lµ buån c­êi !", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no");--,"§æi M¶nh Ra Ngùa/doimanhrangua","N©ng CÊp Phi V©n/nangcapphivan"

end;


function yes()
Sale(46);  			--µ¯³ö½»Ò×¿ò
end;
function nangcapphivan()
if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng CÊp Ngùa.", "Bá ngùa ChiÕu D¹ hoÆc XÝch Thè vµo.\nKh«ng bá nguyªn liÖu vµo.\n- 8 M¶nh §Ých L«\n- 8 M¶nh TuyÕt ¶nh \n- 8 M¶nh ¤ V©n §¹p TuyÕt\n- 2 KNB\n- 2000 V¹n L­îng \nTû lÖ thµnh c«ng 10%", "nangcapphivan_ok", "no", 1)
end

function nangcapphivan_ok(nCount)
if nCount~=1 then
	Say("ChØ Bá Ngùa Vµo, Nguyªn LiÖu §Ó Ngoµi Hµnh Trang.")
	return
end
local manhdichlo= CalcEquiproomItemCount(4,1645,1,1)
local manhtuyetan= CalcEquiproomItemCount(4,1646,1,1)
local manhovan= CalcEquiproomItemCount(4,1649,1,1)
local knb= CalcEquiproomItemCount(4,343,1,1)
local nItemIndex = GetGiveItemUnit(1)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
local nCurTime = GetCurServerTime()
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end	
	if (nD==10 and nP==5 and nL==7) or (nD==10 and nP==5 and nL==5) then

			local tbItem = 
	{	
		{szName = "Phi V©n", tbProp = {0,10,8,10,0,0,0}, nCount = 1},	
	}
	if manhdichlo>=8 and manhovan>=8 and manhtuyetan>=8 and knb>=2 and GetCash()>=20000000 then
				local a=random(1,100)
				if a<=10  then
				RemoveItemByIndex(nItemIndex)
					ConsumeEquiproomItem(8, 4,1645,1,1)
					ConsumeEquiproomItem(8, 4,1646,1,1)
					ConsumeEquiproomItem(8, 4,1649,1,1)
					ConsumeEquiproomItem(2, 4,343,1,1)
					Pay(20000000)
--local Index = AddGoldItem(0,710) SyncItem(Index) 
					tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
					Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· luyÖn thµnh c«ng <color=cyan> Phi V©n.")
				--	WriteLogPro("dulieu/dulieuepngua.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t  Ðp thµnh cong Xich Long Cau\n");	
				else
					RemoveItemByIndex(nItemIndex)
					ConsumeEquiproomItem(8, 4,1645,1,1)
					ConsumeEquiproomItem(8, 4,1646,1,1)
					ConsumeEquiproomItem(8, 4,1649,1,1)
					ConsumeEquiproomItem(2, 4,343,1,1)
					Pay(20000000)
					Msg2SubWorld("<color=green>ThÝ Chñ <color=yellow>"..GetName().."<color> Võa luyÖn xÞt ngùa <color=red> Phi V©n<color><color=green>Xin chia buån cïng gia quyÕn.")
				end
				else 
				Say("Kh«ng §ñ Nguyªn LiÖu.");
		end
	else
	Say("Thø ng­¬i bá vµo kh«ng ph¶i lµ Ngùa XÝch Thè hoÆc Ngùa ChiÕu D¹.")
	end
end
function doimanhrangua()
			local tbSay = {
"§æi Ngùa §Ých L«./#doinguadichlo()",
"§æi Ngùa TuyÕt ¶nh./#doinguatuyetanh()",
"§æi Ngùa ChiÕu D¹./#doinguachieuda()",
"§æi Ngùa XÝch Thè./#doinguaxichtho()",
"§æi Ngùa ¤ V©n §¹p TuyÕt./#doinguaovan()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n muèn ®æi lÊy vËt phÈm nµo?",getn(tbSay),tbSay)
end
function doinguaovan()
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1649,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1649,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "¤ V©n §¹p TuyÕt",tbProp={0,10,5,6,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 8 M¶nh Ngùa ¤ V©n §¹p TuyÕt cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doinguaxichtho()
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1648,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1648,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "XÝch Thè",tbProp={0,10,5,7,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 8 M¶nh Ngùa XÝch Thè cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doinguachieuda()
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1647,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1647,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "ChiÕu D¹ Ngäc S­ Tö",tbProp={0,10,5,5,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 8 M¶nh Ngùa ChiÕu D¹ cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doinguatuyetanh()
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1646,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1646,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Ngùa TuyÕt ¶nh",tbProp={0,10,5,8,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 8 M¶nh Ngùa TuyÕt ¶nh cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doinguadichlo()
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1645,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1645,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Ngùa §Ých L«",tbProp={0,10,5,9,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 8 M¶nh Ngùa §Ých L« cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function no()
end;

