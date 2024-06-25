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
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
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
	local nStartDate = 202208191900 --N¨m th¸ng ngµy giê phót gi©y
	if nCurDate < nStartDate then
		Talk(1, "", "HiÖn ch­a tíi thêi gian Khai më m¸y chñ vui lßng chê tíi <color=green>19h00 - Ngµy: 19/08/2022<color>.\nB©y giê lµ: <color=metal>"..nNgay.."/"..nThang.."/"..nNam.."<color> - <color=orange>"..nGio..":"..nPhut..":"..nGiay.."<color>")
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
	local szTitle = "<npc>Xin chµo ®¹i hiÖp <color=orange>"..GetName().."<color>.<enter>Ta lµ <color=green>Dao C¬ Tiªn Tö<color> phô tr¸ch viÖc hç trî ng­êi ch¬i míi! Ta cã thÓ gióp g× cho ®¹i hiÖp? \nH«m nay: <color=metal>"..nNgay.."/"..nThang.."/"..nNam.."<color> vµo lóc: <color=orange>"..nGio..":"..nPhut..":"..nGiay.."<color>"
		local tbOpt =
	{
		-- {"NhËn Th­ëng Hµng Ngµy",NhanThuongHangNgay},
		-- {"Test Full Chøc N¨ng",HoTroTest},   
		-- {"NhËn L¹i FF HuyÒn Kim",FFhuyenkim}, 
		-- {"NhËn L¹i Trang Søc 5 §· Trïng LuyÖn",FFhuyenkim1},
		-- {"Trang BÞ Tinh S­¬ng",TinhSuong},
		-- {"§çi Tªn Nh©n VËt 10  §¹i Kim Bµi",DoiTenNV},
		-- {"§¨ng ký quyÒn h¹n GM", dkgm},
		{"KÕt thóc ®èi tho¹i."},
	}

	 --  if    (GetTask(5130) >= 1) then
	--	tinsert(tbOpt, 1, {"NhËn [PhÇn Th­ëng Phong Kú Phe Kim]",phongkykim}) 
	--	tinsert(tbOpt, 1, {"NhËn [PhÇn Th­ëng Phong Kú Phe Tèng]",phongkytong}) 
	--end	
         -- if   (GetLevel() < 100) then
	--	tinsert(tbOpt, 1, {"NhËn [NhËn Hç Trî T©n Thñ]", hotrotanthumoi}) 
	--end
      -- if    (GetLevel() > 10) then
		-- tinsert(tbOpt, 1, {"NhËn [NhËn Skill 180 Fee]",mattichnhanlai}) 
	-- end
	if ConsumeItem(3, 0, 6, 1, 4265, -1) < 1 then
		tinsert(tbOpt, 1, {"NhËn l¹i [CÈm Nang T©n Thñ]", nlcamnangtanthu}) 
	end
      --if ConsumeItem(3, 0, 6, 1, 4825, -1) < 1 then
	--	tinsert(tbOpt, 1, {"NhËn l¹i [Tói M¸u T©n Thñ]", nltuimautanthu}) 
	--end
		CreateNewSayEx(szTitle, tbOpt)		
	elseif CheckAccountMod() then
	local szTitle = "<npc>Xin chµo ®¹i hiÖp <color=orange>"..GetName().."<color>.<enter>Ta lµ <color=green>Dao C¬ Tiªn Tö<color> phô tr¸ch viÖc hç trî ng­êi ch¬i míi! Ta cã thÓ gióp g× cho ®¹i hiÖp? \nH«m nay: <color=metal>"..nNgay.."/"..nThang.."/"..nNam.."<color> vµo lóc: <color=orange>"..nGio..":"..nPhut..":"..nGiay.."<color>"
		local tbOpt =
	{
		--{"NhËn Th­ëng Hµng Ngµy",NhanThuongHangNgay},
		-- {"NhËn L¹i Trang Søc 5 §· Trïng LuyÖn",FFhuyenkim1},
		--{"Test Full Chøc N¨ng",HoTroTest},   
		-- {"NhËn L¹i FF HuyÒn Kim",FFhuyenkim}, 
		-- {"Trang BÞ Tinh S­¬ng",TinhSuong},
		-- {"§çi Tªn Nh©n VËt 10  §¹i Kim Bµi",DoiTenNV},
		-- {"§¨ng ký quyÒn h¹n MOD", dkmod},
		{"KÕt thóc ®èi tho¹i."},
	}

		CreateNewSayEx(szTitle, tbOpt)		
	else

	local szTitle = "<npc>Xin chµo ®¹i hiÖp <color=orange>"..GetName().."<color>.<enter>Ta lµ <color=green>Hç Trî T©n Thñ<color> phô tr¸ch viÖc hç trî ng­êi ch¬i míi! Ta cã thÓ gióp g× cho ®¹i hiÖp? \nH«m nay: <color=metal>"..nNgay.."/"..nThang.."/"..nNam.."<color> vµo lóc: <color=orange>"..nGio..":"..nPhut..":"..nGiay.."<color>"
        local tbOpt =
	{
		--{"§çi FF HuyÒn Kim LÊy V« Cùc T­¬ng øng",DoiNguyenLieu567},
		-- {"Lay FF Vo Cuc 5 sao", LangTuyet},
		{"NhËn Trang BÞ",mattich},
		-- {"Tr·i NghiÖm Game",HoTroTest},   
		{"§çi Tªn Nh©n VËt",DoiTenNV},
		{"NhËn Code T©n Thñ",nhapcode},
		-- {"NhËn §iÓm Hç Trî.",testgame1},
		{"Mµu PK", doimau},
		--{"LËp Bang Héi Nhanh.", Lap_Bang},
   		{"KÕt thóc ®èi tho¹i."},

	}

	  	
	if  (GetLevel() < 100) then
		tinsert(tbOpt, 1, {"NhËn NhËn Hç Trî T©n Thñ", hotrotanthumoi}) 
	end
	-- if (GetTask(5828) >= 1) then
		-- tinsert(tbOpt, 1, {"Nh",nhapcode}) 
	-- end
	-- if (GetTask(5828) >= 1) then
		-- tinsert(tbOpt, 1, {"NhËn Kü N¨ng ThÊt TruyÒn ",mattichnhanlai}) 
	-- end
	if ConsumeItem(3, 0, 6, 1, 4265, -1) < 1 then
		tinsert(tbOpt, 1, {"NhËn l¹i LÖnh Bµi T©n Thñ", nlcamnangtanthu}) 
	end
  -- if ConsumeItem(3, 0, 6, 1, 4825, -1) < 1 then
	--	tinsert(tbOpt, 1, {"NhËn l¹i Tói M¸u T©n Thñ", nltuimautanthu}) 
	--end
  
		CreateNewSayEx(szTitle, tbOpt)	

