Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")
Include("\\script\\global\\namcung\\npctuchat.lua")
Include("\\script\\global\\namcung\\gmquanlyserver\\ds_gm.lua");
Include("\\script\\update_feature\\giftcode\\gift.lua")
Include("\\script\\global\\namcung\\hotro_head.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\update_feature\\nhanthuongngay\\award_day.lua")
Include("\\script\\gm_tool\\dohoangkim.lua")
Include("\\script\\gm_tool\\dohoangkimmax.lua")
Include("\\script\\global\\g7vn\\npc_monphai.lua")
OpenGame = 0
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
function main()
	-- dofile("script/global/namcung/namcung_say.lua");	
	local nNam = tonumber(GetLocalDate("%Y"));
   	local nThang = tonumber(GetLocalDate("%m"));
   	local nNgay = tonumber(GetLocalDate("%d"));
                     local nGio = tonumber(GetLocalDate("%H"));
 	local nPhut = tonumber(GetLocalDate("%M"));
   	local nGiay = tonumber(GetLocalDate("%S"));
	local nCurDate = nCurDate or tonumber(GetLocalDate("%Y%m%d%H%M"))
	local nStartDate = 202208191900 --N�m th�ng ng�y gi� ph�t gi�y
	if nCurDate < nStartDate then
		Talk(1, "", "Hi�n ch�a t�i th�i gian Khai m� m�y ch� vui l�ng ch� t�i <color=green>19h00 - Ng�y: 19/08/2022<color>.\nB�y gi� l�: <color=metal>"..nNgay.."/"..nThang.."/"..nNam.."<color> - <color=orange>"..nGio..":"..nPhut..":"..nGiay.."<color>")
	return 1
end
	local nNam = tonumber(GetLocalDate("%Y"));
   	local nThang = tonumber(GetLocalDate("%m"));
   	local nNgay = tonumber(GetLocalDate("%d"));
                   local nGio = tonumber(GetLocalDate("%H"));
 	local nPhut = tonumber(GetLocalDate("%M"));
   	local nGiay = tonumber(GetLocalDate("%S"));
	local now = tonumber(GetLocalDate("%Y%m%d%H%M"));
   	--npcchat_npcmacdinh()
	if CheckAccountGM() then
	local szTitle = "<npc>Xin ch�o ��i hi�p <color=orange>"..GetName().."<color>.<enter>Ta l� <color=green>Dao C� Ti�n T�<color> ph� tr�ch vi�c h� tr� ng��i ch�i m�i! Ta c� th� gi�p g� cho ��i hi�p? \nH�m nay: <color=metal>"..nNgay.."/"..nThang.."/"..nNam.."<color> v�o l�c: <color=orange>"..nGio..":"..nPhut..":"..nGiay.."<color>"
		local tbOpt =
	{
		-- {"Nh�n Th��ng H�ng Ng�y",NhanThuongHangNgay},
		-- {"Test Full Ch�c N�ng",HoTroTest},   
		-- {"Nh�n L�i FF Huy�n Kim",FFhuyenkim}, 
		-- {"Nh�n L�i Trang S�c 5 �� Tr�ng Luy�n",FFhuyenkim1},
		-- {"Trang B� Tinh S��ng",TinhSuong},
		-- {"��i T�n Nh�n V�t 10  ��i Kim B�i",DoiTenNV},
		-- {"��ng k� quy�n h�n GM", dkgm},
		{"K�t th�c ��i tho�i."},
	}

	 --  if    (GetTask(5130) >= 1) then
	--	tinsert(tbOpt, 1, {"Nh�n [Ph�n Th��ng Phong K� Phe Kim]",phongkykim}) 
	--	tinsert(tbOpt, 1, {"Nh�n [Ph�n Th��ng Phong K� Phe T�ng]",phongkytong}) 
	--end	
         -- if   (GetLevel() < 100) then
	--	tinsert(tbOpt, 1, {"Nh�n [Nh�n H� Tr� T�n Th�]", hotrotanthumoi}) 
	--end
      -- if    (GetLevel() > 10) then
		-- tinsert(tbOpt, 1, {"Nh�n [Nh�n Skill 180 Fee]",mattichnhanlai}) 
	-- end
	if ConsumeItem(3, 0, 6, 1, 4265, -1) < 1 then
		tinsert(tbOpt, 1, {"Nh�n l�i [C�m Nang T�n Th�]", nlcamnangtanthu}) 
	end
      --if ConsumeItem(3, 0, 6, 1, 4825, -1) < 1 then
	--	tinsert(tbOpt, 1, {"Nh�n l�i [T�i M�u T�n Th�]", nltuimautanthu}) 
	--end
		CreateNewSayEx(szTitle, tbOpt)		
	elseif CheckAccountMod() then
	local szTitle = "<npc>Xin ch�o ��i hi�p <color=orange>"..GetName().."<color>.<enter>Ta l� <color=green>Dao C� Ti�n T�<color> ph� tr�ch vi�c h� tr� ng��i ch�i m�i! Ta c� th� gi�p g� cho ��i hi�p? \nH�m nay: <color=metal>"..nNgay.."/"..nThang.."/"..nNam.."<color> v�o l�c: <color=orange>"..nGio..":"..nPhut..":"..nGiay.."<color>"
		local tbOpt =
	{
		--{"Nh�n Th��ng H�ng Ng�y",NhanThuongHangNgay},
		-- {"Nh�n L�i Trang S�c 5 �� Tr�ng Luy�n",FFhuyenkim1},
		--{"Test Full Ch�c N�ng",HoTroTest},   
		-- {"Nh�n L�i FF Huy�n Kim",FFhuyenkim}, 
		-- {"Trang B� Tinh S��ng",TinhSuong},
		-- {"��i T�n Nh�n V�t 10  ��i Kim B�i",DoiTenNV},
		-- {"��ng k� quy�n h�n MOD", dkmod},
		{"K�t th�c ��i tho�i."},
	}

		CreateNewSayEx(szTitle, tbOpt)		
	else

	local szTitle = "<npc>Xin ch�o ��i hi�p <color=orange>"..GetName().."<color>.<enter>Ta l� <color=green>H� Tr� T�n Th�<color> ph� tr�ch vi�c h� tr� ng��i ch�i m�i! Ta c� th� gi�p g� cho ��i hi�p? \nH�m nay: <color=metal>"..nNgay.."/"..nThang.."/"..nNam.."<color> v�o l�c: <color=orange>"..nGio..":"..nPhut..":"..nGiay.."<color>"
        local tbOpt =
	{
		--{"��i FF Huy�n Kim L�y V� C�c T��ng �ng",DoiNguyenLieu567},
		-- {"Lay FF Vo Cuc 5 sao", LangTuyet},
		{"Nh�n Trang B�",mattich},
		-- {"Tr�i Nghi�m Game",HoTroTest},   
		{"��i T�n Nh�n V�t",DoiTenNV},
		{"Nh�n Code T�n Th�",nhapcode},
		-- {"Nh�n �i�m H� Tr�.",testgame1},
		{"M�u PK", doimau},
		--{"L�p Bang H�i Nhanh.", Lap_Bang},
   		{"K�t th�c ��i tho�i."},

	}

	  	
	if  (GetLevel() < 100) then
		tinsert(tbOpt, 1, {"Nh�n Nh�n H� Tr� T�n Th�", hotrotanthumoi}) 
	end
	-- if (GetTask(5828) >= 1) then
		-- tinsert(tbOpt, 1, {"Nh",nhapcode}) 
	-- end
	-- if (GetTask(5828) >= 1) then
		-- tinsert(tbOpt, 1, {"Nh�n K� N�ng Th�t Truy�n ",mattichnhanlai}) 
	-- end
	if ConsumeItem(3, 0, 6, 1, 4265, -1) < 1 then
		tinsert(tbOpt, 1, {"Nh�n l�i L�nh B�i T�n Th�", nlcamnangtanthu}) 
	end
  -- if ConsumeItem(3, 0, 6, 1, 4825, -1) < 1 then
	--	tinsert(tbOpt, 1, {"Nh�n l�i T�i M�u T�n Th�", nltuimautanthu}) 
	--end
  
		CreateNewSayEx(szTitle, tbOpt)	

