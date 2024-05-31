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

subknmoc1="Nh�n Kim Quang 7-14-30 ng�y(15%)+Ng�a H�n Huy�t 1 th�ng (10%)"
subknmoc2=""
subknmoc3=""
subknmoc4=""
subknmoc5=""

pt1moc1=""
pt2moc1="C�c Lo�i B�o R��ng H�n Ch� (30%)"

pt1moc2=""
pt2moc2=""
pt3moc2=""

pt1moc3=""
pt2moc3=""
pt3moc3=""


pt1moc4="4 X�ch L�n L�nh"
pt2moc4="500 H�nh Hi�p L�nh"
pt3moc4=""

pt1moc5="4 X�ch L�n L�nh"
pt2moc5="500 H�nh Hi�p L�nh"
pt3moc5="1 Minh Ph��ng L�nh"
---------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
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
	tbDailog.szTitleMsg = "<npc><bclr=violet>Ch�o M�ng Nh�n S� Tham Gia V� L�m Truy�n K�!...<bclr>",
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate >= startdate and nDate <= endate and nTime >= 0000 and nTime <= 2359) then

--	tbDailog:AddOptEntry("-------------------------------------", No);
	tbDailog:AddOptEntry("Gh�p K�o Ng� S�c B�ng Tinh", GhepBoHoaBonMua);
	tbDailog:AddOptEntry("Gh�p K�o S�a", GhepBanhKemDacBiet);
	tbDailog:AddOptEntry("Nh�n Th��ng M�c K�o Ng� S�c B�ng Tinh", NhanMoc);
tbDailog:AddOptEntry("Mua Nguy�n Li�u Event", MuaNguyenLieuEvent);
--	tbDailog:AddOptEntry("Nh�n Th��ng M�c B�nh Kem ��c Bi�t", NhanMocBanhKemDacBiet);
 tbDailog:AddOptEntry("Reset M�c Event K�o Ng� S�c B�ng Tinh (20 Xu)", Reset);
 --tbDailog:AddOptEntry("��i �� Event--", DoiDoEvent);
	tbDailog:AddOptEntry("Reset M�c Gh�p K�o S�a(20xu)", ResetBanhKemThuong);
--	tbDailog:AddOptEntry("Reset M�c B�nh Kem ��c Bi�t(50xu)", ResetBanhKemDacBiet);
--	if GetAccount()=="boquyx123" or GetAccount()=="admin93" then
			tbDailog:Show();
	--end
	else
Talk(1,"","<bclr=violet>Ho�t ��ng Ch� M� T� 0h Ng�y 04 - 05 - 2018 ��n 23h 59 Ng�y 30 - 06 - 2018 Xin M�i Quay L�i Sau<bclr>")
return 0;
end
end