end
end
 -- kevin dev
 
 
function nhapcode()
if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng ®Ó ®¶m b¶o an toµn!.",0);
		return 1;
end
AskClientForString("macode", "", 1, 100, "CODE");
end
function macode(strings)
	if GetLevel() < 1 and  ST_GetTransLifeCount() >= 0 then
		Talk(1, "", "B¹n vÉn ch­a nhËn hç trî t©n thñ nªn kh«ng thÓ nhËp code ");
		return
	end
if CalcFreeItemCellCount() < 30 then
		Say("Hµnh trang vÉn kh«ng ®ñ 30 « trèng ®óng lµ ãc chã!.",0);
		return 1;
end

	if GetTask(5001)==1 then
		Talk(1, "", "B¹n ®· nhËn råi mµ ");
		return
	end
	if strings=="jxgiangho"then
             tbAwardTemplet:GiveAwardByList({tbProp = {6,1,26,1,0,0},nCount=2, nExpiredTime=0, nBindState=-2}, "test", 1);
             tbAwardTemplet:GiveAwardByList({tbProp = {6,1,22,1,0,0},nCount=2, nExpiredTime=0, nBindState=-2}, "test", 1);
             tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4825,1,0,0},nCount=1, nExpiredTime=0, nBindState=-2}, "test", 1);  --- tói m¸u t©n thñ
             tbAwardTemplet:GiveAwardByList({tbProp = {6,1,12,1,0,0},nCount=2, nExpiredTime=0, nBindState=-2}, "test", 1);   --Bµn Nh­îc T©m Kinh
			 
			 
			 		-- {szName="Tói M¸u T©n Thñ",tbProp={6,1,4825,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*15},
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
		Talk(1, "", "Code sai ! xin mêi nhËp l¹i");
	end
end








--=========================================================













function hangvip()
AddMagic(1758,1)
end
function knb()
AskClientForNumber("layknb",0,500,"NhËp Sè L­îng:") 
end
function layknb(num)
	if (CalcFreeItemCellCount() >= 20) then
		tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=num},1)
             -- WriteLogPro("dulieu/adtien/ADM_Lay_.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Lay  "..num.." KNB\n");

	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ 20 ¤ Trèng")
	end
end

function LangTuyet()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, 9458)
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end
-------------------------------NhËn TiÒn §ång----------------------------------------------------------
function tiendong()
PlayerFunLib:AddSkillState(1729,1,3,10886400,1)
--PlayerFunLib:AddSkillState(1751,1,3,10886400,1)
RemoveSkillState(1726,20,3,559872000,1)
end