end
end
 -- kevin dev
 
 
function nhapcode()
if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng �� ��m b�o an to�n!.",0);
		return 1;
end
AskClientForString("macode", "", 1, 100, "CODE");
end
function macode(strings)
	if GetLevel() < 1 and  ST_GetTransLifeCount() >= 0 then
		Talk(1, "", "B�n v�n ch�a nh�n h� tr� t�n th� n�n kh�ng th� nh�p code ");
		return
	end
if CalcFreeItemCellCount() < 30 then
		Say("H�nh trang v�n kh�ng �� 30 � tr�ng ��ng l� �c ch�!.",0);
		return 1;
end

	if GetTask(5001)==1 then
		Talk(1, "", "B�n �� nh�n r�i m� ");
		return
	end
	if strings=="jxgiangho"then
             tbAwardTemplet:GiveAwardByList({tbProp = {6,1,26,1,0,0},nCount=2, nExpiredTime=0, nBindState=-2}, "test", 1);
             tbAwardTemplet:GiveAwardByList({tbProp = {6,1,22,1,0,0},nCount=2, nExpiredTime=0, nBindState=-2}, "test", 1);
             tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4825,1,0,0},nCount=1, nExpiredTime=0, nBindState=-2}, "test", 1);  --- t�i m�u t�n th�
             tbAwardTemplet:GiveAwardByList({tbProp = {6,1,12,1,0,0},nCount=2, nExpiredTime=0, nBindState=-2}, "test", 1);   --B�n Nh��c T�m Kinh
			 
			 
			 		-- {szName="T�i M�u T�n Th�",tbProp={6,1,4825,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*15},
             -- tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4621,1,0,0}, nExpiredTime=0, nBindState=-2}, "test", 1);
             -- tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1427,1,0,0}, nExpiredTime=0, nBindState=-2}, "test", 1);
             -- tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4882,1,0,0}, nExpiredTime=0, nBindState=-2}, "test", 1);
             -- tbAwardTemplet:GiveAwardByList({tbProp = {0,11,828,1,0,0}, nExpiredTime=0, nBindState=-2}, "test", 1);
             -- tbAwardTemplet:GiveAwardByList({tbProp = {0,6305}, nExpiredTime=0,nQuality = 1}, "test", 1);
             -- tbAwardTemplet:GiveAwardByList({tbProp = {0,6311}, nExpiredTime=0,nQuality = 1}, "test", 1);
             -- tbAwardTemplet:GiveAwardByList({tbProp = {0,7325}, nExpiredTime=0,nQuality = 1}, "test", 1);
             --tbAwardTemplet:GiveAwardByList({tbProp = {0,4135}, nExpiredTime=43200,nQuality = 1, nBindState=-2}, "test", 1);
             -- AddProp(50)
             -- AddMagicPoint(10)
             -- SetTask(3900,GetTask(3900)+225000)
	--local nCurLevel = GetLevel()
		--if  ST_GetTransLifeCount()< 1 then
			--ST_LevelUp(200 - nCurLevel)
			--ST_DoTransLife()
		--end
		--ST_LevelUp(10)
		SetTask(5001,1)
	else
		Talk(1, "", "Code sai ! xin m�i nh�p l�i");
	end
end








--=========================================================













function hangvip()
AddMagic(1758,1)
end
function knb()
AskClientForNumber("layknb",0,500,"Nh�p S� L��ng:") 
end
function layknb(num)
	if (CalcFreeItemCellCount() >= 20) then
		tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=num},1)
             -- WriteLogPro("dulieu/adtien/ADM_Lay_.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Lay  "..num.." KNB\n");

	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng")
	end
