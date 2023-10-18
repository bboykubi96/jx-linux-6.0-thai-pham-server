---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
--------------------------------------------------------
HOAPHUONGTRANG	 = 4997
NHANTHUONGMOC		 = 4998

----------------------config-----------
startdate= 20210830
endate=20221231

subknmoc1="�� Ph� Tinh S��ng Y"
subknmoc2="Ng�a Ng� Phong"
subknmoc3=""
subknmoc4=""
subknmoc5=""

pt1moc1="M�t N� V��ng Gi�"
pt2moc1="05 Tinh S��ng Th�ch (��i)"

pt1moc2="Ng� H�nh �n + Xuy�n Y C�p 4"
pt2moc2="05 Tinh S��ng Th�ch (��i)"
pt3moc2="01 B� K�p 150 21 + ...."

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
function main()
dofile("script/global/g7vn/event/hoabonmua/eventmain.lua")
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	if GetTask(5334)>=10 then
		--tbLogEvent:LuuDSNhanVat()
	--	tbLogEvent:SapXepDSXepHang()
end
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<npc>��i Hi�p <color=yellow>"..GetName().."<color> �� s� d�ng\n <color=red>"..GetTask(4996).."<color> <color=cyan>Phong Ph�o Trung<color>\n <color=red>"..GetTask(4994).."<color> <color=cyan>Phong Ph�o ��i<color>",
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if nDate>=202205221900 and nDate<=202207302359 then

--	tbDailog:AddOptEntry("��i C�n Kh�n Song Tuy�t B�i", doicankhongstb);
--	
--	tbDailog:AddOptEntry("Mua H�p Di�m (5xu-1h�p)", muahopdiem);

	if GetAccount()=="thaitrinhpham" or GetAccount()=="kimluyen2002"  or GetAccount()=="cuckold010203" then


	end


		--		tbDailog:AddOptEntry("Mua 100 Hoa H�ng (1300 Xu)", MuaEvent500xu);
		--	tbDailog:AddOptEntry("Mua N�n (1 Xu - 1 C�i)", BatDauMuaHoa);
		--	tbDailog:AddOptEntry("Mua N� �� (1 V�n - 1 C�i)", BatDauMuaHoa2);
				 --  tbDailog:AddOptEntry("Gh�p Hoa C�c V�ng (Event Ti�n V�n)", GhepBoHoaBonMua3);
				   	  tbDailog:AddOptEntry("Gh�p Phong Ph�o Trung (Event V�n)", GhepBoHoaBonMua2);
	 tbDailog:AddOptEntry("Gh�p Phong Ph�o ��i (Event Xu)", GhepBoHoaBonMua);
		tbDailog:AddOptEntry("Nh�n Th��ng M�c 300 Event V�n + 300 Event Xu", Moc2000);	
	--tbDailog:AddOptEntry("Show Top L� C� �� Thi�u Nhi", ShowTopThiep);
	--tbDailog:AddOptEntry("Reset M�c Event B�nh Kem (20xu)", Reset);


tbDailog:Show();
	
else
Talk(1,"","<bclr=violet>Event ch�a m� ho�c �� h�t h�n.<bclr>")
return 0;
end

end
function doicankhongstb()
if CalcFreeItemCellCount()<5 then
	Say("H�nh trang kh�ng �� 5 � tr�ng.")
	return