function phongkykim()
if (GetTask(5130) >= 0) then
		Talk(1,"","kh«ng ®ñ ®iÒu kiÖn nhËn th­ëng")
		return
	end
        if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return
	end
	local tbAward = {
	{nExp_tl = 200e9},
	{szName="Tinh Ngoc",tbProp={6,1,49004,1,0,0},nCount=1000},
	{szName="Tinh Ngoc",tbProp={6,1,30355,1,0,0},nCount=1000},
	{szName="Tinh Ngoc",tbProp={6,1,49006,1,0,0},nCount=1000},
    	
}
	tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 1") 
        SetTask(5130,0)
        add_allnpc_TieuPhuong()
	Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().."§· Thay MÆt Bang NhËn Th­ëng Phong Kú Phe Kim Thµnh C«ng <color>")
WriteLogPro("dulieu/hoason/thuong_phong_ky_kim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
end
TieuPhuong_parserby = {
	{1458,53,1630,3184,"\\script\\activitysys\\npcdailog.lua","Phong Kú Top 1 Heineken "},
	
}
function add_allnpc_TieuPhuong()
	     TieuPhuong_TieuPhuongbynpc(TieuPhuong_parserby)
               local W,X,Y = GetWorldPos();
	       local NpcName = format("%s %s", "Cao Thñ Phe Kim", "Heineken");
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
		Talk(1,"","kh«ng ®ñ ®iÒu kiÖn nhËn th­ëng")
		return
	end
        if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return
	end
	local tbAward = {
	{nExp_tl = 200e9},
	{szName="Tinh Ngoc",tbProp={6,1,49004,1,0,0},nCount=1000},
	{szName="Tinh Ngoc",tbProp={6,1,30355,1,0,0},nCount=1000},
	{szName="Tinh Ngoc",tbProp={6,1,49006,1,0,0},nCount=1000},
    	
}
	tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 1") 
        SetTask(5130,0)
       add_allnpc_tbCaiLao()
	Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().."§· Thay MÆt Bang NhËn Th­ëng Phong Kú Phe tong Thµnh C«ng <color>")
WriteLogPro("dulieu/hoason/thuong_phong_ky_Tong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe tong  \n");
end
tbCaiLao_parserby = {
	{1460,53,1623,3199,"\\script\\activitysys\\npcdailog.lua","Phong Kú Top 2 AcMaSex"},
}

function add_allnpc_tbCaiLao()
	tbCaiLao_tbCaiLaobynpc(tbCaiLao_parserby)
              local W,X,Y = GetWorldPos();
	       local NpcName = format("%s %s", "Cao Thñ Top2", "AcMaSex");
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
Msg2SubWorld("<color=cyan>HÕt Thêi H¹n Phong Kú Tù MÊt!")
end

--------------------------------------------------------------------------------------------------------------
function Lap_Bang()
	
local nFaction = GetLastFactionNumber()
  if nFaction < 0 then
Say("<color=red>Npc Hç Trî<color=>: §¹i HiÖp <color=yellow>".. GetName().." <color=>Ch­a Gia NhËp M«n Ph¸i Lµm Sao Lµm Bang Chñ..!",1,"BiÕt råi/no") 
    return
   end
local strTongName = GetTongName()
local tszTitle = "Chµo Mõng B¹n §· Tham Gia HÖ Thèng <color=yellow>Bang Héi<color>"
	if (strTongName == nil or strTongName == "") then
		Say(tszTitle,6,
		"NhËn §iÒu KiÖn T¹o Bang Héi/dmcreatetong",
		"T¹o bang héi/dmcreateit",
		"KÕt Thóc §èi Tho¹i/No")
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
			Msg2Player("<color=yellow>Ng­êi §· Héi §ñ TÊt C¶ §iªu KiÖn CÓ T¹o Bang Héi<color>")
		else
				Talk(1,"","<bclr=red>"..myplayersex().." Ch­a §ñ CÊp 50")
		end
	else
		Talk(1,"","<bclr=red>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ NhËn §iÒu KiÖn Bang Héi")
	end
end

function dmcreateit()
Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 0) then
		if (HaveItem(195) == 1) and (GetRepute() >= 450) and (GetLeadLevel() >= 30) and (GetLevel() >= 50) and (GetCamp() == 4) and (oper == 0) then
			Say("KiÕm HiÖp Ch­ëng M«n Nh©n:Khai S¸ng Bang Héi, Më Réng B¸ NghiÖp",2,"B¾t BÇu Dùng Bang/TaoBangHoi","§îi Ta Mét Chót/No")
		else	
			Talk(1,"","<bclr=violet>C¸c H¹ Muèn T¹o Dùng Bang Ph¸i:\nYªu CÇu §¼ng CÊp 50 Trë Lªn, Danh Väng 450, §¼ng CÊp Thèng So¸i 30, Kh«ng M«n Ph¸i, Míi Cã ThÓ TiÕn Hµnh\nLËp Bang Héi...!")
		end
	else
		Say("KiÕm HiÖp Ch­ëng M«n Nh©n:Khai S¸ng Bang Héi, Më Réng B¸ NghiÖp",2,"B¾t BÇu Dùng Bang/TaoBangHoi","§îi Ta Mét Chót/No")
	end