end

function LangTuyet()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, 9458)
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end
-------------------------------Nh�n Ti�n ��ng----------------------------------------------------------
function tiendong()
PlayerFunLib:AddSkillState(1729,1,3,10886400,1)
--PlayerFunLib:AddSkillState(1751,1,3,10886400,1)
RemoveSkillState(1726,20,3,559872000,1)
end


function phongkykim()
if (GetTask(5130) >= 0) then
		Talk(1,"","kh�ng �� �i�u ki�n nh�n th��ng")
		return
	end
        if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
	local tbAward = {
	{nExp_tl = 200e9},
	{szName="Tinh Ngoc",tbProp={6,1,49004,1,0,0},nCount=1000},
	{szName="Tinh Ngoc",tbProp={6,1,30355,1,0,0},nCount=1000},
	{szName="Tinh Ngoc",tbProp={6,1,49006,1,0,0},nCount=1000},
    	
}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 1") 
        SetTask(5130,0)
        add_allnpc_TieuPhuong()
	Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().."�� Thay M�t Bang Nh�n Th��ng Phong K� Phe Kim Th�nh C�ng <color>")
WriteLogPro("dulieu/hoason/thuong_phong_ky_kim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
end
TieuPhuong_parserby = {
	{1458,53,1630,3184,"\\script\\activitysys\\npcdailog.lua","Phong K� Top 1 Heineken "},
	
}
function add_allnpc_TieuPhuong()
	     TieuPhuong_TieuPhuongbynpc(TieuPhuong_parserby)
               local W,X,Y = GetWorldPos();
	       local NpcName = format("%s %s", "Cao Th� Phe Kim", "Heineken");
	       local nNpcIdx = AddNpc(1422, 1, SubWorldID2Idx(53), 1634 * 32, 3195 * 32, 1, NpcName);
	       SetNpcScript(nNpcIdx, "\\script\\activitysys\\npcdailog.lua");
	

end

function TieuPhuong_TieuPhuongbynpc(Tab)
	for i = 1 , getn(Tab) do 
		SId = SubWorldID2Idx(Tab[i][2]);
		if (SId >= 0) then
			npcindex = AddNpc(Tab[i][1],1,SId,Tab[i][3]*32,Tab[i][4]*32,1,Tab[i][6]);
			SetNpcScript(npcindex, Tab[i][5]);
                        AddTimer(10800* 18, "OnTimeout", nNpcIdx)
		end;
	end	
end;
--------------------------------------------------------------------------------------------
function phongkytong()
if (GetTask(5130) >= 0) then
		Talk(1,"","kh�ng �� �i�u ki�n nh�n th��ng")
		return
	end
        if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
	local tbAward = {
	{nExp_tl = 200e9},
	{szName="Tinh Ngoc",tbProp={6,1,49004,1,0,0},nCount=1000},
	{szName="Tinh Ngoc",tbProp={6,1,30355,1,0,0},nCount=1000},
	{szName="Tinh Ngoc",tbProp={6,1,49006,1,0,0},nCount=1000},
    	
}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 1") 
        SetTask(5130,0)
       add_allnpc_tbCaiLao()
	Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().."�� Thay M�t Bang Nh�n Th��ng Phong K� Phe tong Th�nh C�ng <color>")
WriteLogPro("dulieu/hoason/thuong_phong_ky_Tong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe tong  \n");
end
tbCaiLao_parserby = {
	{1460,53,1623,3199,"\\script\\activitysys\\npcdailog.lua","Phong K� Top 2 AcMaSex"},
}

function add_allnpc_tbCaiLao()
	tbCaiLao_tbCaiLaobynpc(tbCaiLao_parserby)
              local W,X,Y = GetWorldPos();
	       local NpcName = format("%s %s", "Cao Th� Top2", "AcMaSex");
	       local nNpcIdx = AddNpc(1419, 1, SubWorldID2Idx(53), 1616 * 32, 3205 * 32, 1, NpcName);
	       SetNpcScript(nNpcIdx, "\\script\\activitysys\\npcdailog.lua");
end

function tbCaiLao_tbCaiLaobynpc(Tab)
	for i = 1 , getn(Tab) do 
		SId = SubWorldID2Idx(Tab[i][2]);
		if (SId >= 0) then
			npcindex = AddNpc(Tab[i][1],1,SId,Tab[i][3]*32,Tab[i][4]*32,1,Tab[i][6]);
			SetNpcScript(npcindex, Tab[i][5]);
                        AddTimer(10800* 18, "OnTimeout", nNpcIdx)
		end;
	end	
end;
function OnTimeout(nNpcIdx)
DelNpc(nNpcIdx);
Msg2SubWorld("<color=cyan>H�t Th�i H�n Phong K� T� M�t!")
end

--------------------------------------------------------------------------------------------------------------
function Lap_Bang()
	
local nFaction = GetLastFactionNumber()
  if nFaction < 0 then
Say("<color=red>Npc H� Tr�<color=>: ��i Hi�p <color=yellow>".. GetName().." <color=>Ch�a Gia Nh�p M�n Ph�i L�m Sao L�m Bang Ch�..!",1,"Bi�t r�i/no") 
    return
   end
local strTongName = GetTongName()
local tszTitle = "Ch�o M�ng B�n �� Tham Gia H� Th�ng <color=yellow>Bang H�i<color>"
	if (strTongName == nil or strTongName == "") then
		Say(tszTitle,6,
		"Nh�n �i�u Ki�n T�o Bang H�i/dmcreatetong",
		"T�o bang h�i/dmcreateit",
		"K�t Th�c ��i Tho�i/No")
	end
end

