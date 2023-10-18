---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")


Include("\\script\\dailogsys\\g_dialog.lua")

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
--------------------------------------------------------
HOAPHUONGTRANG	 = 4999
NHANTHUONGMOC		 = 4998
MOCRESETEVENT=4992
BANHKEMDACBIET=4996
MOCBANHKEMDACBIET=4995
RESETMOCBANHKEMDACBIET=4994
RESET_EVENT=4993

----------------------config-----------
startdate= 20181204
endate=20201230

subknmoc1="NhÉn Kim Quang 7-14-30 ngµy(15%)+Ngùa H·n HuyÕt 1 th¸ng (10%)"
subknmoc2=""
subknmoc3=""
subknmoc4=""
subknmoc5=""

pt1moc1=""
pt2moc1="C¸c Lo¹i B¶o R­¬ng H¹n ChÕ (30%)"

pt1moc2=""
pt2moc2=""
pt3moc2=""

pt1moc3=""
pt2moc3=""
pt3moc3=""


pt1moc4="4 XÝch L©n LÖnh"
pt2moc4="500 Hµnh HiÖp LÖnh"
pt3moc4=""

pt1moc5="4 XÝch L©n LÖnh"
pt2moc5="500 Hµnh HiÖp LÖnh"
pt3moc5="1 Minh Ph­îng LÖnh"
---------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
----------------------------------------
function main1()
dofile("script/global/g7vn/event/hoabonmua/eventmain.lua")

end
function main()
dofile("script/global/g7vn/event/0106/eventmain.lua")

	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<npc><bclr=violet>Chµo Mõng Nh©n SÜ Tham Gia Vâ L©m TruyÒn Kú!...<bclr>",
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate >= startdate and nDate <= endate and nTime >= 0000 and nTime <= 2359) then

--	tbDailog:AddOptEntry("-------------------------------------", No);
	tbDailog:AddOptEntry("GhÐp KÑo Ngò S¾c B¨ng Tinh", GhepBoHoaBonMua);
	tbDailog:AddOptEntry("GhÐp KÑo S÷a", GhepBanhKemDacBiet);
	tbDailog:AddOptEntry("NhËn Th­ëng Mèc KÑo Ngò S¾c B¨ng Tinh", NhanMoc);
tbDailog:AddOptEntry("Mua Nguyªn LiÖu Event", MuaNguyenLieuEvent);
--	tbDailog:AddOptEntry("NhËn Th­ëng Mèc B¸nh Kem §Æc BiÖt", NhanMocBanhKemDacBiet);
 tbDailog:AddOptEntry("Reset Mèc Event KÑo Ngò S¾c B¨ng Tinh (20 Xu)", Reset);
 --tbDailog:AddOptEntry("§æi §å Event--", DoiDoEvent);
	tbDailog:AddOptEntry("Reset Mèc GhÐp KÑo S÷a(20xu)", ResetBanhKemThuong);
--	tbDailog:AddOptEntry("Reset Mèc B¸nh Kem §Æc BiÖt(50xu)", ResetBanhKemDacBiet);
--	if GetAccount()=="boquyx123" or GetAccount()=="admin93" then
			tbDailog:Show();
	--end
	else
Talk(1,"","<bclr=violet>Ho¹t §éng ChØ Më Tõ 0h Ngµy 04 - 05 - 2018 §Õn 23h 59 Ngµy 30 - 06 - 2018 Xin Mêi Quay L¹i Sau<bclr>")
return 0;
end
end