end


function TaoBangHoi()		
DelItem(195)		
SetTask(99,1)				
CreateTong(1)
end
function doimau()

	if GetLastFactionNumber() < 0 then
		Talk(1, "", "§¹i hiÖp ch­a ®· gia nhËp m«n ph¸i.")
		return 1
	end


	local tbOpt =
	{
	--	{"Mµu Tr¾ng", mautrang},
		{"ChÝnh ph¸i", mauvang},
		{"Tµ ph¸i", mautim},
		{"Trung lËp", mauxanh},
		{"S¸t Thñ", maudo},
		{"Trë l¹i", dialog_main},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän mµu", tbOpt)
end

function mautrang()
SetCurCamp(0)
SetCamp(0)
end
function mauvang()
		SetCurCamp(1)
		SetCamp(1)
		Say("§æi mµu PK ChÝnh Ph¸i thµnh c«ng.")
		Pay(50000)
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)
		Say("§æi mµu PK Tµ Ph¸i thµnh c«ng.")
		Pay(50000)
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)
		Say("§æi mµu PK Trung LËp thµnh c«ng.")
		Pay(50000)
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)
		Say("§æi mµu PK S¸t Thñ thµnh c«ng.")	
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
		{"1. NhËn ®iÓm Danh Väng. ", diemdanhvong},
	--	{"2. NhËn ®iÓm Phóc duyªn. ", diemphucduyen},
	--	{"3. NhËn ®iÓm Cèng hiÕn. ", conghien},
		{"4. NhËn ®iÓm tµi l·nh ®¹o. ", lanhdao},
		{"5. Tho¸t"},
	}
	CreateNewSayEx("<npc> Ng­¬i muèn lÊy mãn g×?", tbOpt)
end

function lanhdao()
	for i=1,20 do
AddLeadExp(10000000)
end
end

function diemdanhvong()
	AddRepute(1000);
	Msg2Player("NhËn ®­îc 1000 ®iÓm danh väng.");
end

function diemphucduyen()
	FuYuan_Start();
	FuYuan_Add(1000);
end

function conghien()
AddContribution(100000)
Msg2Player("NhËn ®­îc 1000 ®iÓm Cong Hien.");
end
---------------------------------------------------------------------------------------------------------------------
function mattich()
	if (CalcFreeItemCellCount() < 40) then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