end
	local lamthuytinh=CalcEquiproomItemCount(4,238,1,1)
	local lucthuytinh=CalcEquiproomItemCount(4,239,1,1)
	local tuthuytinh=CalcEquiproomItemCount(4,240,1,1)
	local nhatky=CalcEquiproomItemCount(6,1,2126,-1)
	if lamthuytinh>=10 and lucthuytinh>=10 and tuthuytinh>=10 and nhatky>=2 then
		local cankhon=random(1,3)
		if cankhon==1 then
			local rcankhon=random(1,10)
			if rcankhon<6 then
			tbAwardTemplet:GiveAwardByList({{szName = "C�n kh�n song tuy�t b�i",tbProp={6,1,4377,1,0,0},nCount=1,nExpiredTime=7*24*60},}, "test", 1);
			Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� ��i th�nh c�ng <color=cyan> C�n Kh�n Song Tuy�t B�i 7 Ng�y<color>")
			elseif rcankhon>=6 and rcankhon<=9 then
			tbAwardTemplet:GiveAwardByList({{szName = "C�n kh�n song tuy�t b�i",tbProp={6,1,4446,1,0,0},nCount=1,nExpiredTime=15*24*60},}, "test", 1);
			Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� ��i th�nh c�ng <color=cyan> C�n Kh�n Song Tuy�t B�i 15 Ng�y<color>")
			elseif rcankhon==10 then
			tbAwardTemplet:GiveAwardByList({{szName = "C�n kh�n song tuy�t b�i",tbProp={6,1,2219,1,0,0},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
			Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� ��i th�nh c�ng <color=cyan> C�n Kh�n Song Tuy�t B�i 30 Ng�y<color>")
			end
			ConsumeEquiproomItem(10,4,238,1,1)
			ConsumeEquiproomItem(10,4,239,1,1)
			ConsumeEquiproomItem(10,4,240,1,1)
			ConsumeEquiproomItem(2,6,1,2126,-1)
		else
		ConsumeEquiproomItem(10,4,238,1,1)
			ConsumeEquiproomItem(10,4,239,1,1)
			ConsumeEquiproomItem(10,4,240,1,1)
			ConsumeEquiproomItem(2,6,1,2126,-1)
			Msg2SubWorld("<color=green>Xin chia bu�n c�ng cao th� <color=yellow>"..GetName().."<color> �� �p x�t <color=cyan>C�n Kh�n Song Tuy�t B�i<color>")
		end
else
Say("H�nh trang kh�ng �� <color=yellow>10 B� Thu� Tinh + <color=red>2 Nh�t K� C�n Kh�n Ph�")
return	
	end
end
function muahopdiem()

AskClientForNumber("batdaumuahopdiem", 1, 200, "Nh�p s� l��ng")

end
function batdaumuahopdiem(nNum)
local tbItem = {
	{szName="H�p Di�m", tbProp={6,1,30309,1,0,0},nCount = nNum},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 5*nNum  then
		ConsumeEquiproomItem(5*nNum, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
		Msg2Player("Ch�c m�ng "..myplayersex().." �� mua th�nh c�ng <color=cyan>"..nNum.." H�p Di�m ")
	else
		Say("Kh�ng ��  Xu, Xin Xem L�i")
	end

end
--------------------------------------

function ShowTopThiep()

tbLogEvent:ShowTopList()
end
function MuaEvent500xu()
local tbItem = {
	{szName="Hoa H�ng", tbProp={6,1,3122,1,0,0},nCount = 100},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 1300  then
		ConsumeEquiproomItem(1300, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
		Msg2Player("Ch�c M�ng "..myplayersex().." �� Mua Th�nh C�ng 100 Hoa H�ng")
		--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� mua th�nh c�ng <color=red> 200 B� Hoa 20-10 <color> gi� <color=cyan>500xu<color>")
	else
		Say("Kh�ng ��  Xu, Xin Xem L�i")
	end
end
function GhepBoHoaBonMua3 ()
local phaotieu= CalcEquiproomItemCount(6,1,1436,-1)
local phaodai= CalcEquiproomItemCount(6,1,4315,-1)
local hoavang= CalcEquiproomItemCount(6,1,4316,-1)
local diemtongkim=GetTask(747)
local tien= CalcEquiproomItemCount(4,417,1,-1)
local szTitle = "B�n �ang C� : \n<color=green>"..phaotieu.." <color>Gi�y G�i Hoa \n<color=green>"..phaodai.."<color> D�y C�t Hoa\n<color=green>"..hoavang.."<color> Chi�c N�\n<color=green>"..diemtongkim.."<color> �i�m T�ng Kim\n<color=yellow>3 Nguy�n Li�u + 500 �i�m T�ng Kim= 1 Hoa C�c V�ng<color>"
	local Opt = 
	{	
		{"Ta Mu�n B�t ��u Gh�p", BatDauGhepHoa3},
		{"K�t th�c ��i tho�i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)
end
function BatDauGhepHoa3()

AskClientForNumber("BatDauGhepHoa_3", 1, 200, "Nh�p s� l��ng")

end
function BatDauGhepHoa_3(nNum)
	local tbItem = 
	{	
		{szName = "Hoa C�c V�ng", tbProp = {6, 1, 4311, 1,0,0}, nCount = nNum},	
	}

local phaotieu= CalcEquiproomItemCount(6,1,1436,-1)
local phaodai= CalcEquiproomItemCount(6,1,4315,-1)
local hoavang= CalcEquiproomItemCount(6,1,4316,-1)
local diemtongkim=GetTask(747)
	
if phaotieu>=nNum  and phaodai>=nNum and hoavang>=nNum and diemtongkim>=nNum*500 then
--Msg2Player(""..hoamai..","..hoaphuong..","..nNum.."")
--ConsumeEquiproomItem(nNum, 4,417, 1,-1)
ConsumeEquiproomItem(nNum, 6,1, 1436,-1)
ConsumeEquiproomItem(nNum, 6,1, 4315,-1)
ConsumeEquiproomItem(nNum, 6,1, 4316,-1)
SetTask(747,GetTask(747)-(nNum*500))
Msg2Player("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� d�ng nguy�n li�u gh�p th�nh <color=cyan> "..nNum.." Hoa C�c V�ng.")
tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
else 
	Say("Kh�ng �� Nguy�n Li�u Ho�c 10 Ch� Tr�ng");

end
end
function GhepBoHoaBonMua2 ()
local phaotieu= CalcEquiproomItemCount(6,1,4524,-1)
local phaodai= CalcEquiproomItemCount(6,1,4525,-1)
local hoavang= CalcEquiproomItemCount(6,1,4526,-1)
local diemtongkim=GetCash()
local tien= CalcEquiproomItemCount(4,417,1,-1)
local szTitle = "B�n �ang C� : \n<color=green>"..phaotieu.." <color>Ph�o Ti�u \n<color=green>"..phaodai.."<color> Ph�o Trung\n<color=green>"..hoavang.."<color> Ph�o ��i\n<color=yellow>3 Nguy�n Li�u + 2000 l��ng = 1 Phong Ph�o Trung<color>"
	local Opt = 
	{	
		{"Ta Mu�n B�t ��u Gh�p", BatDauGhepHoa2},
		{"K�t th�c ��i tho�i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)
end

---------------------------------------
function GhepBoHoaBonMua ()
local phaotieu= CalcEquiproomItemCount(6,1,4524,-1)
local phaodai= CalcEquiproomItemCount(6,1,4525,-1)
local hoavang= CalcEquiproomItemCount(6,1,4526,-1)
local diemtongkim=GetCash()
local tien= CalcEquiproomItemCount(4,417,1,-1)
local szTitle = "B�n �ang C� : \n<color=green>"..phaotieu.." <color>Ph�o Ti�u \n<color=green>"..phaodai.."<color> Ph�o Trung\n<color=green>"..hoavang.."<color> Ph�o ��i\n<color=yellow>3 Nguy�n Li�u + 1 Xu = 1 Phong Ph�o ��i<color>"
	local Opt = 
	{	
		{"Ta Mu�n B�t ��u Gh�p", BatDauGhepHoa},
		{"K�t th�c ��i tho�i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)
end
function BatDauMuaHoa()

AskClientForNumber("MuaKhanChoangDo", 1, 500, "Nh�p s� l��ng")

end
function BatDauMuaHoa2()

AskClientForNumber("MuaKhanChoangDo2", 1, 500, "Nh�p s� l��ng")

end
function BatDauGhepHoa()

AskClientForNumber("BatDauGhepHoa_1", 1, 200, "Nh�p s� l��ng")

end
function BatDauGhepHoa2()

AskClientForNumber("BatDauGhepHoa_2", 1, 200, "Nh�p s� l��ng")

end
function BatDauGhepHoa_2(nNum)
	local tbItem = 
	{	
		{szName = "Phong Ph�o Trung", tbProp = {6, 1, 4527, 1,0,0}, nCount = nNum},	
	}

local phaotieu= CalcEquiproomItemCount(6,1,4524,-1)
local phaodai= CalcEquiproomItemCount(6,1,4525,-1)
local hoavang= CalcEquiproomItemCount(6,1,4526,-1)
local diemtongkim=GetCash()
	
if phaotieu>=nNum  and phaodai>=nNum and hoavang>=nNum and diemtongkim>=2000*nNum  then
--Msg2Player(""..hoamai..","..hoaphuong..","..nNum.."")
--ConsumeEquiproomItem(nNum, 4,417, 1,-1)
ConsumeEquiproomItem(nNum, 6,1, 4525,-1)
ConsumeEquiproomItem(nNum, 6,1, 4524,-1)
ConsumeEquiproomItem(nNum, 6,1, 4526,-1)
Pay(2000*nNum)
--Msg2Player("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� d�ng nguy�n li�u gh�p th�nh <color=cyan> "..nNum.." Phong Ph�o Trung")
tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
else 
	Say("Kh�ng �� Nguy�n Li�u Ho�c 10 Ch� Tr�ng");

end
end
function BatDauGhepHoa_1(nNum)
	local tbItem = 
	{	
		{szName = "Phong Ph�o ��i", tbProp = {6, 1, 4528, 1,0,0}, nCount = nNum},	
	}
local phaotieu= CalcEquiproomItemCount(6,1,4524,-1)
local phaodai= CalcEquiproomItemCount(6,1,4525,-1)
local hoavang= CalcEquiproomItemCount(6,1,4526,-1)
local diemtongkim=GetCash()
local tien= CalcEquiproomItemCount(4,417,1,1)
	
if phaotieu>=nNum and hoavang>=nNum and phaodai>=nNum and tien>=nNum  then
--Msg2Player(""..hoamai..","..hoaphuong..","..nNum.."")
ConsumeEquiproomItem(nNum, 6,1, 4525,-1)
ConsumeEquiproomItem(nNum, 6,1, 4524,-1)
ConsumeEquiproomItem(nNum, 6,1, 4526,-1)
ConsumeEquiproomItem(nNum,4,417,1,1)
--Msg2Player("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� d�ng nguy�n li�u gh�p th�nh <color=cyan> "..nNum.." B�nh Kem Thi�u Nhi.")
tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");

else 
	Say("Kh�ng �� Nguy�n Li�u Ho�c 10 Ch� Tr�ng");

end

end

---------------------------------------
function MuaNguyenLieuEvent()
local tbSay = {}

		tinsert(tbSay,"Mua 10Kg Th�t Ch� <20 Xu> ./MuaKhanChoangDo")
		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MuaKhanChoangDo2(nNum)
local tbItem = {
	{szName="N� ��", tbProp={6,1,4493,1,0,0},nCount = nNum},
}
	local nCount_muaban = GetCash()
	if  nCount_muaban >= nNum*10000  then
		Pay(nNum*10000)
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
		Msg2Player("Ch�c m�ng "..myplayersex().." �� mua th�nh c�ng <color=cyan>"..nNum.." N� ��")
	else
		Say("Kh�ng ��  ti�n v�n, Xin Xem L�i")
	end

end
function MuaKhanChoangDo(nNum)
local tbItem = {
	{szName="N�n", tbProp={6,1,4496,1,0,0},nCount = nNum},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= nNum  then
		ConsumeEquiproomItem(nNum, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
		Msg2Player("Ch�c m�ng "..myplayersex().." �� mua th�nh c�ng <color=cyan>"..nNum.." N�n")
	else
		Say("Kh�ng ��  Xu, Xin Xem L�i")
	end

end



-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc2000_cu()
local tbSay = {
--"Ta Mu�n M�c 3000/#Moc2000(1)",
--"Ta Mu�n M�c 6000/#Moc2000(2)",
"Ta Mu�n M�c 9000/#Moc2000(3)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay),tbSay)

end

function Moc2000()
	if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return
	end
	if GetTask(4996)>=300 and GetTask(4994)>=300 and GetTask(4995)==0 then
		local rannnn=random(1,10)
		if rannnn>=1 and rannnn<=4 then
			local tbVnNewItemDropAward = {
				[1] = {
					{szName="L�nh B�i G�i Boss",tbProp={6,1,4489,1,0,0},nCount=10},
					{szName="�i�m Kinh Nghi�m",nExp_tl = 20e6},
				},
				}
			tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward,"Ph�n Th��ng M�c 300")
			local szNews="<color=green>Ch�c m�ng ��i hi�p <color=yellow>"..GetName().."<color> �� nh�n ���c <color=blue>20.000.000 EXP + 10 L�nh B�i G�i Boss<color> � m�c 300 Phong Ph�o ��i"
			LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		elseif rannnn>=5 and rannnn<=7 then
			local tbVnNewItemDropAward = {
				[1] = {
						--{szName="Ng�n L��ng",nJxb=20000000,nCount=1},
						{szName="�i�m Kinh Nghi�m",nExp_tl = 20e6},
					},
					}
					tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward,"Ph�n Th��ng M�c 300")
					local raeee=random(1,2)
					if raeee==1 then
						tbAwardTemplet:GiveAwardByList({{szName = "T�y T�y Kinh",tbProp={6,1,22,1,1},nCount=1,},}, "test", 1);
						local szNews="<color=green>Ch�c m�ng ��i hi�p <color=yellow>"..GetName().."<color> �� nh�n ���c <color=blue>20.000.000 EXP + 1 T�y T�y Kinh<color> � m�c 300 Phong Ph�o ��i"
						LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
					else
						tbAwardTemplet:GiveAwardByList({{szName = "V� L�m M�t T�ch",tbProp={6,1,26,1,1},nCount=1,},}, "test", 1);
						local szNews="<color=green>Ch�c m�ng ��i hi�p <color=yellow>"..GetName().."<color> �� nh�n ���c <color=blue>20.000.000 EXP + 1 V� L�m M�t T�ch<color> � m�c 300 Phong Ph�o ��i"
						LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
					end
		elseif rannnn>=8 or rannnn<=10 then
			local tbVnNewItemDropAward = {
				[1] = {
					{szName="�i�m Kinh Nghi�m",nExp_tl = 20e6},
				},
				}
			tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward,"Ph�n Th��ng M�c 300")
			local szNews="<color=green>Ch�c m�ng ��i hi�p <color=yellow>"..GetName().."<color> �� nh�n ���c <color=blue>20.000.000 EXP<color> � m�c 300 Phong Ph�o ��i"
			LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		end
		
		SetTask(4995,1)
	else
		Say("��i hi�p ch�a �n �� 300 Phong Ph�o Trung + 300 Phong Ph�o ��i ho�c �� nh�n th��ng m�c.")
		return
	end
end


----------------------------------------------------Nhan Moc 2000 -----------------------------------------------------------------------------------------------------
function Moc4000()
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return
	end
	if (GetTask(HOAPHUONGTRANG) >= 1000)  and (GetTask(NHANTHUONGMOC) == 1)then
		local tbAward = {
			[1] = {
			{szName="Ng� Phong",tbProp={0,3964},nCount=1,nQuality=1,nExpiredTime=30*24*60},
			{{szName="Ng� H�nh �n",tbProp={0,3953},nQuality=1,nExpiredTime=14*24*60},},
			{{szName="Xuy�n Y Ph� Gi�p",tbProp={0,3991},nQuality=1,nCount=1,nExpiredTime=14*24*60},},
			{szName="Tinh S��ng Th�ch (��i)",tbProp={6,1,4881,1,0,0},nCount=5},	
			{szName="M�t t�ch K� N�ng 150 C�p 21",tbProp={6,1,4369,1,0,0},nCount=1},	
			},
		}	
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 40e9}}, "test", 1);
		--WriteLogPro("dulieu/event_moc2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 1000\n");
		Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 1000")
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 400") SetTask(NHANTHUONGMOC,2)
				local a = random(1,20)
				if a==11 then
					tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Tinh S��ng Y",tbProp={6,1,4883,1,1},nCount=1,},}, "test", 1);
				end;

				local b = random(1,30)
				if b==15 then
					tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Tinh S��ng Kh� Gi�i",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);
				end;

				local c = random(1,50)
				if c==25 then
					tbAwardTemplet:GiveAwardByList({{szName="M�t N� Chi�n Tr��ng Vuong Gi�",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
				end;

				local d = random(1,5)
				if d==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
				end;

				local e = random(1,20)
				if e==5 then
					tbAwardTemplet:GiveAwardByList({{szName = "M�t t�ch K� N�ng 150 C�p 22",tbProp={6,1,4370,1,1},nCount=1,},}, "test", 1);
				end;

				local f = random(1,50)
				if f==24 then
					tbAwardTemplet:GiveAwardByList({{szName = "��i th�nh b� k�p 150 l�n C�p 21",tbProp={6,1,4889,1,1},nCount=1,},}, "test", 1);
				end;

				local i = random(1,20)
				if f==4 then
					tbAwardTemplet:GiveAwardByList({{szName = "Tinh S��ng L�nh",tbProp={6,1,4811,1,1},nCount=1,},}, "test", 1);
				end;
				
				local z = random(1,30)
				if z==5 then
					tbAwardTemplet:GiveAwardByList({{nExp_tl = 5e9}}, "test", 1);
					end;
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc6000()
	if (GetTask(HOAPHUONGTRANG) >= 6000)  and (GetTask(NHANTHUONGMOC) == 2)then
		local tbAward = {
			[1] = {
				{nExp_tl = 15e9},
				{szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=500},
				{szName="L�nh B�i X�ch L�n",tbProp={6,1,2370,1,0,0},nCount=3},	
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 600") SetTask(NHANTHUONGMOC,3)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc8000()
	if (GetTask(HOAPHUONGTRANG) >= 8000) and (GetTask(NHANTHUONGMOC) == 3) then
		local tbAward = {
			[1] = {
				{nExp_tl = 20e9},
				{szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=500},
				{szName="L�nh B�i X�ch L�n",tbProp={6,1,2370,1,0,0},nCount=4},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 800") SetTask(NHANTHUONGMOC,4)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc10000()
	if (GetTask(HOAPHUONGTRANG) >= 10000)  and (GetTask(NHANTHUONGMOC) == 4)then
		local tbAward = {
			[1] = {
				{szName="S� T� Ho�ng Kim",tbProp={0,189},nCount=1,nQuality=1,nExpiredTime=30*24*60},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 1000") SetTask(NHANTHUONGMOC,5)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Reset()
local Xu = CalcEquiproomItemCount(4,417,1,1)
	if (GetTask(HOAPHUONGTRANG) >= 1000) and GetTask(NHANTHUONGMOC)==0 then
		if (Xu >= 20) then
			SetTask(HOAPHUONGTRANG,0) ConsumeEquiproomItem(20,4,417,1,-1) SetTask(NHANTHUONGMOC,1) 
			Talk(1,"","<color=red>"..myplayersex().." Ch�c M�ng B�n �� Reset Th�nh C�ng...!")
	else
		Talk(1,"","<color=red>"..myplayersex().." Kh�ng �� 20 Xu Xin Ki�m Tra L�i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch�a �n �� 1000 <color=yellow>B�nh Kem Thi�u Nhi<color> ho�c �� max 2000 c�i.")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