function dmcreatetong()
	if  GetCamp() ~= 0 then
		if GetLevel() >= 50 then
			SetCamp(4)
			SetCurCamp(4)
			AddRepute(4500)
			AddLeadExp(1000000)
			AddEventItem(195)
			Msg2Player("<color=yellow>Ng��i �� H�i �� T�t C� �i�u Ki�n C� T�o Bang H�i<color>")
		else
				Talk(1,"","<bclr=red>"..myplayersex().." Ch�a �� C�p 50")
		end
	else
		Talk(1,"","<bclr=red>"..myplayersex().." Ch�a Gia Nh�p M�n Ph�i Kh�ng Th� Nh�n �i�u Ki�n Bang H�i")
	end
end

function dmcreateit()
Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 0) then
		if (HaveItem(195) == 1) and (GetRepute() >= 450) and (GetLeadLevel() >= 30) and (GetLevel() >= 50) and (GetCamp() == 4) and (oper == 0) then
			Say("Ki�m Hi�p Ch��ng M�n Nh�n:Khai S�ng Bang H�i, M� R�ng B� Nghi�p",2,"B�t B�u D�ng Bang/TaoBangHoi","��i Ta M�t Ch�t/No")
		else	
			Talk(1,"","<bclr=violet>C�c H� Mu�n T�o D�ng Bang Ph�i:\nY�u C�u ��ng C�p 50 Tr� L�n, Danh V�ng 450, ��ng C�p Th�ng So�i 30, Kh�ng M�n Ph�i, M�i C� Th� Ti�n H�nh\nL�p Bang H�i...!")
		end
	else
		Say("Ki�m Hi�p Ch��ng M�n Nh�n:Khai S�ng Bang H�i, M� R�ng B� Nghi�p",2,"B�t B�u D�ng Bang/TaoBangHoi","��i Ta M�t Ch�t/No")
	end
end


function TaoBangHoi()		
DelItem(195)		
SetTask(99,1)				
CreateTong(1)
end
function doimau()

	if GetLastFactionNumber() < 0 then
		Talk(1, "", "��i hi�p ch�a �� gia nh�p m�n ph�i.")
		return 1
	end


	local tbOpt =
	{
	--	{"M�u Tr�ng", mautrang},
		{"Ch�nh ph�i", mauvang},
		{"T� ph�i", mautim},
		{"Trung l�p", mauxanh},
		{"S�t Th�", maudo},
		{"Tr� l�i", dialog_main},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n m�u", tbOpt)
end

function mautrang()
SetCurCamp(0)
SetCamp(0)
end
function mauvang()
		SetCurCamp(1)
		SetCamp(1)
		Say("��i m�u PK Ch�nh Ph�i th�nh c�ng.")
		Pay(50000)
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)
		Say("��i m�u PK T� Ph�i th�nh c�ng.")
		Pay(50000)
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)
		Say("��i m�u PK Trung L�p th�nh c�ng.")
		Pay(50000)
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)
		Say("��i m�u PK S�t Th� th�nh c�ng.")	
		Pay(50000)
end
function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return 1
	end
	return 0
end


-----------------------------------------------------------------------------------------------------------------------
function testgame1()
	local tbOpt =
	{
		{"1. Nh�n �i�m Danh V�ng. ", diemdanhvong},
	--	{"2. Nh�n �i�m Ph�c duy�n. ", diemphucduyen},
	--	{"3. Nh�n �i�m C�ng hi�n. ", conghien},
		{"4. Nh�n �i�m t�i l�nh ��o. ", lanhdao},
		{"5. Tho�t"},
	}
	CreateNewSayEx("<npc> Ng��i mu�n l�y m�n g�?", tbOpt)
end

function lanhdao()
	for i=1,20 do
AddLeadExp(10000000)
end
end

function diemdanhvong()
	AddRepute(1000);
	Msg2Player("Nh�n ���c 1000 �i�m danh v�ng.");
end

function diemphucduyen()
	FuYuan_Start();
	FuYuan_Add(1000);
end

function conghien()
AddContribution(100000)
Msg2Player("Nh�n ���c 1000 �i�m Cong Hien.");
end
---------------------------------------------------------------------------------------------------------------------
function mattich()
	if (CalcFreeItemCellCount() < 40) then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