end
local tab_Content =
{
--"Trang BÞ Thanh C©u/settc",
--"Trang BÞ V©n Léc/setvl",
--"Trang BÞ Th­¬ng Lang/settl",
--"Trang BÞ HuyÒn Viªn/sethv",
--"Trang BÞ Tö M·ng/tumang",
--"Trang BÞ Kim ¤/kimo",
--"Trang BÞ B¹ch Hæ/bachho",
-- "Trang BÞ XÝch L©n/xichlan",
"Trang BÞ XÝch L©n Max/xichlanmax",
--"Trang BÞ Minh Ph­îng/minhphuong",
-- "NhËn Vò KhÝ XÝch L©n Max./vkdanglongmax",
-- "Trang BÞ Minh Ph­îng MAX/minhphuongmax",
-- "Trang BÞ Dieu duong /danglong",
--"NhËn Vò KhÝ §»ng Long Max./vkdanglongmax",
--"Trang BÞ Tinh S­¬ng/tinhsuong",
--"Trang BÞ NguyÖt KhuyÕt/nguyetkhuyet",
"Tho¸t./no",
-- "Trë l¹i"
}
Say(" Muèn lÊy trang bÞ g× ? ", getn(tab_Content), tab_Content);
end
function danglong()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#sedanglong(1)",
"ThiÕu L©m Bçng/#sedanglong(2)",
"ThiÕu L©m §ao/#sedanglong(3)",
"Thiªn V­¬ng Chïy/#sedanglong(4)",
"Thiªn V­¬ng Th­¬ng/#sedanglong(5)",
"Thiªn V­¬ng §ao/#sedanglong(6)",
"Nga Mi KiÕm/#sedanglong(7)",
"Nga Mi Ch­ëng/#sedanglong(8)",
"Thóy Yªn §ao/#sedanglong(9)",
"Thóy Yªn Song §ao/#sedanglong(10)",
"Ngò §éc Ch­ëng/#sedanglong(11)",
"Ngò §éc §ao/#sedanglong(12)",
"§­êng M«n Phi §ao/#sedanglong(13)",
"§­êng M«n Ná/#sedanglong(14)",
"Trang sau/danglong2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function danglong2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#sedanglong(15)",
"C¸i Bang Rång/#sedanglong(16)",
"C¸i Bang Bçng/#sedanglong(17)",
"Thiªn NhÉn KÝch/#sedanglong(18)",
"Thiªn NhÉn §ao/#sedanglong(19)",
"Vâ §ang QuyÒn/#sedanglong(20)",
"Vâ §ang KiÕm/#sedanglong(21)",
"C«n L«n §ao/#sedanglong(22)",
"C«n L«n KiÕm/#sedanglong(23)",
"Hoa S¬n KiÕm T«ng/#sedanglong(24)",
"Hoa S¬n KhÝ T«ng/#sedanglong(25)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function sedanglong(nId)
for i = 3920,3929 do
AddGoldItem(0,10*nId+i-10)
end
end
function vkdanglongmax()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#sedanglongmax(1)",
"ThiÕu L©m Bçng/#sedanglongmax(11)",
"ThiÕu L©m §ao/#sedanglongmax(21)",
"Thiªn V­¬ng Chïy/#sedanglongmax(31)",
"Thiªn V­¬ng Th­¬ng/#sedanglongmax(41)",
"Thiªn V­¬ng §ao/#sedanglongmax(51)",
"Nga Mi KiÕm/#sedanglongmax(61)",
"Nga Mi Ch­ëng/#sedanglongmax(71)",
"Thóy Yªn §ao/#sedanglongmax(81)",
"Thóy Yªn Song §ao/#sedanglongmax(91)",
"Ngò §éc Ch­ëng/#sedanglongmax(101)",
"Ngò §éc §ao/#sedanglongmax(111)",
"§­êng M«n Phi §ao/#sedanglongmax(121)",
"§­êng M«n Ná/#sedanglongmax(131)",
"Trang sau/danglongmax2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function danglongmax2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#sedanglongmax(141)",
"C¸i Bang Rång/#sedanglongmax(151)",
"C¸i Bang Bçng/#sedanglongmax(161)",
"Thiªn NhÉn KÝch/#sedanglongmax(171)",
"Thiªn NhÉn §ao/#sedanglongmax(181)",
"Vâ §ang KiÕm/#sedanglongmax(201)",
"Vâ §ang QuyÒn/#sedanglongmax(191)",
"C«n L«n §ao/#sedanglongmax(211)",
"C«n L«n KiÕm/#sedanglongmax(221)",
--"Hoa S¬n KhÝ T«ng/#sedanglongmax(231)",
--"Hoa S¬n KiÕm T«ng/#sedanglongmax(241)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function sedanglongmax(nId)
local idcan=7165+nId
	tbAwardTemplet:GiveAwardByList({{szName = "§»ng Long",tbProp={0,idcan},nQuality=1},}, "test", 1);
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
						-- {szName="Tö mÉu lÖnh",tbProp={6,1,1427,1,0,0},nCount=1},
						{szName="Long ChiÕn Vu D· - KiÕm DiÖu",tbProp={0,9352},nQuality=1,nCount=1},  --Long ChiÕn Vu D· - KiÕm DiÖu cÊp 1
						{szName="Ngò Hµnh Ên",tbProp={0,9339},nQuality=1,nCount=1},  -- cÊp 1
						{szName="Phiªu Vò",tbProp={0,10,7,10},nCount=1}, --ngua phieu vu Hoµng kim
						-- {szName="ngua",tbProp={0,9377},nQuality=1,nCount=1}, --ngua phieu vu Hoµng kim				
						-- {szName="Tói M¸u T©n Thñ",tbProp={6,1,4825,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*15},
						{szName="LÖnh bµi T©n Thñ",tbProp={6,1,4265,1,0,0},nCount=1,nBindState = -2},
						{szName="Phi phong PhÖ Quang",tbProp={0,9409},nQuality=1,nCount=1},
						-- {szName="matna",tbProp={0,9330},nQuality=1,nCount=1},
						{szName = "Hoi thanh phu ", tbProp={6,1,438,0,0,0,0}, nCount=1,nExpiredTime=60*24*30,nBindState=-2},
						{szName = "ThÇn hµnh Phï", tbProp={6,1,1266,0,0,0,0}, nCount=1,nExpiredTime=60*24*30,nBindState=-2},
			        }
				for i = 1, 5 do ST_LevelUp(nAddLevel) ST_DoTransLife() end;
				tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng T©n Thñ") 
				ST_LevelUp(tbAddLevel)
				SetTask(NHIEMVUTANTHU,7) 
				SetTask(MAXCOUNT,1) 
				SetTask(TSK_NEWMAXCOUNT,1)
				-- Earn(10000) 
			else
				Talk(1,"","Hµnh Trang Kh«ng §ñ 40 ¤ H·y S¾p XÕp L¹i Råi §Õn T×m Ta")
			end
		else
			Talk(1,"","Ng­¬i §· §¹t CÊp 150 Råi Kh«ng ThÓ NhËn Th­ëng")
		end
	