function DoiDoEvent()
	local nPrice = 400
	local szTitle = format("Ng��i mu�n ��i g�",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{

               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Tu Luy�n Ch�u", tbProp = {6,1,1827,1,1},nCount = 3},
			},
			tbProduct = {szName="��i 3 Tu Luy�n Ch�u--> 1 Nh�n Kin Quang(30 ng�y)", tbProp={0,3771},nQuality = 1,nExpiredTime=30*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
		          [2] = 
		{
			tbMaterial = 
			{
                {szName = "B�o r��ng Gi�i H�n L�a Ch�n(30 Ng�y)", tbProp = {6,1,4370,1,1},nCount = 3},
			},
			tbProduct = {szName="��i 3 B�o r��ng Gi�i H�n L�a Ch�n--> 1 Nh�n Kin Quang(30 ng�y)", tbProp={0,3771},nQuality = 1,nExpiredTime=30*24*60},
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
	tinsert(tbOpt, {"H�y b�"})
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


local szTitle = "B�n �ang C� : \n<color=green>"..hoamai.." <color>K�o Kim B�ng Tinh\n<color=green>"..hoaphuong.." <color> K�o M�c B�ng Tinh \n<color=green>"..hoagao.."<color> K�o Th�y B�ng Tinh\n<color=green>"..hoathong.."<color> K�o H�a B�ng Tinh\n<color=green>"..hoathem.."<color> K�o Th� B�ng Tinh\n<color=yellow>300x5 Lo�i Nguy�n Li�u= 1 K�o S�a<color>"
	local Opt = 
	{	
		{"Ta Mu�n B�t ��u Gh�p", BatDauGhepkeosua_1},
		{"K�t th�c ��i tho�i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)
end

function BatDauGhepkeosua_1()
local nNum=300
	local tbItem = 
	{	
		{szName = "K�o S�a", tbProp = {6, 1, 1639, 1,0,0}, nCount = 300, nExpiredTime=43200},	
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


tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");

else 
	Say("Kh�ng �� Nguy�n Li�u Ho�c 10 Ch� Tr�ng");

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

local szTitle = "B�n �ang C� : \n<color=green>"..hoamai.." <color>K�o Kim B�ng Tinh\n<color=green>"..hoaphuong.." <color> K�o M�c B�ng Tinh \n<color=green>"..hoagao.."<color> K�o Th�y B�ng Tinh\n<color=green>"..hoathong.."<color> K�o H�a B�ng Tinh\n<color=green>"..hoathem.."<color> K�o Th� B�ng Tinh\n<color=green>"..xu.."<color> Xu \n<color=yellow>300x5 Lo�i Nguy�n Li�u + 300 Xu= 1 K�o Ng� S�c B�ng Tinh<color>"
	local Opt = 
	{	
		{"Ta Mu�n B�t ��u Gh�p", BatDauGhepHoa_1},
		{"K�t th�c ��i tho�i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)
end

function BatDauGhepHoa()

AskClientForNumber("BatDauGhepHoa_1", 1, 300, "Nh�p s� l��ng")

end
function BatDauGhepHoa_1(nNum)
nNum=300
	local tbItem = 
	{	
		{szName = "K�o Ng� S�c B�ng Tinh", tbProp = {6, 1, 1633, 1,0,0}, nCount = nNum, nExpiredTime=43200},	
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

tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");

else 
	Say("Kh�ng �� Nguy�n Li�u Ho�c 10 Ch� Tr�ng");

end

end

---------------------------------------
function MuaNguyenLieuEvent()
local tbSay = {}

		--tinsert(tbSay,"Mua 10 B� k�p 7 m�n <10 Xu> ./MuaKhanChoangDo")
	tinsert(tbSay,"Mua 1 K�o Ng� S�c B�ng Tinh <5 Xu> ./MuaKhanBanhChung")
		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function MuaKhanChoangDo()
local tbItem = {
	{szName="B� k�p 7 m�n", tbProp={6,1,4388,1,0,0},nCount = 10},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
		Msg2Player("Ch�c M�ng "..myplayersex().." �� Mua Th�nh C�ng 10 B� k�p 7 m�n")
	else
		Say("Kh�ng �� 10 Xu, Xin Xem L�i")
	end

end

function MuaKhanBanhChung()
local tbItem = {
{szName = "K�o Ng� S�c B�ng Tinh", tbProp = {6, 1, 1633, 1,0,0}, nCount = nNum, nExpiredTime=43200},	
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 5  then
		ConsumeEquiproomItem(5, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
		Msg2Player("Ch�c M�ng "..myplayersex().." �� Mua Th�nh C�ng 20 K�o Ng� S�c B�ng Tinh")
	else
		Say("Kh�ng �� 5 Xu, Xin Xem L�i")
	end

end


function NhanMoc()
	local tbSay = {}

		tinsert(tbSay,"Nh�n m�c 300./Moc500")
--		tinsert(tbSay,"Nh�n m�c 1200./Moc1000")
		
		tinsert(tbSay,"Tho�t/no")
		Say(" Hi�n B�n �ang S� D�ng <color=green>"..GetTask(HOAPHUONGTRANG).." <color>K�o Ng� S�c B�ng Tinh", getn(tbSay), tbSay)
	
end

function Moc500()
	if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return
	end
	
	if (GetTask(HOAPHUONGTRANG) >= 300) and (GetTask(NHANTHUONGMOC) == 0) then

				local a = random(1,5)
				if a==1 then
				tbAwardTemplet:GiveAwardByList({{szName = "Nh�t K� C�n Kh�n Ph�",tbProp={6,1,2126,1,1},nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 300 Nh�n ���c <color=yellow>Nh�t K� C�n Kh�n Ph�<color>  ,")
				WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 300 voi a="..a.."\n");		
				SetTask(NHANTHUONGMOC,1)
				end;
				
				if a==2 then
				tbAwardTemplet:GiveAwardByList({{szName = "B�o r��ng An Bang Ho�n M�",tbProp={6,1,4400,1,1},nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 300 Nh�n ���c <color=yellow>B�o r��ng An Bang Ho�n M�<color>  ,")
				WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 300 voi a="..a.."\n");		
				SetTask(NHANTHUONGMOC,1)
				end;
				
				if a==3 then
				tbAwardTemplet:GiveAwardByList({{szName = "H�n Huy�t Long C�u",tbProp={0,5214},nCount=1,nQuality=1,nExpiredTime=30*24*60},}, "test", 1);
				Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 300 Nh�n ���c <color=yellow>H�n Huy�t Long C�u<color>  ,")
				WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 300 voi a="..a.."\n");		
				SetTask(NHANTHUONGMOC,1)
				end;
				
				if a==4 then
				tbAwardTemplet:GiveAwardByList({{szName = "M�t n� chi�n tr��ng v��ng gi�",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
				Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 300 Nh�n ���c <color=yellow>M�t n� chi�n tr��ng v��ng gi�<color>  ,")
				WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 300 voi a="..a.."\n");		
				SetTask(NHANTHUONGMOC,1)
				end;
				if a==5 then
				tbAwardTemplet:GiveAwardByList({{szName = "Long V�n Ng�c B�ch",tbProp={6,1,1825,1,1},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
				--PlayerFunLib:AddSkillState(1622,20,3,46656000,1)
				Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 300 Nh�n ���c <color=yellow>Long V�n Ng�c B�ch<color>  ,")
				WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 300 voi a="..a.."\n");		
				SetTask(NHANTHUONGMOC,1)
				end;				
				


	else
		Talk(1,"","B�n Ch�a ��t T�i M�c N�y")
	end
end


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Reset()
local Xu = CalcEquiproomItemCount(4,417,1,1)
	if (GetTask(NHANTHUONGMOC) >= 1) then --and (GetTask(MOCRESETEVENT)<50)  then
		if (Xu >= 20) then
			SetTask(HOAPHUONGTRANG,0) ConsumeEquiproomItem(20,4,417,1,-1) SetTask(NHANTHUONGMOC,0) SetTask(MOCRESETEVENT,GetTask(MOCRESETEVENT)+1)

			Talk(1,"","<color=red>"..myplayersex().." Ch�c M�ng B�n �� Reset Th�nh C�ng."..GetTask(MOCRESETEVENT).."..!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh�ng �� 20 Xu Xin Ki�m Tra L�i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch�a S� D�ng �� 300 K�o Ng� S�c B�ng Tinh")
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
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 800") 
			Talk(1,"","<color=red>"..myplayersex().." Ch�c M�ng B�n �� Reset Th�nh C�ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh�ng �� 20 Xu Xin Ki�m Tra L�i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch�a S� D�ng �� 300 K�o Ng� S�c B�ng Tinh")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
function ResetBanhKemDacBiet()
local Xu = CalcEquiproomItemCount(4,417,1,1)
	if (GetTask(4996) >= 1000) then
		if (Xu >= 50) then
			SetTask(4996,0) ConsumeEquiproomItem(50,4,417,1,-1) SetTask(MOCBANHKEMDACBIET,0)
			Talk(1,"","<color=red>"..myplayersex().." Ch�c M�ng B�n �� Reset Th�nh C�ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh�ng �� 50 Xu Xin Ki�m Tra L�i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch�a S� D�ng �� 1000 B�nh Kem ��c Bi�t ")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