end
local tab_Content =
{
--"Trang B� Thanh C�u/settc",
--"Trang B� V�n L�c/setvl",
--"Trang B� Th��ng Lang/settl",
--"Trang B� Huy�n Vi�n/sethv",
--"Trang B� T� M�ng/tumang",
--"Trang B� Kim �/kimo",
--"Trang B� B�ch H�/bachho",
-- "Trang B� X�ch L�n/xichlan",
"Trang B� X�ch L�n Max/xichlanmax",
--"Trang B� Minh Ph��ng/minhphuong",
-- "Nh�n V� Kh� X�ch L�n Max./vkdanglongmax",
-- "Trang B� Minh Ph��ng MAX/minhphuongmax",
-- "Trang B� Dieu duong /danglong",
--"Nh�n V� Kh� ��ng Long Max./vkdanglongmax",
--"Trang B� Tinh S��ng/tinhsuong",
--"Trang B� Nguy�t Khuy�t/nguyetkhuyet",
"Tho�t./no",
-- "Tr� l�i"
}
Say(" Mu�n l�y trang b� g� ? ", getn(tab_Content), tab_Content);
end
function danglong()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#sedanglong(1)",
"Thi�u L�m B�ng/#sedanglong(2)",
"Thi�u L�m �ao/#sedanglong(3)",
"Thi�n V��ng Ch�y/#sedanglong(4)",
"Thi�n V��ng Th��ng/#sedanglong(5)",
"Thi�n V��ng �ao/#sedanglong(6)",
"Nga Mi Ki�m/#sedanglong(7)",
"Nga Mi Ch��ng/#sedanglong(8)",
"Th�y Y�n �ao/#sedanglong(9)",
"Th�y Y�n Song �ao/#sedanglong(10)",
"Ng� ��c Ch��ng/#sedanglong(11)",
"Ng� ��c �ao/#sedanglong(12)",
"���ng M�n Phi �ao/#sedanglong(13)",
"���ng M�n N�/#sedanglong(14)",
"Trang sau/danglong2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function danglong2()
local tab_Content = {
"���ng M�n Phi Ti�u/#sedanglong(15)",
"C�i Bang R�ng/#sedanglong(16)",
"C�i Bang B�ng/#sedanglong(17)",
"Thi�n Nh�n K�ch/#sedanglong(18)",
"Thi�n Nh�n �ao/#sedanglong(19)",
"V� �ang Quy�n/#sedanglong(20)",
"V� �ang Ki�m/#sedanglong(21)",
"C�n L�n �ao/#sedanglong(22)",
"C�n L�n Ki�m/#sedanglong(23)",
"Hoa S�n Ki�m T�ng/#sedanglong(24)",
"Hoa S�n Kh� T�ng/#sedanglong(25)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function sedanglong(nId)
for i = 3920,3929 do
AddGoldItem(0,10*nId+i-10)
end
end
function vkdanglongmax()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#sedanglongmax(1)",
"Thi�u L�m B�ng/#sedanglongmax(11)",
"Thi�u L�m �ao/#sedanglongmax(21)",
"Thi�n V��ng Ch�y/#sedanglongmax(31)",
"Thi�n V��ng Th��ng/#sedanglongmax(41)",
"Thi�n V��ng �ao/#sedanglongmax(51)",
"Nga Mi Ki�m/#sedanglongmax(61)",
"Nga Mi Ch��ng/#sedanglongmax(71)",
"Th�y Y�n �ao/#sedanglongmax(81)",
"Th�y Y�n Song �ao/#sedanglongmax(91)",
"Ng� ��c Ch��ng/#sedanglongmax(101)",
"Ng� ��c �ao/#sedanglongmax(111)",
"���ng M�n Phi �ao/#sedanglongmax(121)",
"���ng M�n N�/#sedanglongmax(131)",
"Trang sau/danglongmax2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function danglongmax2()
local tab_Content = {
"���ng M�n Phi Ti�u/#sedanglongmax(141)",
"C�i Bang R�ng/#sedanglongmax(151)",
"C�i Bang B�ng/#sedanglongmax(161)",
"Thi�n Nh�n K�ch/#sedanglongmax(171)",
"Thi�n Nh�n �ao/#sedanglongmax(181)",
"V� �ang Ki�m/#sedanglongmax(201)",
"V� �ang Quy�n/#sedanglongmax(191)",
"C�n L�n �ao/#sedanglongmax(211)",
"C�n L�n Ki�m/#sedanglongmax(221)",
--"Hoa S�n Kh� T�ng/#sedanglongmax(231)",
--"Hoa S�n Ki�m T�ng/#sedanglongmax(241)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function sedanglongmax(nId)
local idcan=7165+nId
	tbAwardTemplet:GiveAwardByList({{szName = "��ng Long",tbProp={0,idcan},nQuality=1},}, "test", 1);
end
----------------------------------------------------------------------------------------------------------------------------
NHIEMVUTANTHU	 = 5990
SKILLTASK	 = 5989
MAXCOUNT	 = 5825
TSK_NEWMAXCOUNT = 5828
function hotrotanthumoi()
local nTranlife = ST_GetTransLifeCount() 
local nCureLevel = GetLevel();
local nAddLevel = 200 - nCureLevel
local tbAddLevel = 141 - nCureLevel
		if (nCureLevel < 150 and nTranlife == 0) then
			if CalcFreeItemCellCount() >= 40 then
				local tbAward = {
						-- {szName="T� m�u l�nh",tbProp={6,1,1427,1,0,0},nCount=1},
						{szName="Long Chi�n Vu D� - Ki�m Di�u",tbProp={0,9352},nQuality=1,nCount=1},  --Long Chi�n Vu D� - Ki�m Di�u c�p 1
						{szName="Ng� H�nh �n",tbProp={0,9339},nQuality=1,nCount=1},  -- c�p 1
						{szName="Phi�u V�",tbProp={0,10,7,10},nCount=1}, --ngua phieu vu Ho�ng kim
						-- {szName="ngua",tbProp={0,9377},nQuality=1,nCount=1}, --ngua phieu vu Ho�ng kim				
						-- {szName="T�i M�u T�n Th�",tbProp={6,1,4825,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*15},
						{szName="L�nh b�i T�n Th�",tbProp={6,1,4265,1,0,0},nCount=1,nBindState = -2},
						{szName="Phi phong Ph� Quang",tbProp={0,9409},nQuality=1,nCount=1},
						-- {szName="matna",tbProp={0,9330},nQuality=1,nCount=1},
						{szName = "Hoi thanh phu ", tbProp={6,1,438,0,0,0,0}, nCount=1,nExpiredTime=60*24*30,nBindState=-2},
						{szName = "Th�n h�nh Ph�", tbProp={6,1,1266,0,0,0,0}, nCount=1,nExpiredTime=60*24*30,nBindState=-2},
			        }
				for i = 1, 5 do ST_LevelUp(nAddLevel) ST_DoTransLife() end;
				tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng T�n Th�") 
				ST_LevelUp(tbAddLevel)
				SetTask(NHIEMVUTANTHU,7) 
				SetTask(MAXCOUNT,1) 
				SetTask(TSK_NEWMAXCOUNT,1)
				-- Earn(10000) 
			else
				Talk(1,"","H�nh Trang Kh�ng �� 40 � H�y S�p X�p L�i R�i ��n T�m Ta")
			end
		else
			Talk(1,"","Ng��i �� ��t C�p 150 R�i Kh�ng Th� Nh�n Th��ng")
		end
	
end


----------------------------------------------------------------------------
function nlcamnangtanthu()
local index = AddItem(6,1,4265,0,0,0,0)
SetItemBindState(index,-2)
Msg2Player("B�n nh�n ���c <color=yellow>C�m nang T�n Th�<color>")
end
----
function nltuimautanthu()
local index = AddItem(6,1,4825,0,0,0,0)
SetItemBindState(index,-2)
Msg2Player("B�n nh�n ���c <color=yellow>C�m nang T�n Th�<color>")
end
function dkgm9()
local songuoi= random(100,500)
Msg2Player("<color=yellow>Hi�n t�i �ang c�<color><color=green> "..songuoi.."<color> ng��i ch�i �ang tr�n m�ng!.")
end
----------------------------DOI TEN------------------------
function DoiTenNV()
	Say("Ng��i t�m ta c� vi�c g�?",3,
		"Mua 1 l�n ��i t�n nh�n v�t/dangkydoiten",
		"��t t�n cho nh�n v�t/about_rename_role",
		"Nh�n ti�n gh� qua th�i/cancel")
end
function dangkydoiten()
	if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then
		Say("B�n v�n c�n 1 l�n ��i t�n nh�n v�t. H�y ch�n '��t l�i t�n cho nh�n v�t' �� ��i t�n nh�n v�t",1,
		"�� ta ki�m tra xem sao/cancel")
		return
	end

	Say("M�i l�n ��i t�n nh�n v�t c�n <color=red>10 KNB<color>, ng��i chu�n b� xong ch�a?",
		2,
		"Ta �� chu�n b� xong/#buy_addibox_yes(10)",
		"Khi n�o �� ti�n ta s� quay l�i sau!/cancel");
end
function buy_addibox_yes(nNedCount)
	if (nNedCount < 1 or nNedCount == nil) then
		print("Fail!!!!");
		return
	end;

	local nCount = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCount < 500) then
		Say("<color=yellow>Kh�ch quan ch�a �� 500 xu! Khi n�o c� �� ti�n h�y quay l�i.",1,
		"�� ta ki�m tra xem sao/cancel")
		return
	end
	ConsumeEquiproomItem(500, 4, 417, 1, 1)
	value = SetBit(value, 1, 1)
	SetTask(TASKVALUE_BLEND, value)
	SaveNow();
	Talk(1, "", "<color=yellow>B�n nh�n ���c 1 l�n ��i t�n nh�n v�t. H�y ch�n '��t l�i t�n cho nh�n v�t' �� ��i t�n nh�n v�t");
end
function about_rename_role()
	local strInfo = "Ch�o b�n! V� t�n nh�n v�t c�a b�n v� ng��i ch�i kh�c gi�ng nhau, cho n�n h� th�ng �� gi�p b�n ��i t�n, b�n c� th� s�a t�n nh�n v�t c�a b�n tr��c ��y, c� th� ki�m tra xem t�n �� c� d�ng ���c kh�ng. Ch� �! B�n ch� c� 1 c� h�i duy nh�t �� ��i t�n, xin h�y c�n th�n t�ng b��c.";
	func_online_rename_role(strInfo);
end

function func_online_rename_role(strInfo)
	if (check_renamerole() == 1) then
		Say(strInfo,
			3,
			"Ta mu�n ki�m tra xem t�n nh�n v�t d�ng ���c kh�ng/query_rolename",
			"Ti�n h�nh thay ��i t�n nh�n v�t c�a m�nh/change_rolename",
			"�� l�n sau ta thay ��i v�y/cancel");
	else
		deny()
	end
end
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "Xin nh�p t�n nh�n v�t c�n t�m hi�u");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end
function change_rolename()
	Say("C�c b��c c� th�: R�i Bang H�i n�u c�, ��i tho�i v�i NPC, nh�p t�n nh�n v�t c�n thay ��i v�o, b�n s� t� ��ng r�i m�ng. Sau 3 ph�t ��ng nh�p l�i, n�u t�n nh�n v�t �� thay ��i th� ���c xem ��i t�n th�nh c�ng; n�u ch�a thay ��i, m�i b�n th�c hi�n l�i c�c b��c tr�n. N�u xu�t hi�n m�t s� hi�n t��ng l� xin li�n h� GM gi�i quy�t.",
		2,
		"B�t ��u thay ��i t�n nh�n v�t/change_rolename2",
		"�� ta suy ngh� l�i/cancel")
end
function change_rolename2()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>��i hi�p �� c� Bang H�i kh�ng th� ti�n h�nh thao t�c n�y!<color>")
		return
	end
	AskClientForString("on_change_rolename", "", 1, 20, "Xin nh�p t�n nh�n v�t m�i v�o");
end
function on_change_rolename(new_name)
--Msg2SubWorld( "��i hi�p <color=yellow>"..GetName().."<color> �� ��i t�n th�nh <color=green>"..new_name.."<color>")
	if (check_renamerole() == 1) then
		if (GetName() == new_name) then
			Talk(1, "", "B�n mu�n ��i t�n g�?")
		else
			RenameRole(new_name);
			
		end
	end
end
function deny()
	Say("<color=yellow>Xin l�i! B�n ph�i mua l�n ��i t�n nh�n v�t r�i h�y ch�n ch�c n�ng n�y!<color>",
		1,
		"Bi�t r�i!/cancel")
end

--------------------------------------------------------------------------
function chuyen_gt()
	local szTitle = "<npc><color=Pink>Nam<color> => Nga My ho�c Th�y Y�n <color=Green>N� <color> => Thi�u L�m ho�c Thi�n V��ng<enter> Sau khi gia nh�p m�n ph�i c� th� ��n g�p ta �� ��i gi�i t�nh "
	local tbOpt =
	{
		{"Chuy�n Nam Th�nh N�", NamNu},
		{"Chuy�n N� Th�nh Nam", NuNam},
		{"Tho�t/no"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NamNu()
		if CalcEquiproomItemCount(4,417,1,-1)<2500 then 
			Talk(1,"no","<color=red>B�n kh�ng �� 2500 Xu.")
				return 			
			end
	
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Mu�n ��i gi�i t�nh c�n ph�i c��i b� h�t trang b� tr�n ng��i .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> v�n ch�a gia nh�p m�n ph�i ?")
return end
if GetSex() == 1 then
Talk(1, "", "<color=green>"..myplayersex().."<color> �ang l� <color=red>G�i ��p<color> m�?\n C� ph�i "..myplayersex().." thu�c th� gi�i th� 3 kh�ng?")
else
SetSex(1) ---nu 1
ConsumeEquiproomItem(2500,4,417,1,-1);
KickOutSelf()
Msg2SubWorld("<color=cyan>Ch�c m�ng nam ��i hi�p <color=green>"..GetName().."<color=cyan> chuy�n ��i gi�i t�nh th�nh c�ng th�nh N� Giai Nh�n T�i NPC Chuy�n Ph�i")
end
end

function NuNam()
		if CalcEquiproomItemCount(4,417,1,-1)<2500 then 
			Talk(1,"no","<color=red>B�n kh�ng �� 2500 Xu.")
				return 			
			end
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Mu�n ��i gi�i t�nh c�n ph�i c��i b� h�t trang b� tr�n ng��i .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> v�n ch�a gia nh�p m�n ph�i ?")
return end
if GetSex() == 0 then
Talk(1, "", "<color=green>"..myplayersex().."<color> �ang l� <color=red>Trai Xinh<color> m�?\n C� ph�i "..myplayersex().." thu�c th� gi�i th� 3 kh�ng?")
else
SetSex(0)---nam 0
ConsumeEquiproomItem(2500,4,417,1,-1);
KickOutSelf()
Msg2SubWorld("<color=cyan>Ch�c m�ng n� ��i hi�p <color=green>"..GetName().."<color=cyan> chuy�n ��i gi�i t�nh th�nh c�ng th�nh Nam M� Nh�n T�i NPC Chuy�n Ph�i")
end
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

----------------------------------------------------------------------
function mattichnhanlai()
local nFaction = GetLastFactionNumber()
 if nFaction == 5 then
	 local szTitlezs = "<color=green>C�i Giang H� M�nh Ta ��c B��c<color>\n<color=violet>* * * * <color=fire>��ng Phuong Gi�o Ch�<color> * * * * <color>\n<color=yellow> S� Gi�p Ta C� ���c T�t C� <color>"
		local tbOpt =
	{
		{"Th�y y�n Kh�ng N�n H�c, V� s� l�m m�t kh� n�ng chi�n ��u"},
	}
            CreateNewSayEx(szTitlezs, tbOpt)		
else
if nFaction == 11 then
	 local szTitlezs = "<color=green>C�i Giang H� M�nh Ta ��c B��c<color>\n<color=violet>* * * * <color=fire>��ng Phuong Gi�o Ch�<color> * * * * <color>\n<color=yellow> S� Gi�p Ta C� ���c T�t C� <color>"
		local tbOpt =
	{
		{"Ta l� V� H�n ��i �� T�",NhanKyNang1801},
	       {"K�t th�c ��i tho�i."},

	}
            CreateNewSayEx(szTitlezs, tbOpt)		
else

               local szTitlezs = "<color=green>C�i Giang H� M�nh Ta ��c B��c<color>\n<color=violet>* * * * <color=fire>��ng Phuong Gi�o Ch�<color> * * * * <color>\n<color=yellow> S� Gi�p Ta C� ���c T�t C� <color>"
		local tbOpt =
	{
		{"Nh�n Fee 180 N�o",NhanKyNang180},
             	{"K�t th�c ��i tho�i."},

	}
            CreateNewSayEx(szTitlezs, tbOpt)
end	
end
end

function NhanKyNang1801()
AddMagic(1986,20) 
end

-----------------------------------------------------------------------------------------------
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370,1986}
function NhanKyNang180()
	local nFaction = GetLastFactionNumber() +1
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a Gia Nh�p M�n Ph�i Kh�ng Th� S� D�ng M�t T�ch Th�t Truy�n")
		return 1;
	else
		for i=1,11 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20) 
					Talk(1,"","<color=green>"..myplayersex().." �� H�c ���c K� N�ng Th�t Truy�n<color> <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y Kh�ng Th� H�c N�a")
					return 1;
				end
			end
		end
	end
end
--------------------------------------------------------------------------------------------



-----------------------------------------------------------------
function dkgm()
	local nCurLevel = GetLevel()
	if nCurLevel < 10 then
		ST_LevelUp(10 - nCurLevel)
	end
	AddMagic(732, 50) --Skill GM
	AddMagic(1209, 50) --Skill GM
	AddSkillState(314,5,1,600*60*18)
	AddSkillState(86,50,1,600*60*18)
	if CalcFreeItemCellCount() >= 1 then
		local tbItem1 = {szName="Truy�n K� L�nh", tbProp={6,1,4257,1,0,0}, nBindState=-2}
		local tbItem2 = {szName="T�c Hi�u Ph�", tbProp={6,1,4629,1,0,0}, nBindState=-2}
		tbAwardTemplet:GiveAwardByList(tbItem1, "Kich ho�t th�nh c�ng T�i kho�n GM!", 1)
		tbAwardTemplet:GiveAwardByList(tbItem2, "Kich ho�t th�nh c�ng T�i kho�n GM!", 1)
	end
end

function dkmod()
	local nCurLevel = GetLevel()
	if nCurLevel < 10 then
		ST_LevelUp(10 - nCurLevel)
	end
	AddMagic(732, 50) --Skill GM
	AddMagic(1209, 50) --Skill GM
	AddSkillState(314,5,1,600*60*18)
	AddSkillState(86,50,1,600*60*18)
	if CalcFreeItemCellCount() >= 1 then
		local tbItem1 = {szName="Thi�n Th�", tbProp={6,1,3078,1,0,0}, nBindState=-2}
		tbAwardTemplet:GiveAwardByList(tbItem1, "Kich ho�t th�nh c�ng T�i kho�n GM!", 1)
	end
end
function TienHanhCaiLao_free()
	local tbSay = 
{
"C�i L�o 3-Ch�n Dung Kim(B� qua kh�ng v�t l� 30%)/#TienHanhCaiLao4(1577)",
"C�i L�o 3-Ch�n Ph� M�c(B� qua kh�ng ��c 30%)/#TienHanhCaiLao4(1578)",
"C�i L�o 3-Ch�n H� Th�y(B� qua kh�ng b�ng 30%)/#TienHanhCaiLao4(1579)",
"C�i L�o 3-Ch�n Kh� H�a(B� qua kh�ng h�a 30%)/#TienHanhCaiLao4(1580)",
"C�i L�o 3-Ch�n Li�t Th�(B� qua kh�ng l�i 30%)/#TienHanhCaiLao4(1581)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n Mua G�",getn(tbSay),tbSay)
end
function TienHanhCaiLao4(num)
local n_solan = GetTask(5049);
local nTransLife = ST_GetTransLifeCount();
local nCurLevel = GetLevel();
	if CalcFreeItemCellCount() >= 1 then
		if (nTransLife >= 5 and nCurLevel >= 200) then
			nAddLevel = 164 - nCurLevel; ST_LevelUp(nAddLevel); AddMagicPoint(2)
			AddProp(750) SetTask(5049,GetTask(5049)+3); do_clear_prop(); TaySkill()
                        AddMagic(num,20)
                        AddMagic(1171,20)
		else
			Talk(1, "", "<bclr=violet>Xin Ch�o "..myplayersex().."<bclr=red> Mu�n Tu Luy�n Ngh�ch Thi�n C�i M�nh\nY�u C�u: ......\n��ng C�p Tu Luy�n ��t 200...\n�� Tu Luy�n T�m Ph�p C� S� Thi�n L�n Th� 5<bclr>")
		end
	else
		Talk(1,"","<color=red>H�y �� Tr�ng 1 � Tr�ng R�i Ti�p T�c C�i T� H�i Sinh")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function do_clear_prop()
	local base_str = {35,20,25,30,20}			
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end
------------------------------------------------------------------------
function TaySkill()
	local i = HaveMagic(210)		
	local j = HaveMagic(400)		
	local h = HaveMagic(732)		
	local k = HaveMagic(733)		
	local n = RollbackSkill()		
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		
	if (j ~= -1) then x = x + j end
	if (h ~= -1) then x = x + h end
	if (k ~= -1) then x = x + k end
	local rollback_point = n - x			
	if (rollback_point + GetMagicPoint() < 0) then		
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			
	if (j ~= -1) then AddMagic(400, j) end			
	if (h ~= -1) then AddMagic(732, h) end
	if (k ~= -1) then AddMagic(733, k) end
	KickOutSelf()
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
function DoiSkillTrungSinh4()
	local tbSay = 
{
"Ta Mu�n ��i Sang Dung Kim(B� qua kh�ng v�t l� 30%)/#TienHanhDoiSkillTrungSinh4(1577)",
"Ta Mu�n ��i Sang Ph� M�c(B� qua kh�ng ��c 30%)/#TienHanhDoiSkillTrungSinh4(1578)",
"Ta Mu�n ��i Sang H� Th�y(B� qua kh�ng b�ng 30%)/#TienHanhDoiSkillTrungSinh4(1579)",
"Ta Mu�n ��i Sang Kh� H�a(B� qua kh�ng h�a 30%)/#TienHanhDoiSkillTrungSinh4(1580)",
"Ta Mu�n ��i Sang Li�t Th�(B� qua kh�ng l�i 30%)/#TienHanhDoiSkillTrungSinh4(1581)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n Mua G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4(num)
local nSilverCount = CalcEquiproomItemCount(4, 2480, 1, 1)
if nSilverCount<100 then
Say("Kh�ng �� 100  KNB B�n �i")
return 0;
end

DelMagic(1577)
DelMagic(1578)
DelMagic(1579)
DelMagic(1580)
DelMagic(1581)
AddMagic(num,20)
ConsumeEquiproomItem(100,4,2480,1,1)
WriteLogPro("dulieu/doiskill3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi Skill "..num.."-100xu\n");	
end
function DoiNguyenLieu567()
	szDescription = format("b� ff huy�n kim v�o ��i ff v� c�c c� sao t��ng �ng\n.")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "DoiNguyenLieu56_ok", "no", 1)
		
end
---------------------------------------------------------
function DoiNguyenLieu56_ok()
local nItemIndex = GetGiveItemUnit(1)
local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)