end


----------------------------------------------------------------------------
function nlcamnangtanthu()
local index = AddItem(6,1,4265,0,0,0,0)
SetItemBindState(index,-2)
Msg2Player("B¹n nhËn ®­îc <color=yellow>CÈm nang T©n Thñ<color>")
end
----
function nltuimautanthu()
local index = AddItem(6,1,4825,0,0,0,0)
SetItemBindState(index,-2)
Msg2Player("B¹n nhËn ®­îc <color=yellow>CÈm nang T©n Thñ<color>")
end
function dkgm9()
local songuoi= random(100,500)
Msg2Player("<color=yellow>HiÖn t¹i ®ang cã<color><color=green> "..songuoi.."<color> ng­êi ch¬i ®ang trªn m¹ng!.")
end
----------------------------DOI TEN------------------------
function DoiTenNV()
	Say("Ng­¬i t×m ta cã viÖc g×?",3,
		"Mua 1 lÇn ®æi tªn nh©n vËt/dangkydoiten",
		"§Æt tªn cho nh©n vËt/about_rename_role",
		"Nh©n tiÖn ghÐ qua th«i/cancel")
end
function dangkydoiten()
	if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then
		Say("B¹n vÉn cßn 1 lÇn ®æi tªn nh©n vËt. H·y chän '§Æt l¹i tªn cho nh©n vËt' ®Ó ®æi tªn nh©n vËt",1,
		"§Ó ta kiÓm tra xem sao/cancel")
		return
	end

	Say("Mçi lÇn ®æi tªn nh©n vËt cÇn <color=red>10 KNB<color>, ng­êi chuÈn bÞ xong ch­a?",
		2,
		"Ta ®· chuÈn bÞ xong/#buy_addibox_yes(10)",
		"Khi nµo ®ñ tiÒn ta sÏ quay l¹i sau!/cancel");
end
function buy_addibox_yes(nNedCount)
	if (nNedCount < 1 or nNedCount == nil) then
		print("Fail!!!!");
		return
	end;

	local nCount = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCount < 500) then
		Say("<color=yellow>Kh¸ch quan ch­a ®ñ 500 xu! Khi nµo cã ®ñ tiÒn h·y quay l¹i.",1,
		"§Ó ta kiÓm tra xem sao/cancel")
		return
	end
	ConsumeEquiproomItem(500, 4, 417, 1, 1)
	value = SetBit(value, 1, 1)
	SetTask(TASKVALUE_BLEND, value)
	SaveNow();
	Talk(1, "", "<color=yellow>B¹n nhËn ®­îc 1 lÇn ®æi tªn nh©n vËt. H·y chän '§Æt l¹i tªn cho nh©n vËt' ®Ó ®æi tªn nh©n vËt");
end
function about_rename_role()
	local strInfo = "Chµo b¹n! V× tªn nh©n vËt cña b¹n vµ ng­êi ch¬i kh¸c gièng nhau, cho nªn hÖ thèng ®· gióp b¹n ®æi tªn, b¹n cã thÓ söa tªn nh©n vËt cña b¹n tr­íc ®©y, cã thÓ kiÓm tra xem tªn ®ã cã dïng ®­îc kh«ng. Chó ý! B¹n chØ cã 1 c¬ héi duy nhÊt ®Ó ®æi tªn, xin h·y cÈn thËn tõng b­íc.";
	func_online_rename_role(strInfo);
end

function func_online_rename_role(strInfo)
	if (check_renamerole() == 1) then
		Say(strInfo,
			3,
			"Ta muèn kiÓm tra xem tªn nh©n vËt dïng ®­îc kh«ng/query_rolename",
			"TiÕn hµnh thay ®æi tªn nh©n vËt cña m×nh/change_rolename",
			"§Ó lÇn sau ta thay ®æi vËy/cancel");
	else
		deny()
	end
end
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "Xin nhËp tªn nh©n vËt cÇn t×m hiÓu");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end
function change_rolename()
	Say("C¸c b­íc cô thÓ: Rêi Bang Héi nÕu cã, ®èi tho¹i víi NPC, nhËp tªn nh©n vËt cÇn thay ®æi vµo, b¹n sÏ tù ®éng rêi m¹ng. Sau 3 phót ®¨ng nhËp l¹i, nÕu tªn nh©n vËt ®· thay ®æi th× ®­îc xem ®æi tªn thµnh c«ng; nÕu ch­a thay ®æi, mêi b¹n thùc hiÖn l¹i c¸c b­íc trªn. NÕu xuÊt hiÖn mét sè hiÖn t­îng l¹ xin liªn hÖ GM gi¶i quyÕt.",
		2,
		"B¾t ®Çu thay ®æi tªn nh©n vËt/change_rolename2",
		"§Ó ta suy nghÜ l¹i/cancel")
