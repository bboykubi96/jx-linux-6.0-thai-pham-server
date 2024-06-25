Include("\\script\\global\\systemconfig.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\misc\\maskfree\\event.lua")
Include("\\script\\event\\vnchristmas2006\\event.lua")	
Include("\\script\\global\\vn\\extpointfunc_proc.lua")
Include("\\script\\activitysys\\npcdailog.lua")
------------------------------------------------------------------------------
T_NAPTHE_X2 = 5973
CheckPass = {{"VoLamTruyenKy",1},}
---------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
-------------------------------------------------------------------------
function main()
if (GetBoxLockState() == 1) then
	Talk(1,"","<bclr=violet>Mêi "..myplayersex().." Më Khãa R­¬ng Tr­íc<bclr>")
return end
	local tbOpt = {
		{"Ta Muèn KiÓm Tra Kim Nguyªn B¶o",KiemTra_TD},
		--{"§æi 500 KNB Sang 500 TiÒn §ång",DoiTienDong2000},
--		{"§æi 100 KNB Sang 10000 TiÒn §ång",DoiTienDong100knb},
	--	{"§æi 10 KNB Sang 1000 TiÒn §ång",DoiTienDong},
		{"§æi 1 KNB Sang 1000 TiÒn §ång",DoiTienDong1knb},
	--	{"§æi 120 Xu Sang 1 KNB",DoiTienDong2000},
		{"Nh©n TiÖn GhÐ Qua Th«i",No},
	}
	CreateNewSayEx("Kh¸ch Quan GhÐ Th¨m Bæn TiÖm Cã ViÖc G×", tbOpt)
end
----------------------------------------------------------------------------KiÓm Tra TiÒn §ång-----------------------------------------------------------------------------------------------------------------------
function KiemTra_TD()
	local nMoney = GetExtPoint(1)
	if (nMoney >= 32768) then
		nMoney = 0
		Msg2Player("T¹m thêi kh«ng thÓ rót TiÒn ®ång! Xin liªn hÖ víi nhµ s¶n xuÊt ®Ó gi¶i quyÕt!") 
		return
	end
	if (nMoney == 0) then
		Say("<bclr=red>Xin Lçi:<bclr><bclr=violet> "..myplayersex().." Kh«ng Cã Göi Kim Nguyªn B¶o T¹i §©y...!")
	else
		local nCurVar = nMoney
		Say("<bclr=violet>Xin Chµo "..myplayersex()..":<bclr> <bclr=violet>\nHiÖn T¹i "..myplayersex().." §ang Göi T¹i §©y<color=yellow> "..nCurVar.." <color>Kim Nguyªn B¶o",3,
		"Ta Muèn Rót/Rut_KNB",
		"BiÕt råi/no") 
	end
end

---------------------------------------------------------------------------Rót TiÒn §ång-------------------------------------------------------------------------------------------------------------------------------
function Rut_KNB()
	AskClientForNumber("RutKNB",1,500,"Sè L­îng KNB")
end
function RutKNB(num)
local nGoldPoint = GetExtPoint(1);
	if nGoldPoint >= num and num>0 then
			PayExtPoint(1,num);
			AddStackItem(num,4,343,1,1,0,0)
			WriteLogPro("dulieu/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Rut THanh Cong "..num.."\n");
		Msg2Player("Chóc Mõng "..myplayersex().." §· Rót Thµnh C«ng "..num.." Kim Nguyªn B¶o")
		if GetAccount()~="loctran1" then
	--	Msg2SubWorld("<color=green>Xin Chóc Mõng<color> "..GetName().." <color=green> Rót Thµnh C«ng "..num.." KNB")
		end
	else
		Talk(1, "", "<bclr=red>"..myplayersex().." §ang Cã: "..nGoldPoint.." Kim Nguyªn B¶o\n Cßn ThiÕu: "..nGoldPoint-num.." Kim Nguyªn B¶o<bclr>")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTienDong100knb()
local tbItem = {
	{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nCount = 1000},
}
local KNB = CalcEquiproomItemCount(4,343,1,1);
	if KNB>= 100 then
			ConsumeEquiproomItem(100,4,343,1,-1)
			for i=1,10 do
			tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
			end
			WriteLogPro("dulieu/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 100 KNB Thanh 100 Xu\n");
		Msg2Player("Chóc Mõng "..myplayersex().." ®· ®æi thµnh c«ng 100 KNB nhËn ®­îc 10000 TiÒn §ång")
	--	Msg2SubWorld("<color=green>Xin Chóc Mõng<color> "..GetName().." <color=green> §æi Thµnh C«ng 10 KNB Sang 1000 Xu")
	else
		Talk(1, "", "<bclr=red>"..myplayersex().." B¹n Kh«ng §ñ 100 Kim Nguyªn B¶o\n  ")
	end
end
--------------------------------------------------------------------
function DoiTienDong()
local tbItem = {
	{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nCount = 1000},
}
local KNB = CalcEquiproomItemCount(4,343,1,1);
	if KNB>= 10 then
			ConsumeEquiproomItem(10,4,343,1,-1)
			tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
			WriteLogPro("dulieu/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 10 KNB Thanh 10 Xu\n");
		Msg2Player("Chóc Mõng "..myplayersex().." ®· ®æi thµnh c«ng 10 KNB nhËn ®­îc 1000 TiÒn §ång")
--		Msg2SubWorld("<color=green>Xin Chóc Mõng<color> "..GetName().." <color=green> §æi Thµnh C«ng 10 KNB Sang 1000 Xu")
	else
		Talk(1, "", "<bclr=red>"..myplayersex().." B¹n Kh«ng §ñ 10 Kim Nguyªn B¶o\n  ")
	end
end
-------------------------------------------------------------------
function DoiTienDong1knb()
local tbItem = {
	{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nCount = 1000},
}
local KNB = CalcEquiproomItemCount(4,343,1,1);
	if KNB>= 1 then
			ConsumeEquiproomItem(1,4,343,1,-1)
			tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
			WriteLogPro("dulieu/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 1 KNB Thanh 1000 Xu\n");
		Msg2Player("Chóc Mõng "..myplayersex().." ®· ®æi thµnh c«ng 1 KNB nhËn ®­îc 1000 TiÒn §ång")
	--	Msg2SubWorld("<color=green>Xin Chóc Mõng<color> "..GetName().." <color=green> §æi Thµnh C«ng 1 KNB Sang 100 Xu")
	else
		Talk(1, "", "<bclr=red>"..myplayersex().." B¹n Kh«ng §ñ 1 Kim Nguyªn B¶o\n  ")
	end
end
----------------------------------------------------------------------
function DoiTienDong2000()
local tbItem = {
	{szName="KNB", tbProp={4,343,1,1,0,0},nCount = 1},
}
local KNB = CalcEquiproomItemCount(4,417,1,1);
	if KNB>= 120 then
			ConsumeEquiproomItem(120,4,417,1,-1)
			tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
			WriteLogPro("dulieu/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 120xu thanh 1 KNB\n");
		Msg2Player("Chóc Mõng "..myplayersex().." ®· ®æi thµnh c«ng 120 Xu nhËn ®­îc 1 KNB")
	--	Msg2SubWorld("<color=green>Xin Chóc Mõng<color> "..GetName().." <color=green> §æi Thµnh C«ng 1 KNB Sang 100 Xu")
	else
		Talk(1, "", "<bclr=red>"..myplayersex().." B¹n Kh«ng §ñ 500 Kim Nguyªn B¶o\n  ")
	end
end
----------------------------------------------------------------------§æi TiÒn §ång------------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