if nGoldEquipIdxFF==9442 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "ff ",tbProp={0,9453},nCount=1,nQuality=1},}, "test", 1);
end
if nGoldEquipIdxFF==9443 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "ff ",tbProp={0,9454},nCount=1,nQuality=1},}, "test", 1);
end
if nGoldEquipIdxFF==9444 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "ff ",tbProp={0,9455},nCount=1,nQuality=1},}, "test", 1);
end
if nGoldEquipIdxFF==9445 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "ff ",tbProp={0,9456},nCount=1,nQuality=1},}, "test", 1);
end
if nGoldEquipIdxFF==9446 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "ff ",tbProp={0,9457},nCount=1,nQuality=1},}, "test", 1);
end
if nGoldEquipIdxFF==9447 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "ff ",tbProp={0,9458},nCount=1,nQuality=1},}, "test", 1);
end
if nGoldEquipIdxFF==9448 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "ff ",tbProp={0,9459},nCount=1,nQuality=1},}, "test", 1);
end
if nGoldEquipIdxFF==9449 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "ff ",tbProp={0,9460},nCount=1,nQuality=1},}, "test", 1);
end
if nGoldEquipIdxFF==9450 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "ff ",tbProp={0,9461},nCount=1,nQuality=1},}, "test", 1);
end
if nGoldEquipIdxFF==9451 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "ff ",tbProp={0,9462},nCount=1,nQuality=1},}, "test", 1);
end
if nGoldEquipIdxFF==9452 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "ff ",tbProp={0,9463},nCount=1,nQuality=1},}, "test", 1);
end
end