end
function change_rolename2()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>§¹i hiÖp ®· cã Bang Héi kh«ng thÓ tiÕn hµnh thao t¸c nµy!<color>")
		return
	end
	AskClientForString("on_change_rolename", "", 1, 20, "Xin nhËp tªn nh©n vËt míi vµo");
end
function on_change_rolename(new_name)
--Msg2SubWorld( "§¹i hiÖp <color=yellow>"..GetName().."<color> ®· ®æi tªn thµnh <color=green>"..new_name.."<color>")
	if (check_renamerole() == 1) then
		if (GetName() == new_name) then
			Talk(1, "", "B¹n muèn ®æi tªn g×?")
		else
			RenameRole(new_name);
			
		end
	end
end
function deny()
	Say("<color=yellow>Xin lçi! B¹n ph¶i mua lÇn ®æi tªn nh©n vËt råi h·y chän chøc n¨ng nµy!<color>",
		1,
		"BiÕt råi!/cancel")
end

--------------------------------------------------------------------------
function chuyen_gt()
	local szTitle = "<npc><color=Pink>Nam<color> => Nga My hoÆc Thóy Yªn <color=Green>N÷ <color> => ThiÕu L©m hoÆc Thiªn V­¬ng<enter> Sau khi gia nhËp m«n ph¸i cã thÓ ®Õn gÆp ta ®Ó ®æi giíi tÝnh "
	local tbOpt =
	{
		{"ChuyÓn Nam Thµnh N÷", NamNu},
		{"ChuyÓn N÷ Thµnh Nam", NuNam},
		{"Tho¸t/no"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NamNu()
		if CalcEquiproomItemCount(4,417,1,-1)<2500 then 
			Talk(1,"no","<color=red>B¹n kh«ng ®ñ 2500 Xu.")
				return 			
			end
	
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Muèn ®æi giíi tÝnh cÇn ph¶i c­ëi bá hÕt trang bÞ trªn ng­êi .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
return end
if GetSex() == 1 then
Talk(1, "", "<color=green>"..myplayersex().."<color> ®ang lµ <color=red>G¸i §Ñp<color> mµ?\n Cã ph¶i "..myplayersex().." thuéc thÕ giíi thø 3 kh«ng?")
else
SetSex(1) ---nu 1
ConsumeEquiproomItem(2500,4,417,1,-1);
KickOutSelf()
Msg2SubWorld("<color=cyan>Chóc mõng nam ®¹i hiÖp <color=green>"..GetName().."<color=cyan> chuyÓn ®æi giíi tÝnh thµnh c«ng thµnh N÷ Giai Nh©n T¹i NPC ChuyÓn Ph¸i")
end
end

function NuNam()
		if CalcEquiproomItemCount(4,417,1,-1)<2500 then 
			Talk(1,"no","<color=red>B¹n kh«ng ®ñ 2500 Xu.")
				return 			
			end
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Muèn ®æi giíi tÝnh cÇn ph¶i c­ëi bá hÕt trang bÞ trªn ng­êi .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
return end
if GetSex() == 0 then
Talk(1, "", "<color=green>"..myplayersex().."<color> ®ang lµ <color=red>Trai Xinh<color> mµ?\n Cã ph¶i "..myplayersex().." thuéc thÕ giíi thø 3 kh«ng?")
else
SetSex(0)---nam 0
ConsumeEquiproomItem(2500,4,417,1,-1);
KickOutSelf()
Msg2SubWorld("<color=cyan>Chóc mõng n÷ ®¹i hiÖp <color=green>"..GetName().."<color=cyan> chuyÓn ®æi giíi tÝnh thµnh c«ng thµnh Nam Mü Nh©n T¹i NPC ChuyÓn Ph¸i")
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
	 local szTitlezs = "<color=green>Câi Giang Hå MÝnh Ta §éc B­íc<color>\n<color=violet>* * * * <color=fire>§«ng Phuong Gi¸o Chñ<color> * * * * <color>\n<color=yellow> SÏ Gióp Ta Cã §­îc TÊt C¶ <color>"
		local tbOpt =
	{
		{"Thóy yªn Kh«ng Nªn Häc, V× sÏ lµm mÊt kh¶ n¨ng chiÕn ®Êu"},
	}
            CreateNewSayEx(szTitlezs, tbOpt)		
else
if nFaction == 11 then
	 local szTitlezs = "<color=green>Câi Giang Hå MÝnh Ta §éc B­íc<color>\n<color=violet>* * * * <color=fire>§«ng Phuong Gi¸o Chñ<color> * * * * <color>\n<color=yellow> SÏ Gióp Ta Cã §­îc TÊt C¶ <color>"
		local tbOpt =
	{
		{"Ta lµ Vò Hån §¹i §Ó Tö",NhanKyNang1801},
	       {"KÕt thóc ®èi tho¹i."},

	}
            CreateNewSayEx(szTitlezs, tbOpt)		
else

               local szTitlezs = "<color=green>Câi Giang Hå MÝnh Ta §éc B­íc<color>\n<color=violet>* * * * <color=fire>§«ng Phuong Gi¸o Chñ<color> * * * * <color>\n<color=yellow> SÏ Gióp Ta Cã §­îc TÊt C¶ <color>"
		local tbOpt =
	{
		{"NhËn Fee 180 Nµo",NhanKyNang180},
             	{"KÕt thóc ®èi tho¹i."},

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
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ Sö Dông MËt TÞch ThÊt TruyÒn")
		return 1;
	else
		for i=1,11 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20) 
					Talk(1,"","<color=green>"..myplayersex().." §· Häc §­îc Kü N¨ng ThÊt TruyÒn<color> <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Kh«ng ThÓ Häc N÷a")
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
		local tbItem1 = {szName="TruyÒn Kú LÖnh", tbProp={6,1,4257,1,0,0}, nBindState=-2}
		local tbItem2 = {szName="Tèc HiÖu Phï", tbProp={6,1,4629,1,0,0}, nBindState=-2}
		tbAwardTemplet:GiveAwardByList(tbItem1, "Kich ho¹t thµnh c«ng Tµi kho¶n GM!", 1)
		tbAwardTemplet:GiveAwardByList(tbItem2, "Kich ho¹t thµnh c«ng Tµi kho¶n GM!", 1)
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
		local tbItem1 = {szName="Thiªn Th­", tbProp={6,1,3078,1,0,0}, nBindState=-2}
		tbAwardTemplet:GiveAwardByList(tbItem1, "Kich ho¹t thµnh c«ng Tµi kho¶n GM!", 1)
	end
end
function TienHanhCaiLao_free()
	local tbSay = 
{
"C¶i L·o 3-Chän Dung Kim(Bá qua kh¸ng vËt lý 30%)/#TienHanhCaiLao4(1577)",
"C¶i L·o 3-Chän Ph¸ Méc(Bá qua kh¸ng ®éc 30%)/#TienHanhCaiLao4(1578)",
"C¶i L·o 3-Chän Hñ Thñy(Bá qua kh¸ng b¨ng 30%)/#TienHanhCaiLao4(1579)",
"C¶i L·o 3-Chän Kh­ Háa(Bá qua kh¸ng háa 30%)/#TienHanhCaiLao4(1580)",
"C¶i L·o 3-Chän LiÖt Thæ(Bá qua kh¸ng l«i 30%)/#TienHanhCaiLao4(1581)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn Mua G×",getn(tbSay),tbSay)
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
			Talk(1, "", "<bclr=violet>Xin Chµo "..myplayersex().."<bclr=red> Muèn Tu LuyÖn NghÞch Thiªn C¶i MÖnh\nYªu CÇu: ......\n§¼ng CÊp Tu LuyÖn §¹t 200...\n§· Tu LuyÖn T©m Ph¸p C¬ Së Thiªn LÇn Thø 5<bclr>")
		end
	else
		Talk(1,"","<color=red>H·y §Ó Trèng 1 ¤ Trèng Råi TiÕp Tôc C¶i Tö Håi Sinh")
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
"Ta Muèn §æi Sang Dung Kim(Bá qua kh¸ng vËt lý 30%)/#TienHanhDoiSkillTrungSinh4(1577)",
"Ta Muèn §æi Sang Ph¸ Méc(Bá qua kh¸ng ®éc 30%)/#TienHanhDoiSkillTrungSinh4(1578)",
"Ta Muèn §æi Sang Hñ Thñy(Bá qua kh¸ng b¨ng 30%)/#TienHanhDoiSkillTrungSinh4(1579)",
"Ta Muèn §æi Sang Kh­ Háa(Bá qua kh¸ng háa 30%)/#TienHanhDoiSkillTrungSinh4(1580)",
"Ta Muèn §æi Sang LiÖt Thæ(Bá qua kh¸ng l«i 30%)/#TienHanhDoiSkillTrungSinh4(1581)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn Mua G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4(num)
local nSilverCount = CalcEquiproomItemCount(4, 2480, 1, 1)
if nSilverCount<100 then
Say("Kh«ng §ñ 100  KNB B¹n ¬i")
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
	szDescription = format("bá ff huyÒn kim vµo ®çi ff v« cùc cã sao t­¬ng øng\n.")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "DoiNguyenLieu56_ok", "no", 1)
		
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