function DoiDoEvent()
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn ®æi g×",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{

               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Tu LuyÖn Ch©u", tbProp = {6,1,1827,1,1},nCount = 3},
			},
			tbProduct = {szName="§æi 3 Tu LuyÖn Ch©u--> 1 NhÉn Kin Quang(30 ngµy)", tbProp={0,3771},nQuality = 1,nExpiredTime=30*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
		          [2] = 
		{
			tbMaterial = 
			{
                {szName = "B¶o r­¬ng Giíi H¹n Lùa Chän(30 Ngµy)", tbProp = {6,1,4370,1,1},nCount = 3},
			},
			tbProduct = {szName="§æi 3 B¶o r­¬ng Giíi H¹n Lùa Chän--> 1 NhÉn Kin Quang(30 ngµy)", tbProp={0,3771},nQuality = 1,nExpiredTime=30*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);

end


tbEquip2Item = tbActivityCompose:new()
---------------------------------------
function GhepBanhKemDacBiet()
local hoamai= CalcEquiproomItemCount(6,1,1628,-1)
local hoaphuong= CalcEquiproomItemCount(6,1,1629,-1)
local hoagao= CalcEquiproomItemCount(6,1,1630,-1)
local hoathong= CalcEquiproomItemCount(6,1,1631,-1)
local hoathem= CalcEquiproomItemCount(6,1,1632,-1)
--local kembonmua= CalcEquiproomItemCount(6,1,4388,-1)


local szTitle = "B¹n §ang Cã : \n<color=green>"..hoamai.." <color>KÑo Kim B¨ng Tinh\n<color=green>"..hoaphuong.." <color> KÑo Méc B¨ng Tinh \n<color=green>"..hoagao.."<color> KÑo Thñy B¨ng Tinh\n<color=green>"..hoathong.."<color> KÑo Háa B¨ng Tinh\n<color=green>"..hoathem.."<color> KÑo Thæ B¨ng Tinh\n<color=yellow>300x5 Lo¹i Nguyªn LiÖu= 1 KÑo S÷a<color>"
	local Opt = 
	{	
		{"Ta Muèn B¾t §Çu GhÐp", BatDauGhepkeosua_1},
		{"KÕt thóc ®èi tho¹i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)
end

function BatDauGhepkeosua_1()
local nNum=300
	local tbItem = 
	{	
		{szName = "KÑo S÷a", tbProp = {6, 1, 1639, 1,0,0}, nCount = 300, nExpiredTime=43200},	
	}

local hoamai= CalcEquiproomItemCount(6,1,1628,-1)
local hoaphuong= CalcEquiproomItemCount(6,1,1629,-1)
local hoagao= CalcEquiproomItemCount(6,1,1630,-1)
local hoathong= CalcEquiproomItemCount(6,1,1631,-1)
local hoathem= CalcEquiproomItemCount(6,1,1632,-1)


	
if hoamai>=nNum and hoaphuong>=nNum and hoagao>=nNum and hoathong>=nNum  and hoathem>=nNum then

--ConsumeEquiproomItem(nNum, 4,417, 1,-1)
ConsumeEquiproomItem(nNum, 6,1, 1628,-1)
ConsumeEquiproomItem(nNum, 6,1, 1629,-1)
ConsumeEquiproomItem(nNum, 6,1, 1630,-1)
ConsumeEquiproomItem(nNum, 6,1, 1631,-1)
ConsumeEquiproomItem(nNum, 6,1, 1632,-1)


tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");

else 
	Say("Kh«ng §ñ Nguyªn LiÖu HoÆc 10 Chç Trèng");

end


end
---------------------------------------
function GhepBoHoaBonMua ()
local hoamai= CalcEquiproomItemCount(6,1,1628,-1)
local hoaphuong= CalcEquiproomItemCount(6,1,1629,-1)
local hoagao= CalcEquiproomItemCount(6,1,1630,-1)
local hoathong= CalcEquiproomItemCount(6,1,1631,-1)
local hoathem= CalcEquiproomItemCount(6,1,1632,-1)
--local kembonmua= CalcEquiproomItemCount(6,1,4388,-1)
local xu= CalcEquiproomItemCount(4,417,1,-1)

local szTitle = "B¹n §ang Cã : \n<color=green>"..hoamai.." <color>KÑo Kim B¨ng Tinh\n<color=green>"..hoaphuong.." <color> KÑo Méc B¨ng Tinh \n<color=green>"..hoagao.."<color> KÑo Thñy B¨ng Tinh\n<color=green>"..hoathong.."<color> KÑo Háa B¨ng Tinh\n<color=green>"..hoathem.."<color> KÑo Thæ B¨ng Tinh\n<color=green>"..xu.."<color> Xu \n<color=yellow>300x5 Lo¹i Nguyªn LiÖu + 300 Xu= 1 KÑo Ngò S¾c B¨ng Tinh<color>"
	local Opt = 
	{	
		{"Ta Muèn B¾t §Çu GhÐp", BatDauGhepHoa_1},
		{"KÕt thóc ®èi tho¹i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)
end

function BatDauGhepHoa()

AskClientForNumber("BatDauGhepHoa_1", 1, 300, "NhËp sè l­îng")

end
function BatDauGhepHoa_1(nNum)
nNum=300
	local tbItem = 
	{	
		{szName = "KÑo Ngò S¾c B¨ng Tinh", tbProp = {6, 1, 1633, 1,0,0}, nCount = nNum, nExpiredTime=43200},	
	}

local hoamai= CalcEquiproomItemCount(6,1,1628,-1)
local hoaphuong= CalcEquiproomItemCount(6,1,1629,-1)
local hoagao= CalcEquiproomItemCount(6,1,1630,-1)
local hoathong= CalcEquiproomItemCount(6,1,1631,-1)
local hoathem= CalcEquiproomItemCount(6,1,1632,-1)
--local kembonmua= CalcEquiproomItemCount(6,1,4388,-1)
local xu= CalcEquiproomItemCount(4,417,1,-1)

	
if hoamai>=nNum and hoaphuong>=nNum and hoagao>=nNum and hoathong>=nNum and xu>=nNum  and hoathem>=nNum then

--ConsumeEquiproomItem(nNum, 4,417, 1,-1)
ConsumeEquiproomItem(nNum, 6,1, 1628,-1)
ConsumeEquiproomItem(nNum, 6,1, 1629,-1)
ConsumeEquiproomItem(nNum, 6,1, 1630,-1)
ConsumeEquiproomItem(nNum, 6,1, 1631,-1)
ConsumeEquiproomItem(nNum, 6,1, 1632,-1)
ConsumeEquiproomItem(nNum, 4,417, 1,-1)

tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");

else 
	Say("Kh«ng §ñ Nguyªn LiÖu HoÆc 10 Chç Trèng");

end

end

---------------------------------------
function MuaNguyenLieuEvent()
local tbSay = {}

		--tinsert(tbSay,"Mua 10 BÝ kÝp 7 mãn <10 Xu> ./MuaKhanChoangDo")
	tinsert(tbSay,"Mua 1 KÑo Ngò S¾c B¨ng Tinh <5 Xu> ./MuaKhanBanhChung")
		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function MuaKhanChoangDo()
local tbItem = {
	{szName="BÝ kÝp 7 mãn", tbProp={6,1,4388,1,0,0},nCount = 10},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
		Msg2Player("Chóc Mõng "..myplayersex().." §· Mua Thµnh C«ng 10 BÝ kÝp 7 mãn")
	else
		Say("Kh«ng ®ñ 10 Xu, Xin Xem L¹i")
	end

end

function MuaKhanBanhChung()
local tbItem = {
{szName = "KÑo Ngò S¾c B¨ng Tinh", tbProp = {6, 1, 1633, 1,0,0}, nCount = nNum, nExpiredTime=43200},	
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 5  then
		ConsumeEquiproomItem(5, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
		Msg2Player("Chóc Mõng "..myplayersex().." §· Mua Thµnh C«ng 20 KÑo Ngò S¾c B¨ng Tinh")
	else
		Say("Kh«ng ®ñ 5 Xu, Xin Xem L¹i")
	end

end


function NhanMoc()
	local tbSay = {}

		tinsert(tbSay,"NhÉn m«c 300./Moc500")
--		tinsert(tbSay,"NhËn mèc 1200./Moc1000")
		
		tinsert(tbSay,"Tho¸t/no")
		Say(" HiÖn B¹n §ang Sö Dông <color=green>"..GetTask(HOAPHUONGTRANG).." <color>KÑo Ngò S¾c B¨ng Tinh", getn(tbSay), tbSay)
	
end

function Moc500()
	if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return
	end
	
	if (GetTask(HOAPHUONGTRANG) >= 300) and (GetTask(NHANTHUONGMOC) == 0) then

				local a = random(1,5)
				if a==1 then
				tbAwardTemplet:GiveAwardByList({{szName = "NhÊt Kû Cµn Kh«n Phï",tbProp={6,1,2126,1,1},nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 300 NhËn §­îc <color=yellow>NhÊt Kû Cµn Kh«n Phï<color>  ,")
				WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 300 voi a="..a.."\n");		
				SetTask(NHANTHUONGMOC,1)
				end;
				
				if a==2 then
				tbAwardTemplet:GiveAwardByList({{szName = "B¶o r­¬ng An Bang Hoµn Mü",tbProp={6,1,4400,1,1},nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 300 NhËn §­îc <color=yellow>B¶o r­¬ng An Bang Hoµn Mü<color>  ,")
				WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 300 voi a="..a.."\n");		
				SetTask(NHANTHUONGMOC,1)
				end;
				
				if a==3 then
				tbAwardTemplet:GiveAwardByList({{szName = "H·n HuyÕt Long C©u",tbProp={0,5214},nCount=1,nQuality=1,nExpiredTime=30*24*60},}, "test", 1);
				Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 300 NhËn §­îc <color=yellow>H·n HuyÕt Long C©u<color>  ,")
				WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 300 voi a="..a.."\n");		
				SetTask(NHANTHUONGMOC,1)
				end;
				
				if a==4 then
				tbAwardTemplet:GiveAwardByList({{szName = "MÆt n¹ chiÕn tr­êng v­¬ng gi¶",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
				Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 300 NhËn §­îc <color=yellow>MÆt n¹ chiÕn tr­êng v­¬ng gi¶<color>  ,")
				WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 300 voi a="..a.."\n");		
				SetTask(NHANTHUONGMOC,1)
				end;
				if a==5 then
				tbAwardTemplet:GiveAwardByList({{szName = "Long V¨n Ngäc BÝch",tbProp={6,1,1825,1,1},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
				--PlayerFunLib:AddSkillState(1622,20,3,46656000,1)
				Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 300 NhËn §­îc <color=yellow>Long V¨n Ngäc BÝch<color>  ,")
				WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 300 voi a="..a.."\n");		
				SetTask(NHANTHUONGMOC,1)
				end;				
				


	else
		Talk(1,"","B¹n Ch­a §¹t Tíi Mèc Nµy")
	end
end


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Reset()
local Xu = CalcEquiproomItemCount(4,417,1,1)
	if (GetTask(NHANTHUONGMOC) >= 1) then --and (GetTask(MOCRESETEVENT)<50)  then
		if (Xu >= 20) then
			SetTask(HOAPHUONGTRANG,0) ConsumeEquiproomItem(20,4,417,1,-1) SetTask(NHANTHUONGMOC,0) SetTask(MOCRESETEVENT,GetTask(MOCRESETEVENT)+1)

			Talk(1,"","<color=red>"..myplayersex().." Chóc Mõng B¹n §· Reset Thµnh C«ng."..GetTask(MOCRESETEVENT).."..!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh«ng §ñ 20 Xu Xin KiÓm Tra L¹i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch­a Sö Dông §ñ 300 KÑo Ngò S¾c B¨ng Tinh")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
function ResetBanhKemThuong()
local Xu = CalcEquiproomItemCount(4,417,1,1)
	if (GetTask(4997) >= 300) then
		if (Xu >= 20) then
			SetTask(4997,0) ConsumeEquiproomItem(20,4,417,1,-1) --SetTask(NHANTHUONGMOC,0)
					local tbAward = {
			[1] = {
				{nExp_tl = 5e9},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 800") 
			Talk(1,"","<color=red>"..myplayersex().." Chóc Mõng B¹n §· Reset Thµnh C«ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh«ng §ñ 20 Xu Xin KiÓm Tra L¹i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch­a Sö Dông §ñ 300 KÑo Ngò S¾c B¨ng Tinh")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
function ResetBanhKemDacBiet()
local Xu = CalcEquiproomItemCount(4,417,1,1)
	if (GetTask(4996) >= 1000) then
		if (Xu >= 50) then
			SetTask(4996,0) ConsumeEquiproomItem(50,4,417,1,-1) SetTask(MOCBANHKEMDACBIET,0)
			Talk(1,"","<color=red>"..myplayersex().." Chóc Mõng B¹n §· Reset Thµnh C«ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh«ng §ñ 50 Xu Xin KiÓm Tra L¹i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch­a Sö Dông §ñ 1000 B¸nh Kem §Æc BiÖt ")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
