------------------------***Create*By*Heart*Doldly***----------------------------------
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\script_protocol\\protocol_def_gs.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\global\\platina_upgrade.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\gm_tool\\hotrothem.lua")
Include("\\script\\gm_tool\\dohoangkimmax.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\gm_tool\\baotri.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_event\\20120415_bach_bao_ruong\\bbr_award.lua")
Include("\\script\\bonus_onlinetime\\func_onlineaward.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
--Include("\\script\\doldly\\giftcode\\gift.lua")
Include("\\script\\gm_tool\\gmrole.lua")
Include("\\script\\event\\springfestival08\\allbrother\\beidoulaoren.lua")
Include("\\script\\missions\\huashanqunzhan\\missionctrl.lua")
Include("\\script\\global\\g7vn\\chanle\\chanle.lua")
Include("\\script\\global\\g7vn\\oantuty\\oantuty.lua")
Include("\\script\\global\\pgaming\\tieubangchien\\m_mission.lua")
Include("\\script\\global\\g7vn\\limitaccountperip.lua");
Include("\\script\\missions\\racegame\\missionctrl.lua")
IncludeLib("TASKSYS");
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
Include("\\script\\global\\g7vn\\resetbox.lua")
Include("\\script\\global\\longdenbanghoi\\longtru1.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
IncludeLib("TIMER")
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370}
HOAPHUONGTRANG	 = 4986
NHANTHUONGMOC		 = 4985
IncludeLib("ITEM")
--------------------------------------------------------------------------------------
LENHBAI_ADMIN = "<#><link=image[0]:\\spr\\item\\sprADMIN.spr>LÖnh Bµi GM: <link>"
------------------------------------------------------------------------------------------------------------------------------------------
local tbGMAccount = {"thaipham1", "testgame4","kimluyen2002","quycan1","","",""} TENADMIN ={{"testthiennhan",99},{"hoasonn",99},{"GAMEMASTER",99},{"CuuTuoc",99},{"",99},{"",99},{"",99},{"",99}}
-------------------------------------------------------------------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
---------------------------------------------------------------------------------
function main(rrrr)
dofile("script/gm_tool/lbadmin.lua")
--LoadScript("\\script\\skill\\wudu.lua");
--ReloadSkill("\\script\\skill\\wudu.lua");
--RemoveSkillState(1679,30,3,559872000,1) 
if GetAccount()=="kimluyen2002" then
	local tbRoundPlayer, nCount = GetAroundPlayerList( 20);
local nW, nX, nY = GetWorldPos() 
				Msg2Player(""..nW..", "..nX..", "..nY.."")
			--	Pay(9000000)
			--	Msg2Player(""..nW..", "..(nX*32)..", "..(nY*32).."")
			--	Msg2Player(GetCurrentMagicLevel (709))
			--	Earn(10000000)
				--for i=1,10 do
			--	AddItemEx(4,0,0,0,3,0,10,1,200,10,10,10,10,10,10)--kim
			--	AddQualityItem(2,0,3,0,10,1,0,150,350,0,0,0,0)--moc
				--AddQualityItem(0,0,3,0,10,1,0,150,350,0,0,0,0)--moc
			--	AddItem(0, 3, 0, 10, 1, 0, 100,200,10,10,10,10,10)
			--AddItemEx(4,0,0,0,3,0,10,1,200,81,81,81,81,81,81,0)
				--tbAwardTemplet:GiveAwardByList({{szName = "Kem",tbProp={6,1,147,i,0},nCount=20},}, "test", 1);
				--end
			--	call_npc1_test()
			--	return 1
				end
local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
			SetTaskTemp(200,0)
			w,x,y=GetWorldPos()
			SubWorld = SubWorldID2Idx(w)
			SubName=SubWorldName(SubWorld)
			local szTitle = LENHBAI_ADMIN.."<npc><color>: <color=orange>"..GetName().." <color>.<enter><color=yellow>Vâ L©m TruyÒn Kú<color><enter><color=red>VÞ TrÝ<color>:<color=orange>ID:<color><color=orange>"..w.."<color>-<color=red>"..SubName.."<color>-Täa ®é X/Y:<color=yellow> "..x.."<color>/<color=cyan>"..y.."<color>"
			local tbOpt = {
					{"Qu¶n Lý Chøc N¨ng GM", ChucNang_Admin},
					{"Chøc N¨ng Qu¶n Lý GM",ChucNangQuanLyGM},
					{"Chøc N¨ng Më Khãa IP",GioiHanIP},
					{"Chøc N¨ng Ch½n LÎ",quanlychanle},
					{"ADM Move=>CTC...",vitri_congthanh},
					{"Lay manh ep",testcodeadmin},
					{"Reload",ReLoadScript},
					{"Reload All Gs", Bil_ReLoadScript_MultiGamerSVWithLinkInput},
					{"Xo¸ Hµnh Trang",ClearBagCell},
			--			{"NhËn c¸c vËt phÈm Ðp trang bÞ TÝm", NhanPhiPhong},
					{"LÊy §å Xanh",laydoxanh},
					{"Xo¸ XÕp H¹ng",XoaXepHang},
					--{"RESET EVENT",resetevent},
					{"Test NPC",call_npc1_test},
					{"LÊy Ph«i §å TÝm",LayThienThach},
					{"Gäi Boss §éc C«",BossMoDungToan},
					{"Test vßng s¸ng",nhanvongsang},
			
				--	{"KÕt Thóc §èi Tho¹i",},
					{"KÕt Thóc §èi Tho¹i",},
				}
				CreateNewSayEx(szTitle, tbOpt)
				
	--PlayerFunLib:AddSkillState(1512,20,3,18*60*60*24*1,1)
			return 1;
		end
	end
end

function testcodeadmin()
local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
local tuthuytinh = CalcEquiproomItemCount(4,239,1,1)
local lucthuytinh = CalcEquiproomItemCount(4,240,1,1)
local tylethanhcong= (lamthuytinh*5)+(lucthuytinh*5)+(tuthuytinh*5)+50
	GiveItemUI("Trang BÞ", "Bá Vò KhÝ Xanh Vµo, Nguyªn LiÖu §Ó Ngoµi Hµnh Trang\n Nguyªn LiÖu: \n- Ho¸n Binh Phï (50% Tû LÖ) \n- 1 Kim Tª\n- 1 ThÇn BÝ Kho¸ng Th¹ch\n- Thñy Tinh (1 Viªn + 5% Tû lÖ)\n Tû LÖ Thµnh C«ng: "..tylethanhcong.." %", "testcodeadmin_ok", "no", 1)
end
function testcodeadmin_ok()
	local nItemIdx = GetGiveItemUnit(1)
	local nMaCodeItem = ITEM_GetItemRandSeed(nItemIdx);
	local nMaCodeItem2 = ITEM_GetImmediaItemIndex(nItemIdx);
	local nMaCodeItem3 = ITEM_GetItemVersion(nItemIdx);
	local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp( nItemIdx );
	local nQuality = GetItemQuality( nItemIdx );
	local arynMagLvl = GetItemAllParams( nItemIdx );
	local nStackCount = GetItemStackCount( nItemIdx );
	local nCurItemQuality	= GetItemQuality(nItemIdx);
	local bindState = GetItemBindState(nItemIdx)
	local nG, nD,nP,nLevel,nHe,nDong2 = GetItemProp(nItemIdx)
	local timeitem = ITEM_GetExpiredTime(nItemIdx)
	local nIdHKMP = GetGlodEqIndex(nItemIdx)
    local nTen=GetItemName(nItemIdx)
	local nRestCount = GetItemAllParams(nItemIdx)
	if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ Ðp")
		return
	end
	
        if  timeitem > 0	then
		Talk(1,"", "Trang bÞ ®ang cã h¹n sö dông, kh«ng thÓ Ðp")
		return
		end	
		if nG == 4 or nG == 6 then
			Say("ng­¬i ®Æt c¸i g× vµo thÕ nµy ",0);
			return
		end
		if nQuality ~= 0 then
					Say("chØ ®Æt vµo trang bÞ xanh",0);
			return
		end


		Msg2Player(nMaCodeItem.."-"..nQuality.."-"..nGenre.."-"..nDetailType.."-"..nParticular.."-"..nSeries.."-"..nLuck.."-"..arynMagLvl[1].."-"..arynMagLvl[2].."-"..arynMagLvl[3].."-"..arynMagLvl[4].."-"..arynMagLvl[5].."-"..arynMagLvl[6],nStackCount)
		--AddItemEx(4,nMaCodeItem,nQuality,nGenre,nDetailTypeR,nParticularR,nLevel,nSeries,nLuck,arynMagLvl[1],arynMagLvl[2],arynMagLvl[3],arynMagLvl[4],arynMagLvl[5],arynMagLvl[6],nStackCount)
	--	local szNews = format("Chóc mõng   <color=green>"..GetName().."<color> ho¸n ®æi trang bÞ xanh<color=cyan> "..nTen.."<color> thµnh c«ng.")
--	AddGlobalNews(szNews);
--	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
function XoaXepHang()
	--for i=10277,10288 do
	for i=10001,10300 do
		Ladder_ClearLadder(i)
		print(i)
	end
	Ladder_ClearLadder(10119)
	Ladder_ClearLadder(10250)
	Ladder_ClearLadder(10279)
end



function ChonVongSang1()

AskClientForNumber("ChonVongSang_d11",1,1000,"NhËp Sè Muèn LÊy") 
end
function ChonVongSang_d11(num)

local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(num, 2, nTime)
Title_ActiveTitle(num)
SetTask(1122,num)
Msg2Player("NhËn Vßng S¸ng Thµnh C«ng1"); 
end


function Bil_ReLoadScript_MultiGamerSVWithLinkInput(bilLinkReload)
	if type(bilLinkReload) == "string" then
		local bilLinkReload = bilLinkReload
		local Keywk1 = strfind(bilLinkReload, "\script")
		bilLinkReload = strsub(bilLinkReload, Keywk1-1, strlen(bilLinkReload))
		RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReloadScriptMultiGamesv", {bilLinkReload})
		return Msg2Player("§· göi yªu cÇu ®Õn S3Relay!")
	end
	return AskClientForString("Bil_ReLoadScript_MultiGamerSVWithLinkInput", "", 1, 500, "<#>NhËp ®­êng dÉn")
end

function BossDongPhuong()
	IDBoss = {1505,1506,1507,1508,1509}
	local nW, nX, nY = GetWorldPos() 
	local AddIDBoss = 1665
	local npcindex = AddNpcEx(AddIDBoss, 95, random(0,4), SubWorldID2Idx(nW), nX*32, nY*32, 1, "Long Tru", 1)
	SetNpcParam(npcindex, 1, AddIDBoss)
	SetNpcScript(npcindex, "\\script\\global\\longdenbanghoi\\longtru1.lua");
	SetNpcTimer(npcindex, 10*18);
	   AddTimer(60* 18, "OnTimeout", npcindex); 
end

function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end
tbItemBag = {
	["LÖnh bµi GM"] = 1,
	["CÈm Nang T©n Thñ"] = 1,
	["Tói M¸u T©n Thñ"] = 1,
	["ThÇn Hµnh Phï"] = 1,
	["Håi thµnh phï (lín) "] = 1,
	["Håi thµnh phï (nhá) "] = 1,
	["Thæ ®Þa phï (sö dông v« h¹n) "] = 1,
	["Kim Nguyªn B¶o"] = 1,
	["TiÒn ®ång"] = 1,
	
}
function NhanPhiPhong()
 if CalcFreeItemCellCount()<10 then 
	Say("Hµnh trang ko ®ñ 10 « trèng")
	return
 end
for i=1,10 do
AddItem(6,1,149,1,0,0,0) --hien 1
AddItem(6,1,150,1,0,0,0) --an 1 kim
AddItem(6,1,150,1,1,0,0) --an 1 moc
AddItem(6,1,150,1,2,0,0) --an 1 thuy
AddItem(6,1,150,1,3,0,0) --an 1 hoa
AddItem(6,1,150,1,4,0,0) --an 1 tho

AddItem(6,1,151,1,0,0,0) --hien 2
AddItem(6,1,152,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) --hien 3
AddItem(6,1,154,1,0,0,0) 
AddItem(6,1,154,1,1,0,0) 
AddItem(6,1,154,1,2,0,0) 	
AddItem(6,1,154,1,3,0,0) 	
AddItem(6,1,154,1,4,0,0) 	
tbAwardTemplet:GiveAwardByList({{szName = "HuyÒn Tinh Kho¸ng Th¹ch",tbProp={4,238,1,1},nCount=5},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "HuyÒn Tinh Kho¸ng Th¹ch",tbProp={4,239,1,1},nCount=5},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "HuyÒn Tinh Kho¸ng Th¹ch",tbProp={4,240,1,1},nCount=5},}, "test", 1);
				tbAwardTemplet:GiveAwardByList({{szName = "HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,i,0},nCount=10},}, "test", 1);
				end
	 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy nguyªn liÖu ®å tÝm",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))			
end
function ClearBagCell()
	Say("<color=green>L­u ý:<color> <color=yellow>Muèn Xãa R­¬ng Hµnh Trang CÇn Ph¶i KiÓm Tra\nTrang BÞ VËt PhÈm Tr­íc Khi Xãa.\n<color=green>Lo¹i Trõ 6 VËt PhÈm HÖ Thèng Gi÷ L¹i:<color>\n<color=red>\t* Giang Hå LÖnh, ThÇn Hµnh Phï, Håi Thµnh Phï\n\t\t\tKim Nguyªn B¶o, TiÒn Xu, Tói M¸u T©n Thñ.<color>",2,"X¸c NhËn Muèn Xãa/ClearBag","Hñy Bá/No")
end
function ClearBag()
local tbRoomItems = GetRoomItems(0)
	for i = 1, getn(tbRoomItems) do
		local szName = GetItemName(tbRoomItems[i])
		if not tbItemBag[szName] or tbItemBag[szName] ~= 1 then
			RemoveItemByIndex(tbRoomItems[i])
		end
	end
end

function resetevent()

SetTask(4994,0)
SetTask(4995,0)
SetTask(4996,0)
--SetTask(1764,1)
--local tintuc=format("\n<color=cyan>-Qu¶ Huy Hoµng : 21h00<color>\n<color=cyan>-Boss TiÓu HK: 21h30<color>\n<color=cyan>-B¸o Danh Tèng Kim: 21h50<color>\n<color=cyan>-PLD §Æc BiÖt: 23h00")
--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", tintuc , "", "");
--Msg2Player(tintuc)
--local Index = AddItem(0, 0, 0, 1, random(0,4), 0, 0)
--local totalcount =CalcEquiproomItemCount(1,2,0,5);
--Msg2Player(""..totalcount.."")
--AddProp(-10000)
--AddMagicPoint(-44800)
end
function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end

function call_npc1_test() 
 local nMapId, nPosX16, nPosY16 = GetWorldPos();
  local SId = SubWorldID2Idx(nMapId);
  local nNpcIndex;
  if (SId >= 0) then
	  	nNpcIndex = AddNpc(1692, 95, SId, nPosX16 * 32, nPosY16 * 32, 1, "Thñy TÆc §¹i §Çu LÜnh");
		AddTimer(10*60*18, "OnTimeout", nNpcIndex);
	  	if nNpcIndex > 0 then
	  		SetNpcScript(nNpcIndex,"\\script\\missions\\fengling_ferry\\bossdeathdai.lua");

	  	end
end
end
function call_npc1_test22() 
 local nMapId, nPosX16, nPosY16 = GetWorldPos();
  local SId = SubWorldID2Idx(nMapId);
  local nNpcIndex;
  if (SId >= 0) then
	  	nNpcIndex = AddNpc(1110, 95, SId, nPosX16 * 32, nPosY16 * 32, 1, "TEst NPC");
		AddTimer(30*60*18, "OnTimeout", nNpcIndex);
	  	if nNpcIndex > 0 then
	  		--SetNpcScript(nNpcIndex,"\\script\\missions\\boss\\sieuboss\\heart_death.lua");

	  	end
end
end
function nhandocongthanh()
tbAwardTemplet:GiveAwardByList({{szName="Lenh Bai",tbProp={0,11,561,1,1},nCount=1,nExpiredTime=(6*24*60)+(23*60)},}, "test", 1);
end
function nhanvongsang()
	local tbSay = 
{
"Vßng s¸ng 1/#NhanVongSangVip(1658)",
"Vßng s¸ng 2/#NhanVongSangVip(1659)",
"Vßng s¸ng 3/#NhanVongSangVip(1660)",
"Vßng s¸ng 4/#NhanVongSangVip(1661)",
"Vßng s¸ng 5/#NhanVongSangVip(1662)",
"Vßng s¸ng 6/#NhanVongSangVip(1663)",
"Vßng s¸ng 7/#NhanVongSangVip(1664)",
"Vßng s¸ng 8/#NhanVongSangVip(1665)",
"Vßng s¸ng 9/#NhanVongSangVip(1674)",
"Vßng s¸ng 10/#NhanVongSangVip(1675)",
"Vßng s¸ng 11/#NhanVongSangVip(1676)",
"Vßng s¸ng 12/#NhanVongSangVip(1677)",
"Vßng s¸ng 13/#NhanVongSangVip(1678)",
"Xãa TÊt C¶ Vßng S¸ng/#xoavongsang()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("Chän chøc n¨ng nµo?",getn(tbSay),tbSay)
--	return 1;
--tbAwardTemplet:GiveAwardByList({{szName="Lenh Bai",tbProp={6,1,4402,1,1},nCount=1,nExpiredTime=20*24*60},}, "test", 1);
end
function xoavongsang()
--GetSkillState()
for i=500,1678 do
	RemoveSkillState(i,30,3,559872000,1) 
end
end
function NhanVongSangVip(vongsang)
--	gmidx=PlayerIndex 
--PlayerIndex=GetTaskTemp(200) 

	--local ntime=18*60*60*24*14
--for i=1546,1650 do
--RemoveSkillState(958,20,3,559872000,1) 
--RemoveSkillState(959,20,3,559872000,1) 
--RemoveSkillState(960,20,3,559872000,1) 
--end
for i=1658,1678 do
	RemoveSkillState(i,20,3,559872000,1) 
end

--PlayerFunLib:AddSkillState(vongsang,21,0,54)
--PlayerFunLib:AddSkillState(vongsang,3,0,54)
--PlayerFunLib:AddSkillState(vongsang,2,0,54)
--PlayerFunLib:AddSkillState(vongsang,2,0,54)
PlayerFunLib:AddSkillState(vongsang,20,3,18*60*60*24*1,1)
--PlayerIndex=gmidx 
Msg2Player("§· add vßng s¸ng thµnh c«ng!")
end

function BossMoDungToan()
	local idmap,nX,nY = GetWorldPos(); 
		local mapidx = SubWorldID2Idx(idmap)
	local npcindex = AddNpcEx(563, 95, 4, mapidx, nX*32, nY*32, 1, "BOSS §éc C«", 1)
	SetNpcParam(npcindex, 1, 563)
	SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua");
	AddTimer(40*60* 18, "OnTimeout", npcindex);--SetNpcTimer(npcindex, 40*60*18);
end

function LayThienThach()
	if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
--	for i=1317,1325 do
--tbAwardTemplet:GiveAwardByList({{szName = "M¶nh thiªn th¹ch",tbProp={4,i,1,1},nCount=100},}, "test", 1);
--end
local ranvk=random(1,2)
		if ranvk==1 then
			local randong=random(51,100)
			if randong>=51 and randong<=70 then
				AddQualityItem(2,0,0,random(0,5),10,0,0,-1,-1,-1,0,0,0)
			elseif randong>=71 and randong<=85 then
				AddQualityItem(2,0,0,random(0,5),10,0,0,-1,-1,-1,-1,0,0)
			elseif randong>=86 and randong<=95 then
				AddQualityItem(2,0,0,random(0,5),10,0,0,-1,-1,-1,-1,-1,0)
			elseif randong>=96 and randong<=100 then
				AddQualityItem(2,0,0,random(0,5),10,0,0,-1,-1,-1,-1,-1,-1)
			end
		else
			local randong=random(51,100)
			if randong>=51 and randong<=70 then
				AddQualityItem(2,0,1,random(0,2),10,0,0,-1,-1,-1,0,0,0)
			elseif randong>=71 and randong<=85 then
				AddQualityItem(2,0,1,random(0,2),10,0,0,-1,-1,-1,-1,0,0)
			elseif randong>=86 and randong<=95 then
				AddQualityItem(2,0,1,random(0,2),10,0,0,-1,-1,-1,-1,-1,0)
			elseif randong>=96 and randong<=100 then
				AddQualityItem(2,0,1,random(0,2),10,0,0,-1,-1,-1,-1,-1,-1)
			end
		end

end


function GioiHanIP()
	LimitAccountPerIP:AskSetMax()
end;



function TestTamThoi1()
xoavongsang()
PlayerFunLib:AddSkillState(1211,20,3,18*60*60*24*1,1)       --998       --1211
--PlayerFunLib:AddSkillState(1622,20,3,46656000,1)
end

Include("\\script\\global\\g7vn\\limitaccountperip.lua");

function GioiHanIP()
	LimitAccountPerIP:AskSetMax()
end;

function ChonVongSang()

	local ntime = 18*60*60*24*4
	local n_title = 190	
	Title_AddTitle(n_title, 2, nTime)
	Title_ActiveTitle(n_title)
	--PlayerFunLib:AddSkillState(977,20,3,6220800,1)
--AskClientForNumber("ChonVongSang_d1",1,10000,"NhËp Sè Ngµy Muèn LÊy") 
--SaveNow();
--RemoveSkillState(1295,20,3,559872000,1) 
--tbAwardTemplet:GiveAwardByList({{szName="Lenh Bai",tbProp={6,1,4402,1,1},nCount=1,nExpiredTime=20*24*60},}, "test", 1);
end
function ThamGiaOanTuTi()
tbAloneScriptGame:DialogMain();
end
function ChonVongSang_d1(num)

local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(num, 2, nTime)
Title_ActiveTitle(num)
SetTask(1122,num)
Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
end

---------------------------------------------------------------------------------
function NguyenLieuEp()
	if CalcFreeItemCellCount() >= 40 then
		for i = 1,2000 do AddItem(6,1,2566,1,0,0) end
	else
		Talk(1,"","H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
	end
end
-------------------------------------------------------------------------------------------------------------------------
function NguyenLieuEvent()
	if CalcFreeItemCellCount() >= 40 then
		for i = 1,500 do
			AddItem(6,1,3161,1,0,0)
			AddItem(6,1,3162,1,0,0)
			AddItem(6,1,3163,1,0,0)
		end
	else
		Talk(1,"","H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
	end
end
-------------------------------------------------------------------------------------------------------------------------
function MatNaTheoNgay()
tbAwardTemplet:GiveAwardByList({{szName="Mat na",tbProp={0,11,853,1,1,0},nCount=1},}, "test", 1);
end
function HoTroGameLuaChon()
if (CalcFreeItemCellCount() < 20) then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
end
	local tbOpt = {
		{"NhËn Ngùa Theo Ngµy",LuaChonNguaTheoNgay},
		{"NhËn Th­ëng C«ng Thµnh ChiÕn",nhanthuongcongthanhchien},
		{"NhËn Th­ëng Thiªn Tö",nhanthuongthientu},
		{"NhËn LÔ Bao Nh¹c V­¬ng KiÕm",NhanTinVatMonPhai},
		--{"NhËn Ph¸t Th­ëng Top CÊp ",nhanthuongphattop},
		--{"NhËn TuÖ Thanh + Duyªn Qu©n ",TueThanhDuyenQuan},
		--{"NhËn §Õ hoµng chi giíi + Cµn Kh«n Giíi ChØ + Thiªn Tö Chi Giíi ",CanKhonHoangDe},
		{"NhËn Cµn Kh«n Song TuyÖt Béi",NhanCanKhonSongTuyetBoi},
		--{"Set M·nh S­ Theo Ngµy",NhanDoVat},				
	--	{"NhËn MÆt ChiÕn Tr­êng V­¬ng Gi¶",MatNaTheoNgay},
		--{"NhËn MÆt N¹ 3 CÊp Theo Ngµy",MatNaTheoNgay3},
		{"Phi Phong V« Cùc( §¹i Th¸nh)",VoCucDaiThanh},
		--{"T©n NhËm Hµnh Ên Gi¸m (H¹)",TanNhamHa},
		--{"T©n NhËm Hµnh Ên Gi¸m (Trung)",TanNhamTrung},
		--{"T©n NhËm Hµnh Ên Gi¸m (Th­îng)",TanNhamThuong},
		--{"Set H¾c ThÇn Theo Ngµy",HacThanTheoNgay},
		--{"Set H¾c ThÇn Míi Theo Ngµy",HacThanMoiTheoNgay},
		--{"Set Vò LiÖt Theo Ngµy",VuLietTheoNgay},
	--	{"NhÉn Cµn Kh«n",CanKhonLuaChon},
		--{"NhÉn 5 NhÉn Max",CanKhonLuaChonMax},
		--{"NhËn Nhat ky 7 ngay",NhanTinVatMonPhai},
		--{"NhÉn Nguyªn LiÖu Test",NhanNguyenLieuTest},
		{"NhÉn 5000 HHL",HHL5000},
		{"Tho¸t"},	
	}
	CreateNewSayEx("<bclr=violet>Xin Mêi "..myplayersex().." Chän Chøc N¨ng CÇn Hç Trî<bclr>", tbOpt)
end
function nhanthuongphattop()
for i=0,4 do
local Index = AddGoldItem(0,6207+i) 
end
end
function nhanthuongthientu()
local Index = AddItem(0,11,561,1,0,0) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=500},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=500},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=500},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=500},}, "test", 1);
local Index = AddItem(4,1326,1,1,0,0) SyncItem(Index)
local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
--local Index = AddGoldItem(0,6224) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
--local Index = AddGoldItem(0,6224) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
WriteLogPro("dulieu/admin_buff_ho_tro.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M_%d-%m-%Y").."   "..GetIP().."\t NhËn th­ëng Thiªn Tö \n");
end
function nhanthuongcongthanhchien()
local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
--local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
--local Index = AddItem(0,10,13,10,0,0) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
--local Index = AddItem(0,10,13,10,0,0) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
--tbAwardTemplet:GiveAwardByList({{szName="Tói Tèng Kim",tbProp={6,1,4361,1,1},nCount=100},}, "test", 1);
local Index = AddGoldItem(0,3879) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
local Index = AddGoldItem(0,3879) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
--local Index = AddItem(6,1,4377,1,0,0) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
for i=1,8 do
tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=500},}, "test", 1);
end
for i=1,2 do
local Index = AddItem(0,11,561,1,0,0) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
end
WriteLogPro("dulieu/admin_buff_ho_tro.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M_%d-%m-%Y").."   "..GetIP().."\t NhËn th­ëng C«ng Thµnh ChiÕn \n");
end
----------------------------------------------------------------------
function LuaChonNguaTheoNgay()
	local tbOpt = {
		{"Siªu Quang",SieuQuangLuaChon_xanh},		
		{"XÝch Long C©u",XichLongCauLuaChon_xanh},		
		{"Phiªn Vò",PhienVuLuaChon_xanh},		
		{"H·n HuyÕt",HanHuyetLuaChon_xanh},		
		{"NhËn MÆt N¹  1 Skill",NhanMatNa1Skill},		
		--{"Phiªn Vò TruyÒn ThuyÕt",PhiVanLuaChon},		
		--{"XÝch Long C©u TruyÒn ThuyÕt",XichLongCauLuaChon},
		--{"S­ Tö TruyÒn ThuyÕt",SuTuLuaChon},
	--	{"B¹ch Hæ TruyÒn ThuyÕt",BachHoLuaChon},
		--{"D­¬ng Sa TruyÒn ThuyÕt",DuongSaLuaChon},
	--	{"Ngù Phong TruyÒn ThuyÕt",NguPhongLuaChon1},
	--	{"H·n HuyÕt Long C©u TruyÒn ThuyÕt",HanHuyetLuaChon},
		--{"Hång Mao TruyÒn ThuyÕt",HongMaoLuaChon},
		--{"B¹ch Hå Ly TruyÒn ThuyÕt",BachHoLyLuaChon},		
		{"Tho¸t"},		
	}
	CreateNewSayEx("<bclr=violet>Xin Mêi "..myplayersex().." Mêi Chän Ngùa<bclr>", tbOpt)
end
----------------------------------------------------------------------
----------------------------------------------------------------------
function NhanCanKhonSongTuyetBoi()
--local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
local Index = AddItem(6,1,2219,1,0,0) ITEM_SetExpiredTime(Index,24*60*30) SyncItem(Index)
WriteLogPro("dulieu/admin_buff_ho_tro.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M_%d-%m-%Y").."   "..GetIP().."\t NhËn th­ëng Cµng Kh«n Song TuyÖt Béi \n");
end


function TueThanhDuyenQuan()
AskClientForNumber("TueThanhDuyenQuan_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function TueThanhDuyenQuan_d(num)
local Index = AddGoldItem(0,208) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
local Index = AddGoldItem(0,209) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
----------------------------------------------------------------------
function CanKhonHoangDe()
AskClientForNumber("CanKhonHoangDe_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function CanKhonHoangDe_d(num)
local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
local Index = AddGoldItem(0,530) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
local Index = AddGoldItem(0,531) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
WriteLogPro("dulieu/admin_buff_ho_tro.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M_%d-%m-%Y").."   "..GetIP().."\t NhËn th­ëng NhÉn Cµn Kh«n \n");
end

----------------------------------------------------------------------
function MatNaTheoNgay()
AskClientForNumber("MatNaTheoNgay_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function MatNaTheoNgay_d(num)
local Index = AddItem(0,11,446,1,0,0) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
function MatNaTheoNgay3()
AskClientForNumber("MatNaTheoNgay3_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function MatNaTheoNgay3_d(num)
local Index = AddItem(0,11,817,1,0,0) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
function NhanMatNa1Skill()
AskClientForNumber("NhanMatNa1Skill_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function NhanMatNa1Skill_d(num)
local Index = AddItem(0,11,647,1,0,0) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
------------------------------ngua---------------------------
function SieuQuangLuaChon_xanh()
AskClientForNumber("SieuQuangLuaChon_xanh_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function SieuQuangLuaChon_xanh_d(num)
local Index = AddItem(0,10,13,10,0,0,0)  ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end

function XichLongCauLuaChon_xanh()
AskClientForNumber("XichLongCauLuaChon_xanh_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function XichLongCauLuaChon_xanh_d(num)
local Index = AddItem(0,10,9,10,0,0,0)  ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end

function PhienVuLuaChon_xanh()
AskClientForNumber("PhienVuLuaChon_xanh_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function PhienVuLuaChon_xanh_d(num)
local Index = AddItem(0,10,7,10,0,0,0)  ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end

function HanHuyetLuaChon_xanh()
AskClientForNumber("HanHuyetLuaChon_xanh_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function HanHuyetLuaChon_xanh_d(num)
local Index = AddItem(0,10,18,10,0,0,0)  ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end

function PhiVanLuaChon()
AskClientForNumber("PhiVanLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function PhiVanLuaChon_d(num)
local Index = AddGoldItem(0,3940) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
function XichLongCauLuaChon()
AskClientForNumber("XichLongCauLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function XichLongCauLuaChon_d(num)
local Index = AddGoldItem(0,3941) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
function SuTuLuaChon()
AskClientForNumber("SuTuLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function SuTuLuaChon_d(num)
local Index = AddGoldItem(0,3942) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end

function BachHoLuaChon()
AskClientForNumber("BachHoLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function BachHoLuaChon_d(num)
local Index = AddGoldItem(0,3943) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
function DuongSaLuaChon()
AskClientForNumber("DuongSaLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function DuongSaLuaChon_d(num)
local Index = AddGoldItem(0,3944) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
function NguPhongLuaChon1()
AskClientForNumber("NguPhongLuaChon_d1",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function NguPhongLuaChon_d1(num)
local Index = AddGoldItem(0,3945) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
function HanHuyetLuaChon()
AskClientForNumber("HanHuyetLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function HanHuyetLuaChon_d(num)
local Index = AddGoldItem(0,3946) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
function HongMaoLuaChon()
AskClientForNumber("HongMaoLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function HongMaoLuaChon_d(num)
local Index = AddGoldItem(0,3948) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
function BachHoLyLuaChon()
AskClientForNumber("BachHoLyLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function BachHoLyLuaChon_d(num)
local Index = AddGoldItem(0,3947) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
----------------------------------------------------------------------
function TanNhamHa()
AskClientForNumber("TanNhamHa_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function TanNhamHa_d(num)
local Index = AddGoldItem(0,3960) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end

function TanNhamTrung()
AskClientForNumber("TanNhamTrung_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function TanNhamTrung_d(num)
local Index = AddGoldItem(0,3961) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end

function TanNhamThuong()
AskClientForNumber("TanNhamThuong_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function TanNhamThuong_d(num)
local Index = AddGoldItem(0,3962) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
----------------------------------------------------------------------
function ManhSuTheoNgay()
AskClientForNumber("ManhSuTheoNgay_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function ManhSuTheoNgay_d(num) 
for i=5995,6003 do
local Index = AddGoldItem(0,i) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
end

----------------------------------------------------------------------

function VuLietTheoNgay()
AskClientForNumber("VuLietTheoNgay_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function VuLietTheoNgay_d(num) 
for i=5981,5985 do
local Index = AddGoldItem(0,i) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
end
----------------------------------------------------------------------
function HacThanTheoNgay()
AskClientForNumber("HacThanTheoNgay_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function HacThanTheoNgay_d(num) 
for i=4013,4017 do
local Index = AddGoldItem(0,i) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
end
----------------------------------------------------------------------
function HacThanMoiTheoNgay()
AskClientForNumber("HacThanMoiTheoNgay_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function HacThanMoiTheoNgay_d(num)
if num==100 then
	for i=5988,5992 do
	local Index = AddGoldItem(0,i)
	end 
else
	for i=5988,5992 do
	local Index = AddGoldItem(0,i) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
	end
end
end
----
------------------------------------------------------------------
function VoCucDaiThanh()
AskClientForNumber("VoCucDaiThanh_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function VoCucDaiThanh_d(num)
local Index = AddGoldItem(0,5980) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end

----------------------------------------------------------------------
function CanKhonLuaChon()
AskClientForNumber("CanKhonLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function CanKhonLuaChon_d(num)
local Index = AddGoldItem(0,4134) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
----------------------------------------------------------------------
function CanKhonLuaChonMax()
AskClientForNumber("CanKhonLuaChonMax_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
end
function CanKhonLuaChonMax_d(num)
for i=1,5 do
local Index = AddGoldItem(0,5986) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
end
end

function NhanTinVatMonPhai()
local Index = AddItem(6,1,2340,1,0,0) SyncItem(Index)
end
function NhanTinVatMonPhai_d(num)
local Index = AddItem(6,1,4377,1,0,0) SyncItem(Index)
end
----------------------------------------------------------------------
function NhanNguyenLieuTest()
local tbList= {
		{"NhÉn 5000 B¸nh ®Ëu xanh",PhuongDo5000},
		{"NhÉn 5000 B¸nh Trung Thu heo quay",PhuongTim5000},
		{"NhÉn 5000 B¸nh ThËp CÈm",PhuongTrang5000},
}
CreateNewSayEx("<bclr=violet>Xin Mêi "..myplayersex().." Chän Chøc N¨ng CÇn Hç Trî<bclr>", tbList)
end
function PhuongDo5000()
local tbItem = {
	{szName="B¸nh ®Ëu xanh", tbProp={6,1,1510,1,0,0},nCount = 5000},
}
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
end
function PhuongTim5000()
local tbItem = {
	{szName="B¸nh Trung Thu heo quay", tbProp={6,1,1513,1,0,0},nCount = 5000},
}
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
end
function PhuongTrang5000()
local tbItem = {
	{szName="B¸nh ThËp CÈm", tbProp={6,1,1514,1,0,0},nCount = 5000},
}
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
end
function HHL5000()
local tbItem = {
	{szName="Hoa Ph­îng Tr¾ng", tbProp={6,1,2566,1,0,0},nCount = 5000},
}
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function AdminGame()
	for i = 1,getn(TENADMIN) do
		if GetName() == TENADMIN[i][1] and TENADMIN[i][2] == 99 then
		return 1
		end
	end
end

function ChucNang_Admin()
player = GetPlayerCount()
if AdminGame() == 1 then
CheckPassGM()
else
Say("<bclr=violet>ChØ Cã<bclr> <color=pink>Ban Qu¶n TrÞ <color><bclr=violet>Míi Cã QuyÒn Sö Dông Chøc N¨ng Nµy<bclr>")
end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CheckPassGM()
	if GetTaskTemp(57) == 1 then
		ChucNangGM()
	else
		AskClientForString("MOCHUCNANGGM","",1,999999999,"MK 19992000")
	end
end
function MOCHUCNANGGM(nVar)
	for i = 1,getn(CheckPassGMA) do
		if nVar == CheckPassGMA[i][1] then
			Talk(1,"ChucNangGM","<bclr=violet>Chóc Mõng "..myplayersex().." §· Më §­îc Chøc N¨ng Thµnh C«ng") SetTaskTemp(57,1)
		else
			Talk(1,"finish","<bclr=violet>"..myplayersex().." NhËp MËt KhÈu Kh«ng ChÝnh X¸c<bclr>")
		end
	end
end
function finish()
KickOutSelf()
end
------------------------------------------------------------------------------------------------------------------------------------------------
function ChucNangGM()
	local tbOpt = {
		{"NhËn Hç Trî Game",HoTroGameLuaChon},
		--{"Hñy VËt PhÈm",DisposeItem},
		{"Chøc N¨ng LÊy §å Theo ID",LayDoTheoID},
		{"LÊy VËt PhÈm.....", layvatpham},		
	--	{"Chøc N¨ng Bang Héi",BangHoi},
		{"Qu¶n Lý Gamer", thongtingamer},
		{"N©ng §iÓm Kinh NghiÖm", diemexp},
		{"NhËn §iÓm - Vßng S¸ng", hotro},
	--	{"Gäi Siªu Boss", CallBossad},
		--{"NhËn Trang BÞ", dohoangkim},
		--{"NhËn Trang BÞ Maxop", dohoangkimmax},
		{"Thó C­ìi - Ngo¹i Trang", fifong},
		{"Ta Muèn LÊy VËt PhÈm - Giíi ChØ", show_item},
		{"Thay §æi Tr¹ng Th¸i", trangthai},
	--	{"Më §ua Ngùa", MoDuaNgua},
		--{"Më Hoa S¬n Lo¹n ChiÕn", hosonloanchienttt},
		{"Admin BiÕn H×nh", AdminBienHinh},
		--{"Më Tiªu Bang ChiÕn", MoTieuBangChien},
		{"NhËn Skill", nhanskill},
		--{"Trang BÞ H¾c ThÇn - Long T­¬ng",TrangBiHiem},
		--{"LÊy Nguyªn LiÖu Kho¸ng Th¹ch",khoangth},
		{"Hoµng Kim M«n Ph¸i - §å Xanh - §å TÝm", hkmpdoxanh},
		{"Tho¸t",},
	}
	if GetAccount() == "testgame4" then
	--tinsert(tbOpt, 2, {"LÊy §å Theo ID", LayDoTheoID}) 
	--tinsert(tbOpt, 4, {"LÊy Xu", layxuadmin}) 
	--tinsert(tbOpt, 4, {"LÊy §å Test", laydotesst}) 
	end
	CreateNewSayEx("<bclr=violet>Xin Mêi "..myplayersex().." Chän Chøc N¨ng CÇn Hç Trî<bclr>", tbOpt)
end
function laydotesst()
for i=747,770 do
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,i,1,1,0,0},nCount=10,},}, "test", 1);
end
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,238,1,1,0,0},nCount=10,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,239,1,1,0,0},nCount=10,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,240,1,1,0,0},nCount=10,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={6,1,398,1,1},nCount=10,},}, "test", 1);
end
function layxuadmin()
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0,0},nCount=500,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0,0},nCount=500,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0,0},nCount=500,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0,0},nCount=500,},}, "test", 1);
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function AdminBienHinh()
AddMagicPoint(5000)
AddProp(40000)
AddStrg(10000);
AddDex(10000);
AddVit(10000);
AddEng(10000);

end
function MoDuaNgua()

Msg2SubWorld("<color=pink>§Êu Tr­êng §ua Ngùa<color=cyan> ®ang b¾t ®Çu nhËn b¸o danh. Quý nh©n sÜ h·y ®Õn <color=yellow>Nha M«n D­¬ng Ch©u<color=cyan> ®Ó b¸o danh thêi gian b¸o danh lµ <color=green>10<color> phót!")
startRaceMission()
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MoTieuBangChien()
local TimeForPreparing = 10
Msg2SubWorld("<color=pink>Tiªu Bang ChiÕn<color=cyan> ®ang b¾t ®Çu nhËn b¸o danh. Quý nh©n sÜ h·y ®Õn <color=yellow>Xa Phu Thµnh ThÞ <color=cyan> ®Ó b¸o danh")
m_TieuBangChien:m_RemoteStart(TimeForPreparing)
end
function hosonloanchienttt()
	local tbOpt = {
		{"Ta ThËt Sù Muèn Më", MoHoaSonLoanChien},

		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>X×n Mêi Anh L©m Ng¸o Chän Chøc N¨ng.", tbOpt)
end
function MoHoaSonLoanChien()

Msg2SubWorld("<color=pink>Hoa S¬n §¹i ChiÕn<color=cyan> ®ang b¾t ®Çu nhËn b¸o danh. Quý nh©n sÜ h·y ®Õn <color=yellow>Hoa S¬n L·o TÈu t¹i c¶nh kü tr­êng<color=cyan> ®Ó b¸o danh thêi gian b¸o danh lµ <color=green>10<color> phót!")
startHuaShanQunZhanMission()
end

function layvatpham()
	local tbOpt = {
		{"LÊy VËt PhÈm Magic", TaoItem},
		{"LÊy VËt PhÈm Queskey", TaoItemQK},
		{"LÊy VËt PhÈm Magic_han sd", TaoItemhsd},
		{"LÊy VËt PhÈm Goldequip..", Glodequip},
		{"Tho¸t",},
	}
	CreateNewSayEx("<npc>Xin Mêi Chän Chøc N¨ng", tbOpt)
end

function TaoItemhsd() 
g_AskClientStringEx("",1,9000,"NhËp Vµo Item Code:",{TaoItemID_hsd}) 
end


function TaoItemID_hsd(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 

	
	tbAwardTemplet:GiveAwardByList({{szName="VËt phÈm",tbProp={6,1,itclass,1,0,0,0},nCount=1,nExpiredTime=ittype*24*60},}, "test", 1);
	
	    logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..ittype.." item magic "..itclass.."",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function TaoItem() 
g_AskClientStringEx("",1,9000,"NhËp Vµo Item Code:",{TaoItemID}) 
end

function TaoItemID(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	if szICode[2]==nil then
		ittype=1
	end
	--AddItem(6,1,itclass,1,0,0,0);
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,itclass,1,0,0},nCount=ittype},}, "test", 1);
logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..ittype.." item magic "..itclass.."",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function TaoItemQK() 
g_AskClientStringEx("",1,9000,"NhËp Vµo Item Code:",{TaoItemIDQK}) 
end

function TaoItemIDQK(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	if szICode[2]==nil then
		ittype=1
	end
	--AddItem(6,1,itclass,1,0,0,0);
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={4,itclass,1,0,0},nCount=ittype},}, "test", 1);
logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..ittype.." item magic "..itclass.."",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function Glodequip() 
g_AskClientStringEx("",1,9000,"NhËp Vµo Glodequip Code:",{TaoItemGlodequip}) 
end
function TaoItemGlodequip(idgq)

Msg2Player("LÊy vËt phÈm thµnh c«ng.")
local szICode1 = lib:Split(idgq, ",");
	local itclass1 = szICode1[1]; 
	local ittype1 = szICode1[2]; 
--AddGoldItem(0, ""..itclass1.."") 
if ittype1~=nil then
local Index = AddGoldItem(0,itclass1) ITEM_SetExpiredTime(Index,ittype1*24*60) SyncItem(Index)
logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy item gold "..itclass1.." han "..ittype1.." ngay",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
else
local Index = AddGoldItem(0,itclass1)  SyncItem(Index)
logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy item gold "..itclass1.."",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end
--	local tbAward = {
--		{szName="Hoa Ph­îng TÝm",tbProp={0,"..itclass1.."},nQuality=1,nCount=1,nExpiredTime=24*60},
--	}
--	tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng GiftCode")



end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function thongtingamer() 
local nNam = tonumber(GetLocalDate("%Y")); 
local nThang = tonumber(GetLocalDate("%m")); 
local nNgay = tonumber(GetLocalDate("%d")); 
local nGio = tonumber(GetLocalDate("%H")); 
local nPhut = tonumber(GetLocalDate("%M")); 
local nGiay = tonumber(GetLocalDate("%S")); 
local nW, nX, nY = GetWorldPos() 
local nIdPlay = PlayerIndex 
local tbSay = {}
	tinsert(tbSay,"ADM Move=>CTC.../vitri_congthanh")
	--tinsert(tbSay,"Th«ng tin ng­êi ch¬i./Show")
--	tinsert(tbSay,"Thao t¸c lªn ng­êi ch¬i./luachonid1")
	tinsert(tbSay,"Thao t¸c lªn ng­êi ch¬i - NhËp ID/luachonid1")
	tinsert(tbSay,"Thao t¸c lªn ng­êi ch¬i - NhËp Tªn NhËn VËt/luachonid2")
	tinsert(tbSay,"Thao t¸c lªn ng­êi ch¬i - NhËp Tµi Kho¶n/luachonid3")
--	tinsert(tbSay,"HÖ Thèng Pet/Pet")
	tinsert(tbSay,"LÊy Täa §é/toado1")
	tinsert(tbSay,"Th«ng B¸o B¶o Tr×/OnTimer")
	--tinsert(tbSay,"LÊy ID Vßng S¸ng/kiemtra_spr")
	tinsert(tbSay,"Chat ADM....!/GmNhapTinBao")
--	tinsert(tbSay,"Chat GM....!/Gm")
	tinsert(tbSay,"Tho¸t/no")
	tinsert(tbSay,"Trë l¹i")
	Say("Xin Chµo <color=red>"..GetName().."<color>!\nTäa ®é hiÖn t¹i: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color> \n<color>Index:           <color=green>"..nIdPlay.."<color>\nSè SHXT: <color=green>        "..GetTask(T_SonHaXaTac).."<color> m¶nh.\nHiÖn §ang Cã:    <bclr=red><color=yellow>["..GetPlayerCount().."]<color><bclr> ng­êi ch¬i trong game.\n", getn(tbSay), tbSay)
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function GmNhapTinBao()
--	tbAwardTemplet:GiveAwardByList({{szName="Phiªn Vò Hoµng Kim",tbProp={0,4367},nCount=1,nQuality=1},}, "test", 1);
	AskClientForString("nhapguitanso", "", 1, 200, "NhËp th«ng b¸o")
end

function nhapguitanso(strings)
	local szNews = format("<bclr=violet>Th«ng B¸o:<color=green>"..strings.."");
for i = 1, 5 do
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end 
end
function vitri_congthanh()
local tab_Content = {
		"Vµo Tï/goto_nha_tu",
		"L©m An/goto_lam_an",
		"BiÖn Kinh/goto_bien_kinh",		
		"Thµnh §«/goto_thanh_do",
		"T­¬ng D­¬ng/goto_tuong_duong",
		"Ph­îng T­êng/goto_phuong_tuong",
		"D­¬ng Ch©u/goto_duong_chau",
		"§¹i Lý/goto_dai_ly",
		"Ba L¨ng HuyÖn/goto_ba_lang",
		"§ua Ngùa/goto_dua_ngua",	
		"Tèng - Kim/goto_tong_kim",	
		"Loi dai/goto_loidai",
		"Lien dau/goto_liendau",
		"Tong -Kim/goto_tongkim",
		"NguyÖt Ca §¶o/goto_ca_dao",
		"KÕt thóc..!/No"
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end
---------------------------------------------------------------------------------------------------
function goto_dua_ngua()
local tbDialog = { 
"<dec><npc>Di chuyÓn ®Õn täa ®é cÇn ®Õn?<color>", 
"Ba L¨ng HuyÖn 1x/xem_blh1",
"Ba L¨ng HuyÖn 2 /xem_blh2",
"VÜnh L¹c TrÊn 1 /xem_vlt1",
"VÜnh L¹c TrÊn 2 /xem_vlt2",
"Long M«n TrÊn 1 /xem_lmt1",
"Long M«n TrÊn 2 /xem_lmt2",
"Chu Tiªn TrÊn 1 /xem_ctt1",
"Chu Tiªn TrÊn 2 x /xem_ctt2",
"Trang tiÕp theo /xem_tt_n",
"KÕt thóc ®èi tho¹i /No", 
} 
CreateTaskSay(tbDialog) 
end
--------------------------------------------------------------------------------------
function xem_tt_n()
local tbDialog = { 
"<dec><npc>Di chuyÓn ®Õn täa ®é cÇn ®Õn<color>", 
"§¹o H­ng Th«n 1 /xem_dht1",
"§¹o H­ng Th«n 2 /xem_dht2",
"Long TuyÒn Th«n 1 /xem_ltt1",
"Long TuyÒn Th«n 2 x /xem_ltt2",
"Giang T©n Th«n 1 /xem_gtt1",
"Giang T©n Th«n 2 /xem_gtt2",
"Th¹ch Cæ TrÊn1 /xem_tct1",
"Th¹ch Cæ TrÊn1 /xem_tc2",
"KÕt thóc ®èi tho¹i /No", 
} 
CreateTaskSay(tbDialog) 
end
-----------------------------------------------------------------------------
function goto_nha_tu()----------
SetFightState(0)
	DisabledUseTownP(0);
NewWorld(208,1785,3058)
end
function goto_tong_kim()----------
NewWorld(900,180*8,208*16)
end
function xem_blh1()----------
NewWorld(53,220*8,200*16)
end
function xem_blh2()----------
NewWorld(53,207*8,182*16)
end
function xem_vlt1()----------
NewWorld(99,189*8,223*16)
end
function xem_vlt2()----------
NewWorld(99,224*8,206*16)
end
function xem_lmt1()----------
NewWorld(121,226*8,275*16)
end
function xem_lmt2()----------
NewWorld(121,276*8,282*16)
end
function xem_ctt1()----------
NewWorld(100,183*8,203*16)
end
function xem_ctt2()----------
NewWorld(100,229*8,190*16)
end
function xem_dht1()----------
NewWorld(101,171*8,198*16)
end
function xem_dht2()----------
NewWorld(101,232*8,205*16)
end
function xem_ltt1()----------
NewWorld(174,218*8,192*16)
end
function xem_ltt2()----------
NewWorld(174,183*8,211*16)
end
function xem_gtt1()----------
NewWorld(20,432*8,359*16)
end
function xem_gtt2()----------
NewWorld(20,438*8,396*16)
end
function xem_tct1()----------
NewWorld(153,232*8,180*16)
end
function xem_tct2()----------
NewWorld(153,189*8,223*16)
end
-------------------------------------------------------------------------------------
function goto_lam_an()
SetFightState(1)
NewWorld(930,1750,3394)
end
function goto_bien_kinh()
SetFightState(1)
NewWorld(927,1749,3388)
end
function goto_thanh_do()
SetFightState(1)
NewWorld(926,1712,3300)
end
function goto_tuong_duong()
SetFightState(1)
NewWorld(931,1710,3303)
end
function goto_phuong_tuong()
SetFightState(1)
NewWorld(929,1764,3513)
end
function goto_duong_chau()
SetFightState(1)
NewWorld(932,1728,3302)
end
function goto_dai_ly()
SetFightState(1)
NewWorld(928,1727,3295)
end
function goto_ba_lang()
SetFightState(0)
NewWorld(53,1598,3191)
end
function goto_loidai()
SetFightState(0)
NewWorld(209,1612,3197)
end
function goto_tongkim()
SetFightState(0)
NewWorld(380,1568,3195)
end
function goto_liendau()
SetFightState(0)
NewWorld(380,1568,3195)
end

function goto_ca_dao()
SetFightState(1)
NewWorld(968,1586,3172)
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Show() 
AskClientForNumber("ShowRoom",1,1180,"NhËp Sè ID Ng­¬i Ch¬i") 
end 

function ShowRoom(num) 
local nNum = num + 100
	for i = num,nNum do 
		gmidx = PlayerIndex
		PlayerIndex = i
		TarName = GetName()
		nExp = GetExp()
		nCurLevel = 0
		if (TarName > "") then
		nCurLevel = GetLevel()
		end
		PlayerIndex = gmidx 
		Msg2Player("Sè ID: <color=green>"..i.."<color> - Tªn: <color=green>"..TarName.."<color> - CÊp: <color=green>"..nCurLevel.."<color> - Kinh NghiÖm: <color=green>"..nExp.."<color>"); 
	end 
end
-----------------------------------------------------------------Chän Chøc N¨ng GM------------------------------------------------------------------
function luachonid1() 
	AskClientForNumber("one",0,5000,"NhËp ID ng­êi ch¬i") 
end 

function one(num) 
	if ((num) > GetPlayerCount()) then 
		Msg2Player("Kh«ng cã nh©n vËt víi ID: <color=green>"..num.."<color> ®­îc chän !!"); 
	else 
		SetTaskTemp(200,num) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1) 
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		ObjAccount=GetAccount() 
		PlayerIndex=gmidx 
		Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color>"); 
		local tbSay =  {}
		--tinsert(tbSay,"Thªm Vßng S¸ng Lùa Chän/ChonVongSangBuff")
		tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDo")
		tinsert(tbSay,"N©ng Kinh NghiÖm Nh©n VËt/KinhNghiem")
	--	tinsert(tbSay,"Add Danh HiÖu Fan Cøng/DanhHieuFanCung")
		tinsert(tbSay,"Thªm Kim Nguyªn B¶o/AddKNB")
		tinsert(tbSay,"ChuyÓn Kho¶n Kim Nguyªn B¶o/ChuyenKhoan")
	--	tinsert(tbSay,"ChuyÓn Kho¶n (Kh«ng KNB)/ChuyenKhoanKhongKNB")
		tinsert(tbSay,"Hç Trî Live Stream/HoTroTanThuMoi")
	--	tinsert(tbSay,"Hç Trî T©n Thñ Trïng Sinh 5/NhanHoTroTrungSinh3")
	--	tinsert(tbSay,"Add Vip ( Mçi NV chØ nªn add 1 lÇn )/AddDiemVip")
	--	tinsert(tbSay,"Xãa Th«ng Tin Vip/XoaDiemVip")
	--	tinsert(tbSay,"Fix Vßng S¸ng ChuyÓn Sinh /FixVongSangChuyenSinh")
	--	tinsert(tbSay,"Thªm Vßng S¸ng ChuyÓn Sinh /ThemVongSangChuyenSinh")
	--	tinsert(tbSay,"N©ng Lªn Danh HiÖu Vip 6/NangDanhHieu6")
--		tinsert(tbSay,"Hç Trî Reset Event VÒ 0/HoTroMocEvent0")
--tinsert(tbSay,"Hç Trî Reset Event VÒ 2k/HoTroMocEvent2k")
	--	tinsert(tbSay,"Hç Trî Reset Event VÒ 4k/HoTroMocEvent4k")
		--tinsert(tbSay,"Hæ Trî KNB/AddKNB")
	--	tinsert(tbSay,"Hæ trî tiÒn ®ång./bufskillsgm1")
	--	tinsert(tbSay,"Hæ trî tiÒn v¹n./themtienvan1")
		tinsert(tbSay,"Di chuyÓn nh©n vËt vÒ BLH./move")
	--	tinsert(tbSay,"Add ®iÓm cho ng­êi ch¬i../kynang")
	--	tinsert(tbSay,"Më Chøc N¨ng Hç Trî Ng­êi Ch¬i/MoChucNang")
		tinsert(tbSay,"KÝch nh©n vËt./kicknv")
		tinsert(tbSay,"CÊm Ch¸t./camchat")
		tinsert(tbSay,"Më Ch¸t./mochat")
		tinsert(tbSay,"Tho¸t./no")
		tinsert(tbSay,"Trë l¹i.")            
		Say("Tµi Kho¶n:<color=green> "..tk.."<color> - Nh©n VËt   :<color=green> "..ObjName.."<color>\nCÊp ®é   :<color=green> "..lev.."<color>           - Kinh nghiÖm: <color=green>"..xp.."%<color>\nMµu      :<color=green> "..cam.."<color>             - M«n ph¸i   :<color=green>"..fac.."<color>\nTiÒn V¹n :<color=green> "..(cash/10000).." v¹n<color> - TiÒn §ång  :<color=green>"..lif.." ®ång<color>\nVÞ trÝ   : <color=blue>"..w.."<color>,<color=green>"..x.."<color>,<color=green>"..y.."<color>", getn(tbSay), tbSay)
		Msg2Player("Ng­êi ch¬i <color=cyan>"..xinxi) 
	end 
end
-----------------------------------------------------------------------Tim Theo Ten Nhan Vat-----------------------------------------------------------------------------------------------------
function luachonid2() 
	AskClientForString("TenNhanVat", "", 0,5000,"Tªn Nh©n VËt") 
end 

function TenNhanVat(nNameChar) 
local nNum = GetPlayerCount()
for i = 1, nNum+500 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetName()
		PlayerIndex=gmidx
--	if ((i)> GetPlayerCount()) then
--		Msg2Player("Nh©n vËt Nµy HiÖn Kh«ng Online Vui Lßng Quay L¹i Sau...!");  
--	else
	if TarName == nNameChar then
		SetTaskTemp(200,i) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1)
		nTienDong=CalcEquiproomItemCount(4,417,1,1)
		nDiemVip=GetTask(5991)
		nTransLife=ST_GetTransLifeCount()
		CaiLao=GetTask(5971)
		DiemPhucLoi=GetTask(5994)
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		viemde=YDBZ_sdl_getTaskByte(1852,2)
		vuotai=1-GetTask(1550)
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		ObjAccount=GetAccount() 
		PlayerIndex=gmidx 
		Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
	--	tinsert(tbSay,"Thªm Vßng S¸ng Lùa Chän/ChonVongSangBuff")
			tinsert(tbSay,"§­a Nh©n VËt Vµo Tï/DuaVaoTu")
			tinsert(tbSay,"§­a Nh©n VËt Lªn NguyÖt Ca §¶o/dualennguyetcadao")
		tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDo")
		tinsert(tbSay,"N©ng Kinh NghiÖm Nh©n VËt/KinhNghiem")
		
	--	tinsert(tbSay,"Add Danh HiÖu Fan Cøng/DanhHieuFanCung")
		tinsert(tbSay,"Thªm Kim Nguyªn B¶o/AddKNB")
	tinsert(tbSay,"Trõ Kim Nguyªn B¶o Add NhÇm/LayKNB")
	tinsert(tbSay,"Trõ §iÓm TiÒm N¨ng/DanhHieuFanCung")
		tinsert(tbSay,"Trõ §iÓm Kü N¨ng/DanhHieuFanCung2")
	tinsert(tbSay,"Xo¸ Pass R­¬ng/mokhoapassruong")
--	tinsert(tbSay,"Buff Thiªn H¹ §Ö NhÊt Sña/thienhadenhatsua")
--	tinsert(tbSay,"Ph¸t Th­ëng Vâ L©m Minh Chñ/thuongvolamminhchu")
	--	tinsert(tbSay,"ChuyÓn Kho¶n (Kh«ng KNB)/ChuyenKhoanKhongKNB")
	--	tinsert(tbSay,"Hç Trî Live Stream/HoTroTanThuMoi")
		--tinsert(tbSay,"Hç Trî T©n Thñ Trïng Sinh 5/NhanHoTroTrungSinh3")
	--	tinsert(tbSay,"Add Vip ( Mçi NV chØ nªn add 1 lÇn )/AddDiemVip")
	--	tinsert(tbSay,"Xãa Th«ng Tin Vip/XoaDiemVip")
	--	tinsert(tbSay,"Fix Vßng S¸ng ChuyÓn Sinh /FixVongSangChuyenSinh")
	--	tinsert(tbSay,"Thªm Vßng S¸ng ChuyÓn Sinh /ThemVongSangChuyenSinh")
		tinsert(tbSay,"Di chuyÓn nh©n vËt vÒ BLH./move")
--		tinsert(tbSay,"Më Chøc N¨ng Hç Trî Ng­êi Ch¬i/MoChucNang")
		--tinsert(tbSay,"Top 1 tèng kim./top1tongkim")
	--	tinsert(tbSay,"Top 2 tèng kim./top2tongkim")
	--	tinsert(tbSay,"Top 3 tèng kim./top3tongkim")
		tinsert(tbSay,"KÝch nh©n vËt./kicknv")
		tinsert(tbSay,"CÊm Ch¸t./camchat")
		tinsert(tbSay,"Më Ch¸t./mochat")
		--tinsert(tbSay,"Qu¶n Lý Chøc N¨ng Kh¸c./AddKNB_FullHD")
		tinsert(tbSay,"Tho¸t./no")
		tinsert(tbSay,"Trë l¹i.")            
		Say("<color=green>Tµi Kho¶n: "..tk.." - Nh©n VËt: "..ObjName.."\nCÊp ®é: "..lev.." - Kinh nghiÖm: "..xp.."\nMµu: "..cam.." - M«n ph¸i: "..fac.."\nNg©n L­îng: "..(cash/10000).." v¹n - Kim Nguyªn B¶o: "..lif.." Viªn\nVÞ trÝ: "..w..","..x..","..y.." - TiÒn §ång: "..nTienDong.." Xu\nVip: "..nDiemVip.." §iÓm - Trïng Sinh: "..nTransLife.."/"..CaiLao.." LÇn\n §iÓm Tèng Kim: "..pr.." §iÓm - IP : <color=yellow>"..GetIP().."<color> ", getn(tbSay), tbSay)
		return end
--	end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh«ng t×m thÊy nh©n vËt tªn <color=green>"..nNameChar.."<color>"); 
	end
end
function top1tongkim()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
local Index = AddItem(4,1326,1,1,0,0) SyncItem(Index)
PlayerIndex=gmidx 
Msg2Player("NhËn §iÓm Kü N¨ng"); 
end

function top2tongkim()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
tbAwardTemplet:GiveAwardByList({{szName="B«n Tiªu",tbProp={0,10,6,10,0,0,0},nCount=1,nExpiredTime=1*22*60},}, "test", 1);
PlayerFunLib:AddSkillState(1644,20,3,18*60*60*22*1,1)
PlayerFunLib:AddSkillState(1663,20,3,18*60*60*22*1,1)
PlayerIndex=gmidx 
Msg2Player("NhËn §iÓm Kü N¨ng"); 
end
function top3tongkim()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
PlayerFunLib:AddSkillState(1645,20,3,18*60*60*23*1,1)
PlayerFunLib:AddSkillState(1662,20,3,18*60*60*23*1,1)
PlayerIndex=gmidx 
Msg2Player("NhËn §iÓm Kü N¨ng"); 
end
-----------------------------------------------------------------------Tim Theo Ten Tai Khoan------------------------------------------------------------------------------------------------------------------------
function luachonid3() 
	AskClientForString("TenTaiKhoan", "", 0,5000,"Tªn Tµi Kho¶n") 
end 

function TenTaiKhoan(nNameChar) 
local nNum = GetPlayerCount()
for i = 1, nNum+500 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetAccount()
		PlayerIndex=gmidx
--	if ((i)> GetPlayerCount()) then
	--	Msg2Player("Nh©n vËt Nµy HiÖn Kh«ng Online Vui Lßng Quay L¹i Sau...!");  
--	else
	if TarName == nNameChar then
		SetTaskTemp(200,i) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1)
		nTienDong=CalcEquiproomItemCount(4,417,1,1)
		nDiemVip=GetTask(5991)
		nTransLife=ST_GetTransLifeCount()
		CaiLao=GetTask(5971)
		DiemPhucLoi=GetTask(5994)
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		ObjAccount=GetAccount() 
		PlayerIndex=gmidx 
		Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
	--	tinsert(tbSay,"Thªm Vßng S¸ng Lùa Chän/ChonVongSangBuff")
		tinsert(tbSay,"§­a Nh©n VËt Vµo Tï/DuaVaoTu")
		tinsert(tbSay,"§­a Nh©n VËt Lªn NguyÖt Ca §¶o/dualennguyetcadao")
		tinsert(tbSay,"N©ng Kinh NghiÖm Nh©n VËt/KinhNghiem")
		tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDo")
		
		--	tinsert(tbSay,"Hµnh Qu©n LÖnh/HanhQuanLenh")
		tinsert(tbSay,"Thªm Kim Nguyªn B¶o/AddKNB")
		tinsert(tbSay,"Trõ Kim Nguyªn B¶o Add NhÇm/LayKNB")
		tinsert(tbSay,"Xo¸ Pass R­¬ng/mokhoapassruong")
		tinsert(tbSay,"Trõ §iÓm TiÒm N¨ng/DanhHieuFanCung")
		tinsert(tbSay,"Trõ §iÓm Kü N¨ng/DanhHieuFanCung2")
	--	tinsert(tbSay,"Buff Thiªn H¹ §Ö NhÊt Sña/thienhadenhatsua")
	--	tinsert(tbSay,"Chøc N¨ng ChuyÓn Kho¶n/ChuyenKhoan")
		--tinsert(tbSay,"ChuyÓn Kho¶n (Kh«ng KNB)/ChuyenKhoanKhongKNB")
	--	tinsert(tbSay,"Hç Trî Live Stream/HoTroTanThuMoi")
	--	tinsert(tbSay,"Buff Accc AD/HoTroTanThuMoi2")
	--	tinsert(tbSay,"Ph¸t Tói Tèng Kim/HoTroTuiTongKim")
	--	tinsert(tbSay,"Ph¸t Th­ëng Vâ L©m Minh Chñ/thuongvolamminhchu")
	--	tinsert(tbSay,"Test Full Acc/NhanHoTroTrungSinh3")
	if GetAccount()=="kimluyen2002" then
		tinsert(tbSay,"Add Vip ( Mçi NV chØ nªn add 1 lÇn )/AddDiemVip")
	--	tinsert(tbSay,"Add 3000 Xu/addtiendong")
		
	end
	--	tinsert(tbSay,"Xãa Th«ng Tin Vip/XoaDiemVip")
	--	tinsert(tbSay,"NhËn Vßng S¸ng/DanhHieuBuff")
	---	tinsert(tbSay,"Fix Vßng S¸ng ChuyÓn Sinh /FixVongSangChuyenSinh")
		--tinsert(tbSay,"Thªm Vßng S¸ng ChuyÓn Sinh /ThemVongSangChuyenSinh")
		tinsert(tbSay,"Di chuyÓn nh©n vËt vÒ BLH./move")
	--	tinsert(tbSay,"Add ®iÓm cho ng­êi ch¬i../buffpoint")
	--	tinsert(tbSay,"Më Chøc N¨ng Hç Trî Ng­êi Ch¬i/pointkynang11")
		--tinsert(tbSay,"Top 1 tèng kim./top1tongkim")
	---	tinsert(tbSay,"Top 2 tèng kim./top2tongkim")
	--	tinsert(tbSay,"Top 3 tèng kim./top3tongkim")
		tinsert(tbSay,"KÝch nh©n vËt./kicknv")
		tinsert(tbSay,"CÊm Ch¸t./camchat")
		tinsert(tbSay,"Më Ch¸t./mochat")
	--	tinsert(tbSay,"Qu¶n Lý Chøc N¨ng Kh¸c./AddKNB_FullHD")
		tinsert(tbSay,"Tho¸t./no")
		tinsert(tbSay,"Trë l¹i.")            
		Say("<color=green>Tµi Kho¶n: "..tk.." - Nh©n VËt: "..ObjName.."\nCÊp ®é: "..lev.." - Kinh nghiÖm: "..xp.."\nMµu: "..cam.." - M«n ph¸i: "..fac.."\nNg©n L­îng: "..(cash/10000).." v¹n - Kim Nguyªn B¶o: "..lif.." Viªn\nVÞ trÝ: "..w..","..x..","..y.." - TiÒn §ång: "..nTienDong.." Xu\nVip: "..nDiemVip.." §iÓm - Trïng Sinh: "..nTransLife.."/"..CaiLao.." LÇn\n §iÓm Tèng Kim: "..pr.." §iÓm - IP : <color=yellow>"..GetIP().."<color> ", getn(tbSay), tbSay)
		return end
	--end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh«ng t×m thÊy tµi kho¶n: <color=green>"..nNameChar.."<color>"); 
	end
end --------------------------0-LÊt TiÒn V¹n--------------------------------------------
Include("\\script\\missions\\yandibaozang\\include.lua")
function thienhadenhatsua()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
RemoveSkillState(980,20,3,559872000,1) 
RemoveSkillState(966,20,3,559872000,1) 
--Msg2Player("B¹n ®· ®­îc ADMIN §Ñp Trai phong cho danh hiÖu Thiªn h¹ §Ö NhÊt Sña"); 
PlayerIndex=gmidx 
Msg2Player("§· add thµnh c«ng"); 
end
function thuongvolamminhchu()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
PlayerFunLib:AddSkillState(1673,20,3,18*60*60*24*30,1)
PlayerFunLib:AddSkillState(1665,20,3,18*60*60*24*30,1)

Msg2Player("B¹n ®· ®­îc ADMIN §Ñp Trai ph¸t th­ëng Vâ L©m Minh Chñ"); 
PlayerIndex=gmidx 
Msg2Player("§· add thµnh c«ng"); 
end
function mokhoapassruong()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
ResetBox:ConfirmResetBox()
Msg2Player("B¹n ®· ®­îc ADMIN §Ñp Trai xo¸ pass r­¬ng"); 
PlayerIndex=gmidx 
Msg2Player("§· më kho¸ thµnh c«ng"); 
end
function addtiendong()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
for i=1,6 do
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1},nCount=500}}, "test", 1);
end
PlayerIndex=gmidx 
--Msg2Player("NhËn §iÓm Kü N¨ng"); 
end
function DanhHieuFanCung()

AskClientForNumber("DanhHieuFanCung_d",0,100000,"NhËp Sè L­îng:") 
end
function DanhHieuFanCung_d(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
AddProp(-num)
PlayerIndex=gmidx 
Msg2Player("NhËn §iÓm TiÒm N¨ng"); 
end
function DanhHieuFanCung2()

AskClientForNumber("DanhHieuFanCung2_d",0,100000,"NhËp Sè L­îng:") 
end
function DanhHieuFanCung2_d(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
AddMagicPoint(-num)
PlayerIndex=gmidx 
Msg2Player("NhËn §iÓm Kü N¨ng"); 
end
function HoTroTuiTongKim()

AskClientForNumber("HoTroTuiTongKim_ok",0,100000,"NhËp Sè L­îng:") 
end
function HoTroTuiTongKim_ok(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
tbAwardTemplet:GiveAwardByList({{szName = "Tói tÝch lòy Tèng Kim",tbProp={6,1,4361,1,1},nCount=num,nExpiredTime=1*24*60,nBindState = -2}}, "test", 1);
PlayerIndex=gmidx 
Msg2Player("NhËn §iÓm Kü N¨ng"); 
end

--------------------------------------------
function HanhQuanLenh()

AskClientForNumber("HanhQuanLenh_d",0,100000,"NhËp Sè L­îng:") 
end
function HanhQuanLenh_d(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
tbAwardTemplet:GiveAwardByList({{szName = "Hµnh Qu©n LÖnh",tbProp={6,1,30395,1,1},nCount=1,nExpiredTime=num*24*60,nBindState = -2}}, "test", 1);
PlayerIndex=gmidx 
Msg2Player("NhËn §iÓm Kü N¨ng"); 
end


--------------------------0-LÊt TiÒn V¹n--------------------------------------------
function pointkynang11()
AskClientForNumber("pointkynang12",0,100000,"NhËp Sè L­îng:") 
end;
function pointkynang12(nNum)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
AddMagicPoint(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Kü N¨ng...!<color>")
PlayerIndex=gmidx 
Msg2Player("NhËn §iÓm Kü N¨ng"); 
end
function ChonVongSangBuff0()
AskClientForNumber("ChonVongSang_d",1,10000,"NhËp Sè Ngµy Muèn LÊy") 
end

function ChonVongSang_d(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
--for num,10 do
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(num, 2, nTime)
Title_ActiveTitle(num)
SetTask(1122,num)
Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
end
---------------------------LÊt TiÒn V¹n--------------------------------------------
function vlmc12()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
n_title = 188 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
Msg2Player("NhËn Vßng S¸ng Vâ L©m Minh Chñ  Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("NhËn Vßng S¸ng Vâ L©m Minh Chñ  Thµnh C«ng"); 
end

function HoTroMocEvent0()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetTask(HOAPHUONGTRANG,0)
SetTask(NHANTHUONGMOC,0)
Msg2Player(""..GetTask(HOAPHUONGTRANG).."");
Msg2Player(""..GetTask(NHANTHUONGMOC).."");
Msg2Player("Hç Trî Reset Mèc Event Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("Hç Trî Reset Mèc Event Thµnh C«ng"); 
end
function HoTroMocEvent2k()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetTask(HOAPHUONGTRANG,2000)
SetTask(NHANTHUONGMOC,0)
Msg2Player(""..GetTask(HOAPHUONGTRANG).."");
Msg2Player(""..GetTask(NHANTHUONGMOC).."");
Msg2Player("Hç Trî Reset Mèc Event Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("Hç Trî Reset Mèc Event Thµnh C«ng"); 
end
function HoTroMocEvent4k()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetTask(HOAPHUONGTRANG,4000)
SetTask(NHANTHUONGMOC,1)
Msg2Player(""..GetTask(HOAPHUONGTRANG).."");
Msg2Player(""..GetTask(NHANTHUONGMOC).."");
Msg2Player("Hç Trî Reset Mèc Event Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("Hç Trî Reset Mèc Event Thµnh C«ng"); 
end
function themtienvan1() 
AskClientForNumber("themtienvan",0,999999999,"NhËp sè tiÒn cÇn chuyÓn") 
end 
function themtienvan(num) 
nNum = num/999999999 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..nNum.."<color> V¹n L­îng Thµnh C«ng")
Earn(num) 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Trao TÆng <color=metal>"..nNum.."<color> V¹n L­îng Thµnh C«ng"); 
end
-----------------------LÊy KNB---------------------------------------
function AddKNB11() 
AskClientForNumber("buffknbgm",0,5000,"Sã L­îng KNB") 
end 
function buffknbgm(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> Kim Nguyªn B¶o Thµnh C«ng");
AddExtPoint(1,num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Trao TÆng <color=metal>"..num.."<color> Kim Nguyªn B¶o Thµnh C«ng"); 
end;
---------------------------LÊy TiÒn §ång---------------------------------------------------
function bufskillsgm1() 
AskClientForNumber("buffskillsgm",0,5000,"sè l­îng tiÒn ®ång") 
end 
function buffskillsgm(num) 

gmidx=PlayerIndex 
luu1=GetName()
luu2=GetAccount()
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng"); 
AddStackItem(num,4,417,1,1,0,0) 
PlayerIndex=gmidx 
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." "..num.." Xu\n");
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Trao TÆng <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng"); 
end;
----------------------------T¨ng §iÓm------------------------------------------------------------
function buffpoint() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· T¨ng §iÓm Theo Yªu CÇu"); 


PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM T¨ng §iÓm Theo Yªu CÇu Thµnh C«ng"); 
end; 
--------------------------------------------------dua vao tu---------------------------------------
function DuaVaoTu()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· §­a B¹n Vµo Tï"); 

NewWorld(968,1586,3172)
SetTask(3907,1)
SetFightState(0)
	DisabledUseTownP(0);
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM §­a vµo Tï Thµnh C«ng"); 
Msg2SubWorld("Nh©n vËt <color=green>"..ObjName.."<color> Vi Ph¹m Néi Qui. BÞ GM Cho ¡n C¬m Tï FREE.")
end; 

function dualennguyetcadao()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 

NewWorld(968,1574,3174)
SetFightState(0)
	DisabledUseTownP(0);
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM §­a vµo Tï Thµnh C«ng"); 
end
-----------------------------------------------------------------------------------------
function KinhNghiem() 
AskClientForNumber("KinhNghiem_ok",1,999999999,"NhËp Kinh NghiÖm") 
end 
function KinhNghiem_ok(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· §iÒu ChØnh <color=metal>"..num.."<color> Kinh NghiÖm Cho B¹n"); 
tbAwardTemplet:GiveAwardByList({{nExp_tl = num}}, "test", 1);
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §îc GM T¨ng <color=metal>"..num.."<color> Kinh NghiÖm Thµnh C«ng"); 
end; 
function CapDo() 
AskClientForNumber("Level",0,200,"NhËp CÊp §é") 
end 
function Level(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· §iÒu ChØnh <color=metal>"..num.."<color> CÊp §é Cho B¹n"); 
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..num.."<color> cÊp §é") 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §îc GM T¨ng <color=metal>"..num.."<color> CÊp §é Thµnh C«ng"); 
end; 
--------------------------VÒ Ba L¨ng HuyÖn-------------------------------------------------
function move() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
w,x,y=GetWorldPos() 
if (w~=53) then 
SetFightState(0) 
NewWorld(53,200*8,200*16) 
SetTask(3907,0)
SetCreateTeam(1)
else 
SetPos(1630, 3255) 
SetTask(3907,0)
SetCreateTeam(1)
end 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Di ChuyÓn B¹n VÒ Ba L¨ng HuyÖn"); 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> ®­îc GM Di ChuyÓn VÒ Ba L¨ng HuyÖn Thµnh C«ng"); 
end 
--------------------------------------------------------------------
function kicknv() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· KÝch Nh©n VËt Chèng KÑt Acc Thµnh C«ng"); 
KickOutSelf() 
IsDisabledTeam()
SetCreateTeam(1)
--DisabledUseTownP(1)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM KÝch kÑt Tµi Kho¶n Thµnh C«ng"); 
end; 
---------------------------Më Chøc N¨ng Cho Ng­êi Ch¬i Kh¸c---------------------------------
function MoChucNang() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)  
ChucNangGM()
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §· Trao QuyÒn H¹n Cho B¹n H·y Lùa Chän Chøc N¨ng"); 
end;
------------------------------------------------------------------------------
function camchat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(1) 
Msg2Player("B¹n bÞ khãa Ch¸t trªn mäi tÇn sè") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh©n VËt:<color=red> "..ObjName.."<color> §· BÞ CÊm Chat Trªn Mäi TÇn Sè !",1) 
end 
----------------------------------------------------------------------------------
function mochat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(0) 
Msg2Player("B¹n ®­îc më khãa Ch¸t trªn mäi tÇn sè") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh©n VËt:<color=green> "..ObjName.."<color> §­îc Më Chat Trªn Mäi TÇn Sè !",1)  
end
-------------------------------LÊy Täa §é-----------------------------------------
function toado1() 
local w,x,y = GetWorldPos(); 
Msg2Player("M¸p sè <color=Green>"..w.."<color> täa ®é <color=Yellow>"..x..", "..y) 
Msg2Player("M¸p sè <color=Green>"..w.."<color> täa ®é <color=Yellow>"..floor(x/32)..", "..floor(y/32)) 
end
--------------------------------------------Ch¸t Admin----------------------------------------------------------------------
function Admin()
AskClientForString("MsgGlbByAM","",1,9999999,"AM:Mêi nhËp néi dung!")
end

function MsgGlbByAM(zVar)
local IsString = tonumber(zVar)
if IsString then
Talk(1,"MsgGlbAM_Input","NhËp néi dung.!!")
return
end
local MapId
if (zVar == "reset") then
for i=1,GetPlayerCount() do
PlayerIndex = i
MapId,_,_ = GetWorldPos()
if (MapId > 0) then
KickOutSelf()
end
end
end
for i=1,3 do
Msg2SubWorld("<bclr=white>ADMIN: <bclr><color=violet>"..zVar.."")
end
AddGlobalCountNews(" ADMIN Xin Th«ng B¸o §Õn C¸c Nh©n SÜ <bclr=blue>Vâ L©m TruyÒn Kú H·y L¾ng Nghe Th«ng B¸o Víi Néi Dung Nh­ Sau: "..zVar.."<bclr>")
end
---------------------------------------------Ch¸t GM-----------------------------------------------------------
function Gm()
AskClientForString("MsgGlbByGM","",1,9999999,"GM:Mêi nhËp néi dung!")
end
function MsgGlbByGM(zVar)
local IsString = tonumber(zVar)
if IsString then
Talk(1,"MsgGlbGM_Input","NhËp néi dung.!!")
return
end
local MapId
if (zVar == "reset") then
for i=1,GetPlayerCount() do
PlayerIndex = i
MapId,_,_ = GetWorldPos()
if (MapId > 0) then
KickOutSelf()
end
end
end
for i=1,3 do
Msg2SubWorld("<bclr=white>ADMIN: <bclr><color=violet>"..zVar.."")
end
AddGlobalCountNews("ADMIN Xin Th«ng B¸o §Õn C¸c Nh©n SÜ <bclr=blue>Vâ L©m TruyÒn Kú H·y L¾ng Nghe Th«ng B¸o Víi Néi Dung Nh­ Sau: "..zVar.."<bclr>")
end

Include("\\script\\missions\\boss\\sieuboss\\call_boss_dpbb.lua")
Include("\\script\\missions\\boss\\sieuboss\\call_boss_ktlb.lua")
Include("\\script\\missions\\boss\\sieuboss\\call_boss_cltt.lua")
Include("\\script\\missions\\boss\\sieuboss\\call_boss_random.lua")
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Pet()
local szTitle = "H·y Lùa Chän Pet"
	local tbOpt = {
		{"Chän Lo¹i Pet",ChonPet},
		{"Xem Tr¹ng Th¸i",XemTrangThai},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
-------------------------------------------------------------------------
function ChonPet()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 0) then
		Say("Lùa Chän Pet",6,"Chu T­íc/ChuTuoc","Háa Kú L©n/HoaKyLan","Thanh Long/ThanhLong","HuyÒn Vò/HuyenVu","LiÖt DiÔm S­/LietDiemSu","Hñy Bá/No")
	else
		Talk(1,"","C¸c H¹ §· Cã Pet Råi H·y Sö Dông Chøc N¨ng Gäi Ra...!")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
function ChuTuoc()
 local partneridex = PARTNER_AddFightPartner(4,4,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function HoaKyLan()
 local partneridex = PARTNER_AddFightPartner(1,1,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function ThanhLong()
 local partneridex = PARTNER_AddFightPartner(2,2,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function HuyenVu()
 local partneridex = PARTNER_AddFightPartner(3,3,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function LietDiemSu()
 local partneridex = PARTNER_AddFightPartner(5,0,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------
function XemTrangThai()
local partnerindex, partnerstate = PARTNER_GetCurPartner()
if partnerstate == 1 then
Say("§ång Hµnh Cña C¸c H¹ §ang Trong Tr¹ng Th¸i XuÊt ChiÕn",2,"Muèn Thu Håi/ThuHoi","Hñy Bá")
else
Say("§ång Hµnh Cña C¸c H¹ §ang Trong Tr¹ng Th¸i NghØ Ng¬i",2,"Muèn XuÊt ChiÕn/XuatChien","Hñy Bá")
end
end

function ThuHoi()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 1) then
		PARTNER_CallOutCurPartner(0)
	else
		Talk(1,"","C¸c H¹ §· Ch­a Cã Thó C­ng Kh«ng ThÓ Thu Håi...!")
	end
end

function XuatChien()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 1) then
		PARTNER_CallOutCurPartner(1)
	else
		Talk(1,"","C¸c H¹ §· Ch­a Cã Thó C­ng Kh«ng ThÓ XuÊt ChiÕn Ra...!")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function kiemtra_spr()
	local tbOpt = {
		{"Vßng S¸ng ChuyÓn Sinh 1",VSCS1},
		{"Vßng S¸ng ChuyÓn Sinh 2",VSCS2},
		{"Vßng S¸ng ChuyÓn Sinh 3",VSCS3},
		{"Vßng S¸ng ChuyÓn Sinh 4",VSCS4},
		{"Vßng S¸ng ChuyÓn Sinh 5",VSCS5},
		{"Vßng S¸ng C¶i L·o Hoµn §ång",VSCLHD},
		{"Th«i",No},
	}
	CreateNewSayEx("<bclr=violet>Lùa Chän Vßng S¸ng Muèn KiÓm Tra<bclr>", tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VSCS1()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip359.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng ChuyÓn Sinh 1 ID<bclr> <bclr=red>359<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCS2()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip361.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng ChuyÓn Sinh 2 ID<bclr> <bclr=red>361<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCS3()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip366.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng ChuyÓn Sinh 3 ID<bclr> <bclr=red>366<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCS4()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip365.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng ChuyÓn Sinh 4 ID<bclr> <bclr=red>365<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCS5()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip360.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng ChuyÓn Sinh 5 ID<bclr> <bclr=red>360<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCLHD()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip364.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng Thø NhÊt ID<bclr> <bclr=red>364<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function IDVS4()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip362.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng Thø NhÊt ID<bclr> <bclr=red>362<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function IDVS5()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip363.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Vßng S¸ng Thø NhÊt ID<bclr> <bclr=red>363<bclr>"
	local tbOpt = {				
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function diemexp()
local tbSay = {}
	tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDoNV")
	tinsert(tbSay,"N©ng Kinh NghiÖm/kinhnghiem")
	tinsert(tbSay,"N©ng CÊp 200/Up_Level")
	tinsert(tbSay,"Tho¸t/no")
	Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y cÊp ®é mµ b¹n muèn !", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
function CapDoNV()
AskClientForNumber("level",1,200,"NhËp CÊp §é:") 
end
function level(num)
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..num.."<color> cÊp ®é.") 
end

function kinhnghiem()
AskClientForNumber("kinhnghiem1",0,9999999999999999,"NhËp EXP") 
end
function kinhnghiem1(nNum)
tl_addPlayerExp(nNum)
Add120SkillExp(nNum)
Clear120SkillExpLimit ()
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..nNum.."<color> kinh nghiÖm.") 
end

function Up_Level()
local nCureLevel = GetLevel()
	if (nCureLevel < 200) then
		Say("C¸c H¹ Cã Muèn N©ng CÊp Kh«ng",2,"Ta Muèn N©ng CÊp/Up_Level_200","Hñy Bá/No")
	else
		Say("§· §¹t CÊp 200",2,"TiÕp Tôc ChuyÓn Sinh/TrungSinh","Hñy Bá/No")
	end
end
function Up_Level_200()
local nCureLevel = GetLevel()
local nAddLevel = 200 - nCureLevel
ST_LevelUp(nAddLevel)
Up_Level()
end

function TrungSinh()
local nTransLife = ST_GetTransLifeCount()
	if (nTransLife < 5) then
		ST_DoTransLife()
	else
		Talk(1,"","<color=yellow>Giíi H¹n Trïng Sinh 6 VÉn Ch­a Më")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
function hotro()
	local tab_Content = {
		"Vßng s¸ng danh hiÖu/DanhHieu",
		--"NhËn KNB/knb",
	--	"LÊy TiÒn §ång/tiendong",
		"LÊy Ng©n L­îng/tienvan",
		"Danh väng - Phóc duyªn/DVPD",
		"Tµi L·nh §¹o/lanhdao",
		"§iÓm Cèng HiÕn/conghien",
		"§iÓm Tèng Kim/TongKim",
		"KiÕn ThiÕt LÔ Bao/kienthiet",
		"NhËn LB Gäi Boss HKMP/bosshk",
		"§iÓm Thuéc TÝnh/ThuocTinh",
		"TÈy §iÓm/clear_attibute_point",
		"Th«i./no",
		"Trë l¹i"
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn !", getn(tab_Content), tab_Content)
end

function CallBossad()
	local tbOpt = {
		{"Gäi Boss §«ng Ph­¬ng BÊt B¹i",BossDongPhuong},
		{"Gäi Boss KiÕm Tiªn Lý B¹ch",BossLyBach},
		{"Gäi Boss C«n L«n Tam Th¸nh",BossTamThanh},
		{"Gäi Boss §«ng Ph­¬ng BÊt B¹i(3lh)",BossDongPhuong_Random},
		{"Gäi Boss KiÕm Tiªn Lý B¹ch(3lh)",ConLonTamThanh_Random},
		{"Gäi Boss C«n L«n Tam Th¸nh(3lh))",KiemTienLyBach_Random},
		{"Siªu HuyÒn Gi¸c §¹i S­",HuyenGiac_Random},
		{"KÕt Thóc §èi Tho¹i",},
	}
	CreateNewSayEx("Xin Chµo Admin "..GetName().." H·y Lùa Boss Muèn Gäi Ra", tbOpt)
end
------------------------------NhËn Kim Nguyªn B¶o----------------------------------------------------------------------------------------------------------------------------------------
function knb()
AskClientForNumber("layknb",0,600,"NhËp Sè L­îng:") 
end
function layknb(slknb)
for i=1, slknb do
AddEventItem(343)
end
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t nhan "..slknb.." KNB\n");
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..slknb.." <color>KNB.")
end
-------------------------------NhËn TiÒn §ång----------------------------------------------------------
function tiendong()
AskClientForNumber("tiendong1",0,2000,"NhËp Sè L­îng:") 
end;
function tiendong1(sltiendong)
for i = 1, sltiendong do
AddStackItem(1,4,417,1,1,0,0,0)
end
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t nhan "..sltiendong.." Xu\n");
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..sltiendong.." <color>tiÒn ®ång.")
end
---------------------------------NhËn Ng©n L­îng------------------------------------------------------------------------
function tienvan()
AskClientForNumber("nhantienvan",0,999999999,"Xin NhËp Sè L­îng")
end
function nhantienvan(num)
Earn(num,999999999)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=metal>"..num.."<color> Ng©n L­îng Thµnh C«ng");
end
-------------------NhËn Phóc Duyªn - Danh Väng----------------------------------------------------------
function DVPD()
local tab_Content =
{
"NhËn Danh Väng/danhvong",
"NhËn Phóc Duyªn/phucduyen",
"Trë L¹i/hotro",
"Th«i/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y Chän Chøc N¨ng", getn(tab_Content), tab_Content)
end
----------------------------NhËn Danh Väng------------------------------------------------------------------------------------
function danhvong()
AskClientForNumber("danhvongINPUT",0,1000000,"NhËp Sè L­îng:") 
end
function danhvongINPUT(nNum)
AddRepute(nNum);
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Danh Väng...!<color>")
end
----------------------------NhËn Phóc Duyªn----------------------------------------------------------------------------------
function phucduyen()
AskClientForNumber("phucduyenINPUT",0,1000000,"NhËp Sè L­îng:") 
end
function phucduyenINPUT(nNum)
FuYuan_Start();
FuYuan_Add(nNum);
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Phóc Duyªn...!<color>")
end
------------------------------Tµi L·nh §¹o----------------------------------------------------------------------------------------------
function lanhdao()
AskClientForNumber("tailanhdao",0,20000000,"NhËp Sè L­îng:") 
end;
function tailanhdao(nNum)
AddLeadExp(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Tµi L·nh §¹o...!<color>")
end
------------------------------Cèng HiÕn---------------------------------------------------------------------------------
function conghien()
AskClientForNumber("diemconghien",0,100000000,"NhËp Sè L­îng:") 
end;
function diemconghien(nNum)
AddContribution(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Cèng HiÕn...!<color>")
end
------------------------------------§iÓm Tèng Kim----------------------------------------------------------------------------------------
function TongKim()
PlayerPoint = 747
	AskClientForNumber("DiemTongKim",0,1000000000,"NhËp Sè L­îng:")
end
function DiemTongKim(nNum)
SetTask(PlayerPoint,nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Tèng Kim...!<color>")
end
--------------------------------KiÕn ThiÕt-----------------------------------------------------------------------------------
function kienthiet()
local tbItem = {
	{szName="KiÕn ThiÕt LÔ Bao", tbProp={6,1,30217,1,0,0},nCount = 10},
	{szName="ChiÕn BÞ LÔ Bao", tbProp={6,1,30219,1,0,0},nCount = 10},
}
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc KiÕn ThiÕt LÔ Bao...!<color>")
end
--------------------------------LÖnh Bµi Boss TiÓu------------------------------------------------------------------------------
function bosshk()
local tab_Content =
{
"NhËn LÖnh Bµi Boss TiÓu/bosstieu",
"NhËn LÖnh Bµi Boss §¹i/bossdai",
"Trë L¹i/hotro",
"Th«i/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn !", getn(tab_Content), tab_Content)
end
-------------------------------------Boss TiÓu-------------------------------------------------------------------------------
function bosstieu()
for i =1,5 do
AddItem(6,1,1022,0,0,0)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Hoµng Kim <color>")
end
end
----------------------------------LÖnh Bµi-Boss §¹i---------------------------------------------------------------------------
function bossdai()
local tab_Content =
{
"LÖnh Bµi Tr­¬ng Tuyªn/truongtuyen",
"LÖnh Bµi Boss Kim ThÝ L­îng/kimthiluong",
"LÖnh Bµi Boss Mé Dung Toµn/modungtoan",
"Trë L¹i/bosshk",
"Th«i/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn", getn(tab_Content), tab_Content)
end
-----------------------------------------Boss §¹i------------------------------------------------------------------------------------------
function truongtuyen()
AddItem(6,1,3083,1,1,0,0)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Tr­¬ng Tuyªn <color>")
end

function kimthiluong()
AddItem(6,1,3084,1,1,0,0)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Kim ThÝ L­îng <color>")
end

function modungtoan()
AddItem(6,1,3085,1,1,0,0)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Mé Dung Toµn <color>")
end
----------------------------§iÓm Thuéc TÝnh--------------------------------------------------------------------------------------------------
function ThuocTinh()
local tab_Content =
{
"§iÓm Kü N¨ng/pointkynang",
"§iÓm TiÒm N¨ng/pointtiemnang",
"Trë L¹i/hotro",
"Th«i/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y Chän Chøc N¨ng", getn(tab_Content), tab_Content)
end
-----------------------------Point Kü N¨ng---------------------------------------------------------------------------------
function pointkynang()
AskClientForNumber("pointkynang1",0,100000,"NhËp Sè L­îng:") 
end;
function pointkynang1(nNum)
AddMagicPoint(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Kü N¨ng...!<color>")
end
---------------------------Point TiÒm N¨ng-------------------------------------------------------------------------------
function pointtiemnang()
AskClientForNumber("pointtiemnang1",0,10000,"NhËp Sè L­îng:") 
end;
function pointtiemnang1(nNum)
AddProp(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm TiÒm N¨ng...!<color>")
end
---------------------------------TÈy §iÓm Thuéc TÝnh---------------------------------------------------------------------------------------
function clear_attibute_point()
	local tbOpt = {
		{"TÈy ®iÓm kü n¨ng.", clear_skill},
		{"TÈy ®iÓm tiÒm n¨ng.", clear_prop},
		{"Trë vÒ", main},
		{"Tho¸t."},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
end
-------------------------------------------------------------------------------------------------------------
function clear_skill()
local tbOpt = {
{"X¸c nhËn", do_clear_skill},
{"§Ó ta suy nghÜ l¹i."},
{"Trë vÒ", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy", tbOpt)
end

function do_clear_skill()
local i = HaveMagic(210)
local j = HaveMagic(400)
local n = RollbackSkill()
local x = 0
if (i ~= -1) then i = 1; x = x + i end
if (j ~= -1) then x = x + j end
local rollback_point = n - x
if (rollback_point + GetMagicPoint() < 0) then
rollback_point = -1 * GetMagicPoint()
end
AddMagicPoint(rollback_point)
if (i ~= -1) then AddMagic(210, i) end
if (j ~= -1) then AddMagic(400, j) end 
Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i cã "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
KickOutSelf()
end
--------------------------------------------------------------------------------------------------
function clear_prop()
local tbOpt = {
{"X¸c nhËn", do_clear_prop},
{"§Ó ta suy nghÜ l¹i."},
{"Trë vÒ", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
end

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
----------------------------------------------------------------------------------------------------------------
function fifong()
	local tab_Content = {
		--"Phi phong/PhiPhong", --trang bi hkmp Thieu lam (sai)
		--"Ngò Hµnh Ên/NguHanhAn", --trang bi hkmp  tvb, nm (sai)
		--"Trang søc/TrangSuc",
		"LÊy Ngùa/Ngua",
		"Tho¸t./no",
		"Trë l¹i"
	}
	Say("Xin mêi chän", getn(tab_Content), tab_Content);
end
-------------------------------------------------------------------------------------------------------------------
function PhiPhong()
for i = 3905,3939 do
AddGoldItem(0,i)
end
end

function NguHanhAn()
for i=3950,3962 do
AddGoldItem(0, i)
end
end

function TrangSuc()
for i=3988,3997 do
AddGoldItem(0, i)
end
end

function Ngua()
local tab_Content =
{
"Ngùa nhãm 1./vip1",
"Ngùa nhãm 2./vip2",
"Ngùa nhãm 3./vip3",
"Ngùa nhãm 4./vip4",
"Ngùa nhãm 5./vip5",
--"S­ tö hoµng kim./sutu",
"Tho¸t./no",
"Trë l¹i"
}
Say("Xin mêi <color=yellow>"..GetName().."<color> chän Ngùa mµ b¹n muèn", getn(tab_Content), tab_Content);
end

function vip1()
AddItem(0,10,6,10,0,0,0)
AddItem(0,10,7,10,0,0,0)
AddItem(0,10,8,10,0,0,0)
AddItem(0,10,9,10,0,0,0)
AddItem(0,10,10,10,0,0,0)

end
function vip2()
AddItem(0,10,11,10,0,0,0)
AddItem(0,10,12,10,0,0,0)
AddItem(0,10,13,10,0,0,0)
AddItem(0,10,14,10,0,0,0)
AddItem(0,10,15,10,0,0,0)

end
function vip3()
AddItem(0,10,16,10,0,0,0)
AddItem(0,10,17,10,0,0,0)
AddItem(0,10,18,10,0,0,0)
AddItem(0,10,19,10,0,0,0)
AddItem(0,10,20,10,0,0,0)

end
function vip4()
AddItem(0,10,21,10,0,0,0)
AddItem(0,10,22,10,0,0,0)
AddItem(0,10,23,10,0,0,0)
AddItem(0,10,24,10,0,0,0)
AddItem(0,10,25,10,0,0,0)
end

function vip5()
for i=3963,3966 do
AddGoldItem(0, i)
end
end

function sutu()
AddGoldItem(0, 3967)
end
------------------------------------------------------------------------------------------------
local tbFreeItem = {
	{szName="Håi Thiªn T¸i T¹o CÈm Nang.", tbProp={6,1,1781,1,0,0}, tbParam={60}},
	{szName="Cµn Kh«n Song TuyÖt Béi.", tbProp={6,1,2219,0,0,0}},
	{szName="Nh¹c V­¬ng KiÕm.", tbProp={6,1,2340,0,0,0}},
	{szName="Qu¶ Huy Hoµng Cao CÊp.", tbProp={6,1,1075,1,0,0}},
	{szName="ThËp Toµn §¹i Bæ.", tbProp={6,1,1399,1,0,0}},
	{szName="Viªm §ª §å B¶o.", tbProp={6,1,2805,1,0,0}},
	{szName="Tèng Kim BÝ B¶o.", tbProp={6,1,2741,1,0,0}},
	{szName="§¹i Lùc Hoµn LÔ Hép.", tbProp={6,1,2517,1,0,0}},
	{szName="H·n HuyÕt Long C©u.", tbProp={0,10,18,1,0,0}, nWidth=2, nHeigth=3},
}

function show_item()
local tbOpt = {}
local nCount = getn(%tbFreeItem)
local szOption = ""
for i=1, nCount-1 do
szOption = format("NhËn %s", %tbFreeItem[i].szName)
tinsert(tbOpt, {szOption, get_item, {i}})
end
szOption = format("NhËn %s", %tbFreeItem[nCount].szName)
tinsert(tbOpt, {szOption, get_single_item, {nCount}})
tinsert(tbOpt, {"NhËn cùc phÈm giíi chØ...", get_normal_item})
tinsert(tbOpt, {"Trë vª.", main})
tinsert(tbOpt, {"Tho¸t."})
CreateNewSayEx("<npc>H·y chän vËt phÈm!", tbOpt)
end

function get_item(nIndex)
local nMaxCount = CalcFreeItemCellCount()
g_AskClientNumberEx(0, nMaxCount, "Xin mêi ®­a vµo nhËn lÊy", {get_item_back, {nIndex}})
end

function get_item_back(nIndex, nCount)
if nCount <= 0 then
return
end

if CalcFreeItemCellCount() < nCount then
Talk(1, "", format("CÇn Ýt nhÊt <color=yellow>%d<color> tói kh«ng gian...", nCount))
return
end

local szLogTitle = format("[liguan]get_free_item_%s", %tbFreeItem[nIndex].szName)
tbAwardTemplet:GiveAwardByList(%tbFreeItem[nIndex], szLogTitle, nCount)
end

function get_single_item(nIndex)
local tbItem = %tbFreeItem[nIndex]
if CountFreeRoomByWH(tbItem.nWidth, tbItem.nHeigth) < 1 then
Talk(1, "", format("CÇn Ýt nhÊt 1 %dx%d µÄ±³°ü¿O¼ä", tbItem.nWidth, tbItem.nHeigth))
return
end
local szLogTitle = format("[liguan]get_free_item_%s", tbItem.szName)
tbAwardTemplet:GiveAwardByList(tbItem, szLogTitle)
end
-----------------------------------------------------------------------------
function get_normal_item()
local i = random(1,15)
	if (i == 1) then
		AddGoldItem(0,4120)
	elseif (i == 2) then
		AddGoldItem(0,4121)
	elseif (i == 3) then
		AddGoldItem(0,4122)
	elseif (i == 4) then
		AddGoldItem(0,4123)
	elseif (i == 5) then
		AddGoldItem(0,4124)
	elseif (i == 6) then
		AddGoldItem(0,4125)
	elseif (i == 7) then
		AddGoldItem(0,4126)
	elseif (i == 8) then
		AddGoldItem(0,4127)
	elseif (i == 9) then
		AddGoldItem(0,4128)
	elseif (i == 10) then
		AddGoldItem(0,4129)
	elseif (i == 11) then
		AddGoldItem(0,4130)
	elseif (i == 12) then
		AddGoldItem(0,4131)
	elseif (i == 13) then
		AddGoldItem(0,4132)
	elseif (i == 14) then
		AddGoldItem(0,4133)
	elseif (i == 15) then
		AddGoldItem(0,4134)
	end
end
---------------------------------------------------------------------------------------------------------------
function trangthai()
local tbSay = {}
tinsert(tbSay,"Hç Trî ChiÕn §Êu/GMSkill")
tinsert(tbSay,"GM Èn Th©n.../GManthan")
tinsert(tbSay,"GM HiÖn Th©n.../XoaSkillGM")
tinsert(tbSay,"ChÝnh Ph¸i./mauvang")
tinsert(tbSay,"Tµ Ph¸i./mautim")
tinsert(tbSay,"Trung LËp./mauxanh")
tinsert(tbSay,"S¸t Thñ./maudo")
tinsert(tbSay,"Nh©n VËt Ch÷ Tr¾ng./mautrang")
tinsert(tbSay,"ChiÕn §Êu/ChienDau")
tinsert(tbSay,"Phi ChiÕn §Êu/PhiChienDau")
tinsert(tbSay,"Admin./mauadmin")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän tr¹ng th¸i mµ b¹n muèn !", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------
function GMSkill()
AddMagic(1003,20)
AddMagic(1310,20)
end

function GManthan()
AddMagic(732,20)
AddMagic(733,20)
Msg2Player("<color=pink>Chóc Mõng B¹n §· Häc §­îc Skill GM...")
end

function XoaSkillGM()
DelMagic(732,20)
DelMagic(733,20)
DelMagic(1003.20)
DelMagic(1310.20)
Msg2Player("B¹n §· Xãa Kü N¨ng GM Thµnh C«ng")
end

function mautrang()
SetCurCamp(0)
SetCamp(0)
end

function ChienDau()
SetFightState(1)
end

function PhiChienDau()
SetFightState(0)
end

function mauvang()
SetCurCamp(1)
SetCamp(1)
end
function mautim()
SetCurCamp(2)
SetCamp(2) 
end
function mauxanh()
SetCurCamp(3)
SetCamp(3) 
end
function maudo()
SetCurCamp(4)
SetCamp(4) 
end

function mauadmin()
SetCurCamp(5)
SetCamp(5) 
end
---------------------------------------------------------------------
function nhanskill()
local tbSay = {}
tinsert(tbSay,"Vµo Ph¸i Häc full Skill/choose_faction")
tinsert(tbSay,"Vµo Ph¸i Hoa S¬n/PhaiHoaSon")
tinsert(tbSay,"NhËn Skill 180/nhanskill180")
tinsert(tbSay,"Kü N¨ng 120/kynang120")
tinsert(tbSay,"Kü N¨ng 90/kynang90")
tinsert(tbSay,"NhËn Skill/addskill")
tinsert(tbSay,"Xãa Skill/delskill")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin mêi <color=yellow>"..GetName().."<color> chän Skill  !", getn(tbSay), tbSay)
end
--------------------------------------------------------------------------------------------------------
function nhanskill180()
local nFaction = GetLastFactionNumber() + 1
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ Sö Dông MËt TÞch ThÊt TruyÒn")
		return 1;
	else
		for i=1,11 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20)
					SetTask(KyNangThatTruyen,1)
					Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc §­îc Kü N¨ng ThÊt TruyÒn<bclr><bclr=red> "..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Kh«ng ThÓ Häc N÷a")
					return 1;
				end
			end
		end
	end
end
-------------------------------------------------------------------------------------------------------------------------------
function kynang90()
AddItem(6,1,2426,0,0,0,0)
AddItem(6,1,2424,0,0,0,0)
AddItem(6,1,2426,0,0,0,0)
AddItem(6,1,2424,0,0,0,0)
AddItem(6,1,2426,0,0,0,0)
AddItem(6,1,2424,0,0,0,0)
end
function kynang120()
AddItem(6,1,2425,0,0,0,0)
AddItem(6,1,1125,0,0,0,0)
end
------------------------------------------------------
function addskill()
if check_faction() == 1 then
	Talk(1, "", "Ch­a gia nhËp m«n ph¸i kh«ng thÓ nhËn Skill ®­îc.")
	return
end
mp = GetFaction()
if GetLevel() >= 150 then	
if GetTask(5007) == 0 then
if mp == "shaolin" then
AddMagic(1055,20)
AddMagic(1056,20)
AddMagic(1057,20)
AddMagic(318,20)
AddMagic(319,20)
AddMagic(321,20)
AddMagic(709,20)
AddMagic(1220,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña ThiÕu L©m. ")
elseif mp == "tianwang" then
AddMagic(1058,20)
AddMagic(1059,20)
AddMagic(1060,20)
AddMagic(322,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(708,20)
AddMagic(1221,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thiªn V­¬ng. ")
elseif mp == "tangmen" then
AddMagic(1069,20)
AddMagic(1070,20)
AddMagic(1071,20)
AddMagic(1110,20)
AddMagic(302,20)
AddMagic(342,20)
AddMagic(339,20)
AddMagic(351,0)
AddMagic(710,20)
AddMagic(1223,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña §­êng M«n. ")
elseif mp == "wudu" then
AddMagic(1066,20)
AddMagic(1067,20)
AddMagic(353,20)
AddMagic(355,20)
AddMagic(390,0)
AddMagic(711,20)
AddMagic(1222,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Ngò §éc.")
elseif mp == "emei" then
AddMagic(1061,20)
AddMagic(1062,20)
AddMagic(1114,20)
AddMagic(328,20)
AddMagic(380,20)
AddMagic(332,0)
AddMagic(712,20)
AddMagic(1224,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Nga My.")
elseif mp == "cuiyan" then
AddMagic(1063,20)
AddMagic(1065,20)
AddMagic(336,20)
AddMagic(337,20)
AddMagic(713,20)
AddMagic(1225,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thóy Yªn.")
elseif mp == "gaibang" then
AddMagic(1073,20)
AddMagic(1074,20)
AddMagic(359,20)
AddMagic(357,20)
AddMagic(714,20)
AddMagic(1227,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña C¸i Bang.")
elseif mp == "tianren" then
AddMagic(1075,20)
AddMagic(1076,20)
AddMagic(362,20)
AddMagic(361,20)
AddMagic(391,0)
AddMagic(715,20)
AddMagic(1226,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thiªn NhÉn.")
elseif mp == "wudang" then
AddMagic(1078,20)
AddMagic(1079,20)
AddMagic(365,20)
AddMagic(368,20)
AddMagic(716,20)
AddMagic(1228,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Vâ §ang.")
elseif mp == "kunlun" then
AddMagic(1080,20)
AddMagic(1081,20)
AddMagic(372,20)
AddMagic(375,20)
AddMagic(394,0)
AddMagic(717,20)
AddMagic(1229,20)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña C«n L«n.")
end
else
Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a.")
end
else
Talk(1, "", "LuyÖn ®Õn cÊp 150 råi h·y ®Õn t×m ta")
end
end
------------------------------------------------------------------------------------------------------------------------
function delskill()
if check_faction() == 1 then
	Talk(1, "", "Ch­a tíi cÊp 150 ch­a thÓ xãa Skill ®­îc...!")
	return
end
mp = GetFaction()
if GetLevel() >= 150 then	
if GetTask(5007) == 0 then
if mp == "shaolin" then
DelMagic(1055,20)
DelMagic(1056,20)
DelMagic(1057,20)
DelMagic(318,20)
DelMagic(319,20)
DelMagic(321,20)
DelMagic(709,20)
DelMagic(1220,20)
Talk(1,"","Chóc mõng b¹n ®· xãa  thµnh c«ng tuyÖt kü cña ThiÕu L©m. ")
elseif mp == "tianwang" then
DelMagic(1058,20)
DelMagic(1059,20)
DelMagic(1060,20)
DelMagic(322,20)
DelMagic(325,20)
DelMagic(323,20)
DelMagic(708,20)
DelMagic(1221,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Thiªn V­¬ng. ")
elseif mp == "tangmen" then
DelMagic(1069,20)
DelMagic(1070,20)
DelMagic(1071,20)
DelMagic(1110,20)
DelMagic(302,20)
DelMagic(342,20)
DelMagic(339,20)
DelMagic(710,20)
DelMagic(1223,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña §­êng M«n. ")
elseif mp == "wudu" then
DelMagic(1066,20)
DelMagic(1067,20)
DelMagic(353,20)
DelMagic(355,20)
DelMagic(711,20)
DelMagic(1222,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Ngò §éc.")

elseif mp == "emei" then
DelMagic(1061,20)
DelMagic(1062,20)
DelMagic(1114,20)
DelMagic(328,20)
DelMagic(380,20)
DelMagic(712,20)
DelMagic(1224,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Nga My.")

elseif mp == "cuiyan" then
DelMagic(1063,20)
DelMagic(1065,20)
DelMagic(336,20)
DelMagic(337,20)
DelMagic(713,20)
DelMagic(1225,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Thóy Yªn.")

elseif mp == "gaibang" then
DelMagic(1073,20)
DelMagic(1074,20)
DelMagic(359,20)
DelMagic(357,20)
DelMagic(714,20)
DelMagic(1227,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña C¸i Bang.")
elseif mp == "tianren" then
DelMagic(1075,20)
DelMagic(1076,20)
DelMagic(362,20)
DelMagic(361,20)
DelMagic(715,20)
DelMagic(1226,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Thiªn NhÉn.")
elseif mp == "wudang" then
DelMagic(1078,20)
DelMagic(1079,20)
DelMagic(365,20)
DelMagic(368,20)
DelMagic(716,20)
DelMagic(1228,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Vâ §ang.")
elseif mp == "kunlun" then
DelMagic(1080,20)
DelMagic(1081,20)
DelMagic(372,20)
DelMagic(375,20)
DelMagic(717,20)
DelMagic(1229,20)
Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü 150 cña C«n L«n.")
end
else
Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a.")
end
else
Talk(1, "", "LuyÖn ®Õn cÊp 150 råi h·y ®Õn t×m ta")
end
end

function PhaiHoaSon()
	if GetCurCamp() == 0 then
		SetFaction("huashan")
		SetLastFactionNumber(10)
		SetTask(11,10*256)
		SetCamp(3) SetCurCamp(3)
		SetRank(89) SetSeries(2)
		KickOutSelf() addskill()
	else
		Talk(1,"","Ng­¬i §· Gia NhËp Ph¸i Råi")
	end
end

function addskill()
AddMagic(1347)
AddMagic(1372)
AddMagic(1349)
AddMagic(1350)
AddMagic(1374)
AddMagic(1375)
AddMagic(1351)
AddMagic(1376)
AddMagic(1354)
AddMagic(1378)
AddMagic(1355)
AddMagic(1379)
AddMagic(1358)
AddMagic(1360)
AddMagic(1380)
AddMagic(1364,20)
AddMagic(1382,20)
AddMagic(1365,20)
AddMagic(1370,20)
AddMagic(1368,20)
AddMagic(1384,20) 
end
--------------------------------------------------------------------------------------------------------------
function TrangBiHiem()
local tab_Content = {
	"Trang BÞ H¾c ThÇn/hacthan",
	"Trang BÞ Long T­¬ng/longtuong",
	"Tho¸t./no",
}
Say("Xin mêi chän !", getn(tab_Content), tab_Content);
end

function hacthan()
for i = 4013,4017 do
AddGoldItem(0,i)
end
end

function longtuong()
for i = 4018,4026 do
AddGoldItem(0,i)
end
end
----------------------------------------------------------------------------------------------
function hkmpdoxanh()
local tab_Content = {
	"Trang BÞ Hoµng Kim M«n Ph¸i./sethkmp",
	"Vò KhÝ HKMP./bachkim",
	"LÊy §å Xanh./laydoxanh",
	"LÊy §å TÝm./dotim1",
	"Bé An Bang./anbang",
	"[Cùc PhÈm] An Bang./anbang1",
	"[Hoµn Mü] An Bang./anbang2",
	"[Liªn §Êu] An Bang./anbang3",
	"Th«i./no",
	"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän trang bÞ mµ b¹n muèn !", getn(tab_Content), tab_Content)

end
--------------------------------------------------------------------------------------------------------------------------------
tbDoXanh =
{
[1]=
{
szName = "D©y chuyÒn",
tbEquip =
{
{"Toµn th¹ch h¹ng liªn",0,4,0},
{"Lôc PhØ Thóy Hé Th©n phï ",0,4,1},
}
},
[2]=
{
szName = "¸o gi¸p",
tbEquip =
{
{"ThÊt B¶o Cµ Sa",0,2,0},
{"Ch©n Vò Th¸nh Y",0,2,1},
{"Thiªn NhÉn MËt Trang",0,2,2},
{"Gi¸ng Sa Bµo",0,2,3},
{"§­êng Nghª gi¸p",0,2,4},
{"V¹n L­u Quy T«ng Y",0,2,5},
{"TuyÒn Long bµo",0,2,6},
{"Long Tiªu ®¹o Y",0,2,8},
{"Cöu VÜ B¹ch Hå trang",0,2,9},
{"TrÇm H­¬ng sam",0,2,10},
{"TÝch LÞch Kim Phông gi¸p",0,2,11},
{"V¹n Chóng TÒ T©m Y",0,2,12},
{"L­u Tiªn QuÇn",0,2,13},
}
},
[3]=
{
szName = "§ai l­ng",
tbEquip =
{
{"Thiªn Tµm Yªu §¸i",0,6,0},
{"B¹ch Kim Yªu §¸i",0,6,1},
}
},
[4]=
{
szName = "Giµy",
tbEquip =
{
{"Cöu TiÕt X­¬ng VÜ Ngoa",0,5,0},
{"Thiªn Tµm Ngoa",0,5,1},
{"Kim Lò hµi",0,5,2},
{"Phi Phông Ngoa",0,5,3},
}
},
[5]=
{
szName = "Bao tay",
tbEquip =
{
{"Long Phông HuyÕt Ngäc Tr¹c",0,8,0},
{"Thiªn Tµm Hé UyÓn",0,8,1},
}
},
[6]=
{
szName = "Nãn",
tbEquip =
{
{"Tú L« m·o",0,7,0},
{"Ngò l·o qu¸n",0,7,1},
{"Tu La Ph¸t kÕt",0,7,2},
{"Th«ng Thiªn Ph¸t Qu¸n",0,7,3},
{"YÓm NhËt kh«i",0,7,4},
{"TrÝch Tinh hoµn",0,7,5},
{"¤ Tµm M·o",0,7,6},
{"Quan ¢m Ph¸t Qu¸n",0,7,7},
{"¢m D­¬ng V« Cùc qu¸n",0,7,8},
{"HuyÒn Tª DiÖn Tr¸o",0,7,9},
{"Long HuyÕt §Çu hoµn",0,7,10},
{"Long L©n Kh«i",0,7,11},
{"Thanh Tinh Thoa",0,7,12},
{"Kim Phông TriÓn SÝ ",0,7,13},
}
},
[7]=
{
szName = "Vò khÝ c©n chiÕn",
tbEquip =
{
{"HuyÒn ThiÕt KiÕm",0,0,0},
{"§¹i Phong §ao",0,0,1},
{"Kim C« Bæng",0,0,2},
{"Ph¸ Thiªn KÝch",0,0,3},
{"Ph¸ Thiªn chïy",0,0,4},
{"Th«n NhËt Tr·m",0,0,5},
}
},
[8]=
{
szName = "Ngäc béi",
tbEquip =
{
{"Long Tiªn H­¬ng Nang",0,9,0},
{"D­¬ng Chi B¹ch Ngäc",0,9,1},
}
},
[9]=
{
szName = "Vò khÝ tÇm xa",
tbEquip =
{
{"B¸ V­¬ng Tiªu",0,1,0},
{"To¸i NguyÖt §ao",0,1,1},
{"Khæng T­íc Linh",0,1,2},
}
},
[10]=
{
szName = "NhÉn",
tbEquip =
{
{"Toµn Th¹ch Giíi ChØ ",0,3,0},
}
},
}
function laydoxanh()
local tbOpt = {}

for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"Tho¸t."})
CreateNewSayEx("<npc>Xin mêi lùa chän trang bÞ:", tbOpt)
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"Tho¸t."})
local szTitle = format("<npc>Xin mêi lùa chän trang bÞ:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh2(nIndex, nType)
local tbOpt = {}
tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
tinsert(tbOpt, {"Méc", laydoxanh3, {nIndex, nType, 1}})
tinsert(tbOpt, {"Thñy", laydoxanh3, {nIndex, nType, 2}})
tinsert(tbOpt, {"Háa", laydoxanh3, {nIndex, nType, 3}})
tinsert(tbOpt, {"Thæ ", laydoxanh3, {nIndex, nType, 4}})


tinsert(tbOpt, {"Tho¸t."})
local szTitle = format("<npc>Chän hÖ:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
g_AskClientNumberEx(0, 60, "Sè l­îng:", {laydoxanh4, {nIndex, nType, nSeries}})
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
for i=1,nCount do AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 200, 10) end
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy §å Xanh",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))			
end
-----------------------------------------------------------------------------------------------------------------------------------------------
function anbang()
for i=216,219 do
AddGoldItem(0, i)
end
end

function anbang1()
for i=408,411  do
AddGoldItem(0, i)
end
end

function anbang2()
for i=210,213  do
AddGoldItem(0, i)
end
end

function anbang3()
for i=394,397  do
AddGoldItem(0, i)
end
end
-----------------------------------------------------------------------------------------
function dotim1()
local	tab_Content = {
"Vò KhÝ/weapon",
"Y Phôc/shirt",
"§Ønh M¹o/hat",
"Hæ UyÓn/glove",
"Yªu §¸i/belt",
"Hµi Tö/shoe",
"Th«i./no",
"Trë l¹i"
}
Say(" Xin mêi chän  ? ", getn(tab_Content), tab_Content);
end
------------------------------------------------------------------------------
function weapon()
local tab_Content = {
"KiÕm/kiem",
"§ao/dao",
"Bæng/bong",
"Th­¬ng/kick",
"Chïy/chuy",
"Song §ao/songdao",
"Phi Tiªu/phitieu",
"Phi §ao/phidao",
"Tô TiÔn/tutien",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo", getn(tab_Content), tab_Content);
end;
--------------------------------------------------------------------------------
function kiem()
AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function dao()
AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function bong()
AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function kick()
AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function chuy()
AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function songdao()
AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function phitieu()
AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function phidao()
AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function tutien()
AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1) 
end
-------------------------------------------------------------------
function shirt()
local tab_Content = {
"ThÊt B¶o Cµ Sa/aothieulam",
"Ch©n Vò Th¸nh Y/aovodang",
"Thiªn NhÉn MËt Trang/aothiennhan",
"Gi¸ng Sa Bµo/sabao",
"§­êng Nghª Gi¸p/dng",
"V¹n L­u Quy T«ng Y/aocaibang",
"TuyÒn Long Bµo/longbao",
"Long Tiªu §¹o Y/daoy",
"Cöu VÜ B¹ch Hå Trang/hotrang",
"TrÇm H­¬ng Sam/huongsam",
"TÝch LÞch Kim Phông Gi¸p/kimphung",
"V¹n Chóng TÒ T©m Y/tamy",
"L­u Tiªn QuÇn/tienquan",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
---------------------------------
function aothieulam()
AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aovodang()
AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aothiennhan()
AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function sabao()
AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function dng()
AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aocaibang()
AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end

function longbao()
AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end

function daoy()
AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end

function hotrang()
AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end

function huongsam()
AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end

function kimphung()
AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tamy()
AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tienquan()
AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end
--------------------------------------------------------------------
function hat()
local tab_Content = {
"Tú L« M·o/lomao",
"Ngò L·o Qu¸n/laoquan",
"Tu La Ph¸t KÕt/phatket",
"Th«ng Thiªn Ph¸t Qu¸n/phatquan",
"YÓm NhËt Kh«i/nhatkhoi",
"TrÝch Tinh Hoµn/tinhhoan",
"¤ Tµm M·o/tammao",
"Quan ¢m Ph¸t Qu¸n/quanam",
"¢m D­¬ng V« Cùc Qu¸n/amduong",
"HuyÒn Tª DiÖn Tr¸o/dientrao",
"Long HuyÕt §Çu Hoµn/longhuyet",
"Long L©n Kh«i/lankhoi",
"Thanh Tinh Thoa/tinhthoa",
"Kim Phông TriÓn SÝ/triensi",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
--------------------------
function lomao()
AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function laoquan()
AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phatket()
AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phatquan()
AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function nhatkhoi()
AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tinhhoan()
AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tammao()
AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end

function quanam()
AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end

function amduong()
AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end

function dientrao()
AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end

function longhuyet()
AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end

function lankhoi()
AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tinhthoa()
AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end

function triensi()
AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end
---------------------------------------------------------------
function glove()
local tab_Content = {
"Long Phông HuyÕt Ngäc Tr¹c/ngoctrac",
"Thiªn Tµm Hé UyÓn/houyen",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
----------------------
function ngoctrac()
AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function houyen()
AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end
-------------------------------------------------------------------
function belt()
local tab_Content = {
"Thiªn Tµm Yªu §¸i/thientamyeu",
"B¹ch Kim Yªu §¸i/bachkimyeudai",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
-----------------------
function thientamyeu()
AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function bachkimyeudai()
AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end
----------------------------------------------------------------------------
function shoe()
local tab_Content = {
"Cöu TiÕt X­¬ng VÜ Ngoa/cuutien",
"Thiªn Tµm Ngoa/thientam",
"Kim Lò Hµi/kimlu",
"Phi Phông Ngoa/phiphung",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
--------------------------
function cuutien()
AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function thientam()
AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function kimlu()
AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phiphung()
AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end
---------------------------------------------------------------
function khoangth()
local tab_Content = {
"HuyÒn tinh/huytin",
"Kho¸ng th¹ch/kdb",
"S¸t thñ gi¶n 80./stg80",
"S¸t thñ gi¶n 90./stg90",
"Thñy tinh/thuyti",
"Phóc duyªn/phucd",
"Tho¸t./no",
"Trë l¹i."
}
Say(" Ng­¬i muèn lÊy g× nµo? ", getn(tab_Content), tab_Content);
end;
-----------------------------------------------------------------------------
function huytin() 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
end

function kdb()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,150,1,4,0,0) 

AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,0,0,0)
AddItem(6,1,154,1,1,0,0) 
AddItem(6,1,154,1,2,0,0) 
AddItem(6,1,154,1,3,0,0) 
AddItem(6,1,154,1,4,0,0) 
end


function stg80()
AddItem(6,1,400,80,0,0,0) 
AddItem(6,1,400,80,1,0,0) 
AddItem(6,1,400,80,2,0,0) 
AddItem(6,1,400,80,3,0,0) 
AddItem(6,1,400,80,4,0,0) 
end

function stg90()
AddItem(6,1,400,90,0,0,0) 
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 
AddItem(6,1,400,90,3,0,0) 
AddItem(6,1,400,90,4,0,0) 
end

function thuyti()
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
end

function phucd()
AddItem(6,1,122,1,0,0,0)
AddItem(6,1,123,1,0,0,0) 
AddItem(6,1,124,1,0,0,0)
end
------------------------------------------Danh HiÖu--------------------------------------------------------------------------------------------------
function DanhHieu()
local tab_Content =
{
"Vßng s¸ng Admin./vsadmin",
"Vâ L©m KiÖt XuÊt./vlkx",
"Vâ L©m Minh Chñ 1./vlmc1",
"Vâ L©m Minh Chñ 2./vlmc2",
"Ngù Long Cuång §ao./ngulongcd",
"§¹i Héi Server./daihoisv",
"Thiªn H¹ §Ö NhÊt Bang./thdnb",
"TuyÖt ThÕ Cao Thñ./tuyetthect",
"M·nh Long Tranh B¸./manhlongtb",
"Th«i./no",
"Trë l¹i"
}
Say("Xin mêi <color=yellow>"..GetName().."<color> chän Danh HiÖu !", getn(tab_Content), tab_Content);
end
----------------------------------------------------------------------------------------------------------------------------
function DanhHieuBuff()
local tab_Content =
{
"Vßng s¸ng Admin./vsadminBuff",
"Vâ L©m KiÖt XuÊt./vlkxBuff",
"Vâ L©m Minh Chñ 1./vlmc1Buff",
"Vâ L©m Minh Chñ 2./vlmc2Buff",
"Ngù Long Cuång §ao./ngulongcdBuff",
"§¹i Héi Server./daihoisvBuff",
"Thiªn H¹ §Ö NhÊt Bang./thdnbBuff",
"TuyÖt ThÕ Cao Thñ./tuyetthectBuff",
"M·nh Long Tranh B¸./manhlongtbBuff",
"Th«i./no",
"Trë l¹i"
}
Say("Xin mêi <color=yellow>"..GetName().."<color> chän Danh HiÖu !", getn(tab_Content), tab_Content);
end
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
function vsadminBuff()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
n_title = 228---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
end

function vlkxBuff()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
n_title = 85 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
end

function vlmc2Buff()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
n_title = 3000 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
end

function vlmc1Buff()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
n_title = 188 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
end

function ngulongcdBuff()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
n_title = 165 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
end

function daihoisvBuff()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
n_title = 150 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
end

function thdnbBuff()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
n_title = 189 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
end

function tuyetthectBuff()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
n_title = 235 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
end

function manhlongtbBuff()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
n_title = 263 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
end
----------------------------------------------------------------------------------------------------------------------------
function vsadmin()
n_title = 228---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function vlkx()
n_title = 85 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function vlmc2()
n_title = 3000 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function vlmc1()
n_title = 188 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function ngulongcd()
n_title = 165 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function daihoisv()
n_title = 150 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function thdnb()
n_title = 189 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function tuyetthect()
n_title = 235 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function manhlongtb()
n_title = 263 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function xunghieu()
local tbSay = {}

tinsert(tbSay,"ThiÕu L©m ./xunghieu1")
tinsert(tbSay,"Thiªn V­¬ng./xunghieu2")
tinsert(tbSay,"Ngò §éc./xunghieu3")
tinsert(tbSay,"§­êng M«n./xunghieu4")
tinsert(tbSay,"Nga Mi./xunghieu5")
tinsert(tbSay,"Thóy Yªn./xunghieu6")
tinsert(tbSay,"C¸i Bang./xunghieu7")
tinsert(tbSay,"Thiªn NhÉn./xunghieu8")
tinsert(tbSay,"Vâ §ang./xunghieu9")
tinsert(tbSay,"C«n L«n./xunghieu10")
tinsert(tbSay,"Hoa S¬n./xunghieu11")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän M«n Ph¸i  !", getn(tbSay), tbSay)
end

function xunghieu1()
SetRank(72)
Msg2Player("B¹n ®­îc x­ng hiÖu: Hé Ph¸p Tr­ëng L·o.")
end
function xunghieu2()
SetRank(69)
Msg2Player("B¹n ®­îc x­ng hiÖu: K×nh Thiªn Nguyªn So¸i.")
end
function xunghieu3()
SetRank(80)
Msg2Player("B¹n ®­îc x­ng hiÖu: U Minh Quû V­¬ng.")
end
function xunghieu4()
SetRank(76)
Msg2Player("B¹n ®­îc x­ng hiÖu: Lôc C¸c Tr­ëng L·o.")
end
function xunghieu5()
SetRank(64)
Msg2Player("B¹n ®­îc x­ng hiÖu: Kim §Ønh Th¸nh N÷.")
end
function xunghieu6()
SetRank(67)
Msg2Player("B¹n ®­îc x­ng hiÖu: Hoa ThÇn.")
end
function xunghieu7()
SetRank(78)
Msg2Player("B¹n ®­îc x­ng hiÖu: Cöu §¹i Tr­ëng L·o.")
end
function xunghieu8()
SetRank(81)
Msg2Player("B¹n ®­îc x­ng hiÖu: Th¸nh Gi¸o Tr­ëng L·o.")
end
function xunghieu9()
SetRank(73)
Msg2Player("B¹n ®­îc x­ng hiÖu: HuyÒn Vâ Ch©n Nh©n.")
end
function xunghieu10()
SetRank(75)
Msg2Player("B¹n ®­îc x­ng hiÖu: Hé Ph¸i Ch©n Qu©n.")
end
function xunghieu11()
SetRank(89)
Msg2Player("B¹n ®­îc x­ng hiÖu: V« L­îng Thiªn T«n.")
end
-----------------------------------------------------------------------------------------------
local tbFaction =
{
	[1] =
	{
		szShowName = "ThiÕu L©m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709, 1055, 1056, 1057},
		tbEquip =
		{
			{
				szFaction = "ThiÕu L©m QuyÒn",
				nFirstEquipId = 4863,
				tbEquipName =
				{
					" Minh Ph­îng ch©u liªn", " Minh Ph­îng t¨ng m·o", " Minh Ph­îng th­îng giíi", " Minh Ph­îng hé uyÓn", " Minh Ph­îng yªu ®¸i",
					" Minh Ph­îng cµ sa ", " Minh Ph­îng triÒn thñ ", " Minh Ph­îng t¨ng hµi ", " Minh Ph­îng yªu trôy ", " Minh Ph­îng h¹ giíi ",
				},
			},
			{
				szFaction = "ThiÕu L©m C«n",
				nFirstEquipId = 4873,
				tbEquipName =
				{
					"Minh Ph­îng ch©u liªn", "Minh Ph­îng t¨ng m·o", "Minh Ph­îng th­îng giíi", "Minh Ph­îng hé uyÓn", "Minh Ph­îng yªu ®¸i",
					"Minh Ph­îng cµ sa", "Minh Ph­îng c«n", "Minh Ph­îng t¨ng hµi", "Minh Ph­îng yªu trôy", "Minh Ph­îng h¹ giíi", 
				},
			},
			{
				szFaction = "ThiÕu L©m §ao",
				nFirstEquipId = 4883,
				tbEquipName =
				{
					"Minh Ph­îng ch©u liªn", "Minh Ph­îng t¨ng m·o", "Minh Ph­îng th­îng giíi", "Minh Ph­îng hé uyÓn", "Minh Ph­îng yªu ®¸i",
					"Minh Ph­îng cµ sa", "Minh Ph­îng ®ao", "Minh Ph­îng t¨ng hµi", "Minh Ph­îng yªu trôy", "Minh Ph­îng h¹ giíi",
				},
			},
		},
	},
	[2] =
	{
		szShowName = "Thiªn V­¬ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708, 1058, 1059, 1060},
		tbEquip =
		{
			{
				szFaction = "Thiªn V­¬ng Chïy",
				nFirstEquipId = 4893,
				tbEquipName =
				{
					"Minh Ph­îng ®Þnh quang liªn", "Minh Ph­îng ®Þnh quang kh«i", "Minh Ph­îng ®Þnh quang th­îng giíi", "Minh Ph­îng ®Þnh quang thóc o¶n", "Minh Ph­îng ®Þnh quang yªu ®¸i",
					"Minh Ph­îng ®Þnh quang kh¶i", "Minh Ph­îng ®Þnh quang chïy", "Minh Ph­îng ®Þnh quang ngoa", "Minh Ph­îng ®Þnh quang béi", "Minh Ph­îng ®Þnh quang h¹ giíi",
				},
			},
			{
				szFaction = "Thiªn V­¬ng Th­¬ng",
				nFirstEquipId = 4903,
				tbEquipName =
				{
					"Minh Ph­îng ngù phong liªn", "Minh Ph­îng ngù phong kh«i", "Minh Ph­îng ngù phong th­îng giíi", "Minh Ph­îng ngù phong thóc o¶n", "Minh Ph­îng ngù phong yªu ®¸i",
					"Minh Ph­îng ngù phong kh¶i", "Minh Ph­îng ngù phong th­¬ng", "Minh Ph­îng ngù phong ngoa", "Minh Ph­îng ngù phong béi", "Minh Ph­îng ngù phong h¹ giíi",
				},
			},
			{
				szFaction = "Thiªn V­¬ng §ao",
				nFirstEquipId = 4913,
				tbEquipName =
				{
					"Minh Ph­îng biÓu phong liªn", "Minh Ph­îng biÓu phong kh«i", "Minh Ph­îng biÓu phong th­îng giíi", "Minh Ph­îng biÓu phong thóc o¶n", "Minh Ph­îng biÓu phong yªu ®¸i",
					"Minh Ph­îng biÓu phong kh¶i", "Minh Ph­îng biÓu phong ®ao", "Minh Ph­îng biÓu phong ngoa", "Minh Ph­îng biÓu phong béi", "Minh Ph­îng biÓu phong h¹ giíi",
				},
			},
		},
	},
	[3] =
	{
		szShowName = "§­êng M«n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710, 1069, 1070, 1071},
		tbEquip =
		{
			{
				szFaction = "Phi §ao §­êng M«n",
				nFirstEquipId = 4983,
				tbEquipName =
				{
					"Minh Ph­îng nÆc ¶nh h¹ng liªn", "Minh Ph­îng nÆc ¶nh qu¸n", "Minh Ph­îng nÆc ¶nh th­îng giíi", "Minh Ph­îng nÆc ¶nh hé uyÓn", "Minh Ph­îng nÆc ¶nh triÒn yªu",
					"Minh Ph­îng nÆc ¶nh gi¸p", "Minh Ph­îng nÆc ¶nh phi ®ao", "Minh Ph­îng nÆc ¶nh ngoa", "Minh Ph­îng nÆc ¶nh yªu trôy", "Minh Ph­îng nÆc ¶nh h¹ giíi",
				},
			},
			{
				szFaction = "Ná §­êng M«n",
				nFirstEquipId = 4993,
				tbEquipName =
				{
					"Minh Ph­îng cùc quang h¹ng liªn", "Minh Ph­îng cùc quang qu¸n", "Minh Ph­îng cùc quang th­îng giíi", "Minh Ph­îng cùc quang hé uyÓn", "Minh Ph­îng cùc quang triÒn yªu",
					"Minh Ph­îng cùc quang gi¸p", "Minh Ph­îng cùc quang ná ", "Minh Ph­îng cùc quang ngoa ", "Minh Ph­îng cùc quang yªu trôy ", "Minh Ph­îng cùc quang h¹ giíi ",
				},
			},
			{
				szFaction = "Phi Tiªu §­êng M«n",
				nFirstEquipId = 5003,
				tbEquipName =
				{
					" Minh Ph­îng th­íc kim h¹ng liªn ", " Minh Ph­îng th­íc kim qu¸n ", " Minh Ph­îng th­íc kim th­îng giíi ", " Minh Ph­îng th­íc kim hé uyÓn ", " Minh Ph­îng th­íc kim triÒn yªu ",
					" Minh Ph­îng th­íc kim gi¸p ", " Minh Ph­îng th­íc kim phi tiªu ", " Minh Ph­îng th­íc kim ngoa ", " Minh Ph­îng th­íc kim yªu trôy ", " Minh Ph­îng th­íc kim h¹ giíi ",
				},
			},
		},
	},
	[4] =
	{
		szShowName = "Ngò §éc Gi¸o",
		szFaction = "wudu",
		nShortFaction = "wu",
		tbSkill = {353, 355, 711, 1066, 1067},
		tbEquip =
		{
			{
				szFaction = "Ngò §éc Ch­ëng",
				nFirstEquipId = 4963,
				tbEquipName =
				{
					" Minh Ph­îng ®éc sa h¹ng liªn ", " H¹ch Hæ ®éc sa ph¸t ®¸i ", " Minh Ph­îng ®éc sa th­îng giíi ", " Minh Ph­îng ®éc sa hé uyÓn ", " Minh Ph­îng ®éc sa yªu ®¸i ",
					" Minh Ph­îng ®éc sa bÝ trang ", " Minh Ph­îng ®éc sa triÒn thñ ", " Minh Ph­îng ®éc sa ngoa ", " Minh Ph­îng ®éc sa yªu trôy ", " Minh Ph­îng ®éc sa h¹ giíi ",
				},
			},
			{
				szFaction = "Ngò §éc §ao",
				nFirstEquipId = 4973,
				tbEquipName =
				{
					" Minh Ph­îng u linh h¹ng liªn ", " H¹ch Hæ u linh ph¸t ®¸i ", " Minh Ph­îng u linh th­îng giíi ", " Minh Ph­îng u linh hé uyÓn ", " Minh Ph­îng u linh yªu ®¸i ",
					" Minh Ph­îng u linh bÝ trang ", " Minh Ph­îng u linh ®ao ", " Minh Ph­îng u linh ngoa ", " Minh Ph­îng u linh yªu trôy ", " Minh Ph­îng u linh h¹ giíi ",
				},
			},
		},
	},
	[5] =
	{
		szShowName = "Nga Mi",
		szFaction = "emei",
		nShortFaction = "em",
		tbSkill = {380, 328, 712, 1061, 1062, 1114},
		tbEquip =
		{
			{
				szFaction = "Nga Mi KiÕm",
				nFirstEquipId = 4923,
				tbEquipName =
				{
					"Minh Ph­îng l­u v©n ch©u liªn", "Minh Ph­îng l­u v©n ph¸t ®¸i", "Minh Ph­îng l­u v©n th­îng giíi", "Minh Ph­îng l­u v©n hé uyÓn", "Minh Ph­îng l­u v©n yªu ®¸i ",
					"Minh Ph­îng l­u v©n sam", "Minh Ph­îng l­u v©n kiÕm", "Minh Ph­îng l­u v©n ngoa", "Minh Ph­îng l­u v©n béi ", "Minh Ph­îng l­u v©n h¹ giíi ",
				},
			},
			{
				szFaction = "Nga Mi Ch­ëng",
				nFirstEquipId = 4933,
				tbEquipName =
				{
					"Minh Ph­îng hµn ngäc ch©u liªn ", "Minh Ph­îng hµn ngäc ph¸t ®¸i", "Minh Ph­îng hµn ngäc th­îng giíi", "Minh Ph­îng hµn ngäc hé uyÓn", "Minh Ph­îng hµn ngäc yªu ®¸i",
					"Minh Ph­îng hµn ngäc sam", "Minh Ph­îng hµn ngäc triÒn thñ ", "Minh Ph­îng hµn ngäc ngoa ", "Minh Ph­îng hµn ngäc béi ", "Minh Ph­îng hµn ngäc h¹ giíi ",
				},
			},
		},
	},
	[6] =
	{
		szShowName = "Thóy Yªn",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713, 1063, 1065},
		tbEquip =
		{
			{
				szFaction = "Thóy Yªn §ao (Ngo¹i)",
				nFirstEquipId = 4943,
				tbEquipName =
				{
					"Minh Ph­îng hång nhan ch©u liªn ", "Minh Ph­îng hång nhan ph¸t ®¸i", "Minh Ph­îng hång nhan th­îng giíi", "Minh Ph­îng hång nhan hé uyÓn", "Minh Ph­îng hång nhan yªu ®¸i",
					"Minh Ph­îng hång nhan sam", "Minh Ph­îng hång nhan ®ao ", "Minh Ph­îng hång nhan ngoa ", "Minh Ph­îng hång nhan béi ", "Minh Ph­îng hång nhan h¹ giíi ",
				},
			},
			{
				szFaction = "Thóy Yªn Song §ao (Néi)",
				nFirstEquipId = 4953,
				tbEquipName =
				{
					"Minh Ph­îng ¶o th¸i ch©u liªn ", "Minh Ph­îng ¶o th¸i ph¸t ®¸i", "Minh Ph­îng ¶o th¸i th­îng giíi", "Minh Ph­îng ¶o th¸i hé uyÓn", "Minh Ph­îng ¶o th¸i yªu ®¸i",
					"Minh Ph­îng ¶o th¸i sam", "Minh Ph­îng ¶o th¸i ®ao ", "Minh Ph­îng ¶o th¸i ngoa ", "Minh Ph­îng ¶o th¸i béi ", "Minh Ph­îng ¶o th¸i h¹ giíi ",
				},
			},
		},
	},
	[7] =
	{
		szShowName = "C¸i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714, 1073, 1074},
		tbEquip =
		{
			{
				szFaction = "C¸i Bang Ch­ëng",
				nFirstEquipId = 5013,
				tbEquipName =
				{
					" Minh Ph­îng hé ph¸p h¹ng liªn", " Minh Ph­îng hé ph¸p ®Çu hoµn", " Minh Ph­îng hé ph¸p th­îng giíi ", " Minh Ph­îng hé ph¸p hé uyÓn ", " Minh Ph­îng hé ph¸p thóc yªu",
					" Minh Ph­îng hé ph¸p c¸i y", " Minh Ph­îng hé ph¸p triÒn thñ ", " Minh Ph­îng hé ph¸p ngoa ", "Minh Ph­îng hé ph¸p béi ", " Minh Ph­îng hé ph¸p h¹ giíi ",
				},
			},
			{
				szFaction = "C¸i Bang Bæng",
				nFirstEquipId = 5023,
				tbEquipName =
				{
					"Minh Ph­îng trõng giíi h¹ng liªn", "Minh Ph­îng trõng giíi ®Çu hoµn", "Minh Ph­îng trõng giíi th­îng giíi ", "Minh Ph­îng trõng giíi hé uyÓn", "Minh Ph­îng trõng giíi thóc yªu",
					"Minh Ph­îng trõng giíi c¸i y", "Minh Ph­îng trõng giíi tr­îng", "Minh Ph­îng trõng giíi ngoa", "Minh Ph­îng trõng giíi béi", "Minh Ph­îng trõng giíi h¹ giíi ",
				},
			},
		},
	},
	[8] =
	{
		szShowName = "Thiªn NhÉn Gi¸o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715, 1075, 1076},
		tbEquip =
		{
			{
				szFaction = "ChiÕn NhÉn",
				nFirstEquipId = 5033,
				tbEquipName =
				{
					"Minh Ph­îng xÝch minh h¹ng liªn", "H¹ch Hæ xÝch minh kh«i", "Minh Ph­îng xÝch minh th­îng giíi", "Minh Ph­îng xÝch minh hé o¶n", "Minh Ph­îng xÝch minh yªu ®¸i",
					"Minh Ph­îng xÝch minh gi¸p", "Minh Ph­îng xÝch minh th­¬ng", "Minh Ph­îng xÝch minh ngoa", "Minh Ph­îng xÝch minh béi", "Minh Ph­îng xÝch minh h¹ giíi",
				},
			},
			{
				szFaction = "Ma NhÉn",
				nFirstEquipId = 5043,
				tbEquipName =
				{
					"Minh Ph­îng s¸t viªm h¹ng liªn", "H¹ch Hæ s¸t viªm kh«i", "Minh Ph­îng s¸t viªm th­îng giíi", "Minh Ph­îng s¸t viªm hé o¶n", "Minh Ph­îng s¸t viªm yªu ®¸i",
					"Minh Ph­îng s¸t viªm gi¸p", "Minh Ph­îng s¸t viªm ®ao", "Minh Ph­îng s¸t viªm ngoa", "Minh Ph­îng s¸t viªm béi", "Minh Ph­îng s¸t viªm h¹ giíi",
				},
			},
		},
	},
	[9] =
	{
		szShowName = "Vâ §ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716, 1078, 1079},
		tbEquip =
		{
			{
				szFaction = "Vâ §ang KhÝ",
				nFirstEquipId = 5053,
				tbEquipName =
				{
					" Minh Ph­îng tiªn ©m phï ", " Minh Ph­îng tiªn ©m qu¸n", " Minh Ph­îng tiªn ©m th­îng giíi ", " Minh Ph­îng tiªn ©m tô ", " Minh Ph­îng tiªn ©m ph¸p ®¸i ",
					" Minh Ph­îng tiªn ©m ®¹o bµo ", " Minh Ph­îng tiªn ©m kiÕm ", " Minh Ph­îng tiªn ©m ngoa ", " Minh Ph­îng tiªn ©m béi ", " Minh Ph­îng tiªn ©m h¹ giíi ",
				},
			},
			{
				szFaction = "Vâ §ang KiÕm",
				nFirstEquipId = 5063,
				tbEquipName =
				{
					" Minh Ph­îng ®¹o minh phï ", " Minh Ph­îng ®¹o minh qu¸n ", " Minh Ph­îng ®¹o minh th­îng giíi ", " Minh Ph­îng ®¹o minh tô ", " Minh Ph­îng ®¹o minh ph¸p ®¸i ",
					" Minh Ph­îng ®¹o minh ®¹o bµo ", " Minh Ph­îng ®¹o minh kiÕm ", " Minh Ph­îng ®¹o minh ngoa ", " Minh Ph­îng ®¹o minh béi ", " Minh Ph­îng ®¹o minh h¹ giíi ",
				},
			},
		},
	},
	[10] =
	{
		szShowName = "C«n L«n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717, 1080, 1081},
		tbEquip =
		{
			{
				szFaction = "C«n L«n §ao",
				nFirstEquipId = 5073,
				tbEquipName =
				{
					"Minh Ph­îng thiªn canh h¹ng liªn ", "Minh Ph­îng thiªn canh ®¹o qu¸n", "Minh Ph­îng thiªn canh th­îng giíi", "Minh Ph­îng thiªn canh hé uyÓn", "Minh Ph­îng thiªn canh ph¸p ®¸i",
					"Minh Ph­îng thiªn canh ®¹o bµo", "Minh Ph­îng thiªn canh ®ao", "Minh Ph­îng thiªn canh ngoa", "Minh Ph­îng thiªn canh béi", "Minh Ph­îng thiªn canh h¹ giíi",
				},
			},
			{
				szFaction = "C«n L«n KiÕm",
				nFirstEquipId = 5083,
				tbEquipName =
				{
					"Minh Ph­îng ng¹o s­¬ng h¹ng liªn ", "Minh Ph­îng ng¹o s­¬ng ®¹o qu¸n", "Minh Ph­îng ng¹o s­¬ng th­îng giíi", "Minh Ph­îng ng¹o s­¬ng hé uyÓn", "Minh Ph­îng ng¹o s­¬ng ph¸p ®¸i",
					"Minh Ph­îng ng¹o s­¬ng ®¹o bµo", "Minh Ph­îng ng¹o s­¬ng kiÕm ", "Minh Ph­îng ng¹o s­¬ng ngoa ", "Minh Ph­îng ng¹o s­¬ng béi", "Minh Ph­îng ng¹o s­¬ng h¹ giíi",
				},
			},
		},
	},
}

local tbFactionSeries =
{
[1] = {1, 2},
[2] = {3, 4},
[3] = {5, 6},
[4] = {7, 8},
[5] = {9, 10},
}

function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end

function choose_faction()
local nFaction = GetLastFactionNumber()
if nFaction == 10 then
	Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i råi")
return end
	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i råi.")
		return
	end
	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Trë vª", dialog_main})
	tinsert(tbOpt, {"Tho¸t."})
	CreateNewSayEx("<npc>Mét khi gia nhËp m«n ph¸i kh«ng thÓ thay ®æi, h·y suy nghÜ kü.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<npc>X¸c nhËn muèn gia nhËp m«n ph¸i ?<color=yellow>%s<color> m«n ph¸i?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X¸c nhËn!", do_set_faction, {nIndex}},
		{"Trë vª.", choose_faction},
		{"Tho¸t."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
		return
	end
	local nResult = SetFaction(%tbFaction[nIndex].szFaction)
	if nResult == 0 then
		return
	end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", %tbFaction[nIndex].nShortFaction, 0)
	for i=1, getn(%tbFaction[nIndex].tbSkill) do
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	Talk(1, "KickOutSelf", format("Ng­¬i ®· gia nhËp thµnh c«ng ph¸i %s", %tbFaction[nIndex].szShowName))
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DisposeItem()
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn thËn trong viÖc hñy vËt phÈm!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM Hñy Item "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
	end--for
	Msg2Player("Thao t¸c hñy vËt phÈm thµnh c«ng")
	Talk(1, "", "Thao t¸c thµnh c«ng, kiÓm tra l¹i!");	
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function BangHoi()
local strTongName = GetTongName()
local tszTitle = "Chµo Mõng B¹n §· Tham Gia HÖ Thèng <color=yellow>Bang Héi<color>"
	if (strTongName == nil or strTongName == "") then
		Say(tszTitle,6,
		"NhËn §iÒu KiÖn T¹o Bang Héi/dmcreatetong",
		"Gia NhËp Bang Héi/dmjointong",
		"T¹o bang héi/dmcreateit",
		"KÕt Thóc §èi Tho¹i/No")
	end
end

function dmcreatetong()
	if  GetCamp() ~= 0 then
		if GetLevel() >= 50 then
			SetCamp(4)
			SetCurCamp(4)
			AddRepute(450)
			AddLeadExp(10000000)
			AddEventItem(195)
			Msg2Player("<color=yellow>Ng­êi §· Héi §ñ TÊt C¶ §iªu KiÖn CÓ T¹o Bang Héi<color>")
		else
				Talk(1,"","<bclr=red>"..myplayersex().." Ch­a §ñ CÊp 50")
		end
	else
		Talk(1,"","<bclr=red>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ NhËn §iÒu KiÖn Bang Héi")
	end
end

function dmjointong()
local n_fac = GetLastFactionNumber();
	if (n_fac >= 0) and (n_fac <= 10) then
		if GetLevel() >= 50 then
			SetCamp(4) SetCurCamp(4) ConsumeEquiproomItem(200,4,417,1,-1) Msg2Player("Chóc Mõng "..myplayersex().." §· XuÊt S­ Thµnh C«ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 50 H·y Cè G¾ng RÌn LuyÖn Thªm Råi §Õn T×m Ta")
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i HoÆc §· Cã Bang Héi\n                            Kh«ng ThÓ NhËn §iÒu KiÖn")
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
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NapThe()
	local tbOpt = {
		{"N¹p 10.000 => 2 KNB",Nap10},
		{"N¹p 20.000 => 4 KNB",Nap20},
		{"N¹p 50.000 => 10 KNB",Nap50},
		{"N¹p 100.000 => 20 KNB",Nap100},
		{"N¹p 200.000 => 40 KNB",Nap200},
		{"N¹p 500.000 => 100 KNB",Nap500},
		{"N¹p 1000.000 => 200 KNB",Nap1000},
		{"N¹p 2000.000 => 400 KNB",Nap2000},
		{"Hñy Bá",},
	}
	CreateNewSayEx("<color=pink>"..myplayersex().." Muèn N¹p Møc Nµo H·y Lùa Chän", tbOpt)
end
--------------------------------------------------------------------------------------------------------------
function Nap10() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>1<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,1) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,10) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>1<color> Kim Nguyªn B¶o Thµnh C«ng");
end
----------------------------------------------------------------------------------------------------------------------------
function Nap20() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>2<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,2) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,20) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>2<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------------
function Nap50() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>5<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,5) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,50) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>10<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------
function Nap100() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>10<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,10) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,100) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>10<color> Kim Nguyªn B¶o Thµnh C«ng");
end
--------------------------------------------------------------------------------------------------------------------------
function Nap200() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>20<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,40) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,200) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>40<color> Kim Nguyªn B¶o Thµnh C«ng");
end
--------------------------------------------------------------------------------------------------------------------------
function Nap500() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>100<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,100) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,500) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>100<color> Kim Nguyªn B¶o Thµnh C«ng");
end
---------------------------------------------------------------------------------------------------------------------------
function Nap1000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>200<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,200) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,1000) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>200<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------
function Nap2000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>400<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,400) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,2000) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>400<color> Kim Nguyªn B¶o Thµnh C«ng");
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NangDanhHieu6() 

tbAwardVip6 = {
	{szName="B¶o R­¬ng Minh Ph­îng H¹ng Liªn",tbProp={6,1,4480,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Kh«i",tbProp={6,1,4481,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Th­îng Giíi",tbProp={6,1,4482,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Hé UyÓn",tbProp={6,1,4483,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Yªu §¸i",tbProp={6,1,4484,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Kh¶i",tbProp={6,1,4485,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Vò KhÝ",tbProp={6,1,4486,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Hµi",tbProp={6,1,4487,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Béi",tbProp={6,1,4488,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng H¹ Giíi",tbProp={6,1,4489,0,0},nCount=1,tbParam={10,0,0,0,0,0},nBindState = -2},
}

gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
local FreeCell = CalcFreeItemCellCount()
if (FreeCell >= 20) and (GetExtPoint(3)<6)then
	PlayerFunLib:AddSkillState(1507,20,3,559872000,1)
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Danh HiÖu Vip 6 Thµnh C«ng");
	tbAwardTemplet:GiveAwardByList(tbAwardVip6,"PhÇn Th­ëng §¹t M«c 1.500.000 Ngµn")
	AddExtPoint(2,1200-GetExtPoint(2));
  AddExtPoint(3,6-GetExtPoint(3)) ;
else
PlayerIndex=gmidx 
Talk(1,"","<bclr=violet>"..myplayersex().." H·y nãi game thñ ®Ó trèng 20 ¤,hoÆc ®· lµ Vip 6 ")
end
PlayerIndex=gmidx 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Danh HiÖu Vip 6 Thµnh C«ng");
end
function ChuyenKhoanKhongKNB()
AskClientForNumber("ChuyenKhoanKhongKNB_d",1,5000,"Nhap So Tien Can Them") 
end
function ChuyenKhoanKhongKNB_d(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color>K Thµnh C«ng");
if (GetExtPoint(2) < 32768) then AddExtPoint(2,num) end
PlayerIndex=gmidx 
--WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 20 KNB\n");
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color>K Thµnh C«ng");
end
function ChuyenKhoan()
	local tbOpt = {
		{"ChuyÓn Kho¶n 10.000 => 20 KNB",CK10},
		{"ChuyÓn Kho¶n 20.000 => 40 KNB",CK20},
		{"ChuyÓn Kho¶n 50.000 => 100 KNB",CK50},
		{"ChuyÓn Kho¶n 100.000 => 200 KNB",CK100},
		{"ChuyÓn Kho¶n 200.000 => 400 KNB",CK200},
		{"ChuyÓn Kho¶n 500.000 => 1000 KNB",CK500},
		{"ChuyÓn Kho¶n 1000.000 => 2000 KNB",CK1000},
		{"ChuyÓn Kho¶n 2000.000 => 4000 KNB",CK2000},
		{"Hñy Bá",},
	}
	CreateNewSayEx("<color=pink>"..myplayersex().." Muèn ChuyÓn Kho¶n Møc Nµo H·y Lùa Chän\nH×nh Thøc ChuyÓn Kho¶n §­îc Nh©n 1.5 LÇn Trªn TØ Gi¸\nN¹p...!", tbOpt)
end
--------------------------------------------------------------------------------------------------------------

function CK10() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>20<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,20) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,10) end
PlayerIndex=gmidx 
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 20 KNB\n");
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>20<color> Kim Nguyªn B¶o Thµnh C«ng");
end
----------------------------------------------------------------------------------------------------------------------------
function CK20() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>40<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,40) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,20) end
PlayerIndex=gmidx 
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 40 KNB\n");
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>40<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------------
function CK50() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>100<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,100) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,50) end
PlayerIndex=gmidx 
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 100 KNB\n");
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>50<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------
function CK100() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>200<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,200) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,100) end
PlayerIndex=gmidx 
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 200 KNB\n");
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>200<color> Kim Nguyªn B¶o Thµnh C«ng");
end
--------------------------------------------------------------------------------------------------------------------------
function CK200() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>400<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,400) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,200) end
PlayerIndex=gmidx 
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 400 KNB\n");
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>400<color> Kim Nguyªn B¶o Thµnh C«ng");
end
--------------------------------------------------------------------------------------------------------------------------
function CK500() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>1000<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,1000) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,500) end
PlayerIndex=gmidx 
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 1000 KNB\n");
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>500<color> Kim Nguyªn B¶o Thµnh C«ng");
end
---------------------------------------------------------------------------------------------------------------------------
function CK1000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>2000<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,2000) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,1000) end
PlayerIndex=gmidx 
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 2000 KNB\n");
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>2000<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------
function CK2000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>4000<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,4000) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,2000) end
PlayerIndex=gmidx 
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 4000 KNB\n");
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>4000<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------------

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

-------------------------------------------------------------------------------------------------------------------------------
function AddKNB_FullHD()
local szTitle = "H·y Chän Chøc N¨ng"
	local tbOpt = {			
		{"N¹p §iÓm VIP",AddDiemVip},
		{"Xãa §iÓm Vip",LayDiemVip},
--		{"N¹p Kim Nguyªn B¶o",AddKNB},			
		{"Xãa Kim Nguyªn B¶o",LayKNB},
	--	{"N¹p TiÒn §ång",AddXu},
		{"Xãa TiÒn §ång",LayXu},
		{"N¹p Ng©n L­îng",AddKV},
		{"Xãa Ng©n L­îng",LayKV},
		{"N¹p §iÓm Phóc Lîi",AddDiemPhucLoi},
		{"Xãa §iÓm Phóc Lîi",LayDiemPhucLoi},
		{"N¹p §iÓm Tèng Kim",AddDiemTK},
		{"Xãa §iÓm Tèng Kim",LayDiemTK},
		{"Xãa HÖ Thèng Vip",DellVip},
		{"Xãa Task Nh©n VËt",DellTask},
		{"Tho¸t",},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
-------------------------------------------------------------------------------------
function AddDiemVip() 
	AskClientForNumber("AddDiemVip1",0,100,"Sè §iÓm VIP") 
end 
function AddDiemVip1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
if num==0 then
	for i=0,11 do
	RemoveSkillState(1648+i,20,3,559872000,1) 
	end
	PayExtPoint(3,GetExtPoint(3))
	--Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §· §­îc Xãa Vip"); 
	PlayerIndex=gmidx 
	Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §· §­îc Xãa Vip"); 
else
for i=0,11 do
RemoveSkillState(1648+i,20,3,559872000,1) 
end
PlayerFunLib:AddSkillState(1647+num,20,3,559872000,1)-- PayExtPoint(3,GetExtPoint(3)) AddExtPoint(3,num-GetExtPoint(3))
--Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM N©ng Thµnh C«ng Vip <color=metal>"..num..""); 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM N©ng Thµnh C«ng Vip <color=metal>"..num..""); 
end
end;

function XoaDiemVip()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
PayExtPoint(1,GetExtPoint(1))
PayExtPoint(2,GetExtPoint(2))
PayExtPoint(3,GetExtPoint(3))
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Xãa Th«ng Tin Vip Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc Xãa Th«ng Tin Vip Thµnh C«ng"); 
end
-------------------------------------------------------------------------------------------------------------------------
function LayDiemVip() 
	AskClientForNumber("LayDiemVip1",0,2000,"Sè §iÓm VIP") 
end 
function LayDiemVip1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> §iÓm Vip Thµnh C«ng");
SetTask(5991,GetTask(5991)-num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> §iÓm Vip Thµnh C«ng"); 
end;
--------------------------------------------------------------------------------------------------------------------------
function AddKNB() 
AskClientForNumber("AddKNB1",0,5000,"Sè l­îng KNB") 
end 
function AddKNB1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> Kim Nguyªn B¶o Thµnh C«ng"); 
AddExtPoint(1,num)

PlayerIndex=gmidx 
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M _ %d/%m/%Y").."   "..GetIP().."\t Da Them "..ObjAccount.."  "..ObjName.." "..num.." KNB\n");
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> Kim Nguyªn B¶o Thµnh C«ng"); 

end;
---------------------------------------------------------------------------------------------------------------------------------
function LayKNB() 
AskClientForNumber("LayKNB1",0,2000,"Sè l­îng KNB") 
end 
function LayKNB1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> Kim Nguyªn B¶o Thµnh C«ng"); 
for i = 1, num do
	ConsumeEquiproomItem(1,4,343,1,-1)
end
--PayExtPoint(1,num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> Kim Nguyªn B¶o Thµnh C«ng"); 
end;
------------------------------------------------------------------------------------------------------------------------------------
function AddXu() 
	AskClientForNumber("AddXu1",0,2000,"Sè l­îng Xu") 
end 
function AddXu1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng"); 
for i = 1, num do
AddStackItem(1,4,417,1,1,0,0)
end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng"); 
end;
---------------------------------------------------------------------------------------------------------------------------------
function LayXu() 
	AskClientForNumber("LayXu1",0,2000,"Sè l­îng Xu") 
end 
function LayXu1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng");
for i = 1, num do
ConsumeEquiproomItem(1,4,417,1,-1)
end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng"); 
end;
-----------------------------------------------------------------------------------------------------------------------------------
function AddKV() 
	AskClientForNumber("AddKV1",0,999999999,"NhËp Sè L­îng") 
end 
function AddKV1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> L­îng Thµnh C«ng"); 
Earn(num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> L­îng Thµnh C«ng"); 
end;
---------------------------------------------------------------------------------------------------------------------------------
function LayKV() 
	AskClientForNumber("LayKV1",0,999999999,"NhËp Sè L­îng") 
end 
function LayKV1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> L­îng Thµnh C«ng");
Pay(num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> L­îng Thµnh C«ng"); 
end;
-----------------------------------------------------------------------------------------------------------------------------------
function AddDiemPhucLoi() 
	AskClientForNumber("AddDiemPhucLoi1",0,50000000,"NhËp Sè §iÓm") 
end 
function AddDiemPhucLoi1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> §iÓm Phóc Lîi Thµnh C«ng");
SetTask(5994,GetTask(5994)+num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> §iÓm Phóc Lîi Thµnh C«ng"); 
end;
-------------------------------------------------------------------------------------------------------------------------
function LayDiemPhucLoi() 
	AskClientForNumber("LayDiemPhucLoi1",0,50000000,"NhËp Sè §iÓm") 
end 
function LayDiemPhucLoi1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> §iÓm Phóc Lîi Thµnh C«ng");
SetTask(5994,GetTask(5994)-num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> §iÓm Phóc Lîi Thµnh C«ng"); 
end;
------------------------------------------------------------------------------------------------------------------------------------
function AddDiemTK() 
	AskClientForNumber("AddDiemTK1",0,1000000,"NhËp Sè §iÓm") 
end 
function AddDiemTK1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> §iÓm Tèng Kim Thµnh C«ng");
SetTask(747,GetTask(747)+num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> §iÓm Tèng Kim Thµnh C«ng"); 
end
-------------------------------------------------------------------------------------------------------------------------
function LayDiemTK() 
	AskClientForNumber("LayDiemTK1",0,1000000,"NhËp Sè §iÓm") 
end 
function LayDiemTK1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> §iÓm Tèng Kim Thµnh C«ng");
SetTask(747,GetTask(747)-num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> §iÓm Tèng Kim Thµnh C«ng"); 
end
-----------------------------------------------------------------------------------------------------------------------------------
function DellVip() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Xãa §iÓm Vip Thµnh C«ng");
SetTask(5991,0)
SetTask(5990,0)
for i = 1502,1511 do
RemoveSkillState(i,20,3,559872000,1)
end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Xãa §iÓm Vip Thµnh C«ng"); 
end;
------------------------------------------------------------------------------------------------------------------------------
function DellTask()
AskClientForNumber("DellTask1",0,5999,"NhËp Sè Task")
end
function DellTask1(num)
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(200)
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Xãa Task Thµnh C«ng")
SetTask(num, 0)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Xãa Task Thµnh C«ng")
end
-------
function HoTroTanThuMoi()
	local tbAward = {
	--	{szName="NhÊt Kû Cµn Kh«n Phï", tbProp={6,1,2126,1,0,0},nCount = 30,nExpiredTime=10*24*60},
	--	{szName="Long Dam", tbProp={0,5943},nCount = 1,nExpiredTime=30*24*60,nQuality=1,nBindState = -2},
	--	{szName="NhÉn Kim Quang", tbProp={0,3771},nCount = 2,nExpiredTime=30*24*60,nQuality=1,nBindState = -2},
	--	{szName="Han Huyet", tbProp={0,5214},nCount = 1,nExpiredTime=30*24*60,nQuality=1,nBindState = -2},
	--	{szName="Phi Phong 2", tbProp={0,3468},nCount = 1,nQuality=1,nBindState = -2},
	--	{szName="TÈy tuû kinh", tbProp={6,1,22,1,0,0},nCount = 15,nExpiredTime=7*24*60,nBindState = -2},
	--	{szName="Vâ l©m mËt tÞch", tbProp={6,1,26,1,0,0},nCount = 15,nExpiredTime=7*24*60,nBindState = -2},
----	{szName="R­¬ng vò khÝ HKMP Max", tbProp={6,1,4402,1,0,0},nCount = 1,nBindState = -2},
--	{szName="LÏ Bao MÆt N¹ Tèng Kim", tbProp={6,1,4443,1,0,0},nCount = 1,nBindState = -2},
	--	{szName="tran phai linh duoc", tbProp={6,1,1705,1,0,0},nCount = 60},
	--	{szName="tran phai linh duoc", tbProp={6,1,1704,1,0,0},nCount = 60},
	--	{szName="tin vat mon phai", tbProp={6,1,1670,1,0,0},nCount = 2},
	--	{szName="Tu Luyen Chau", tbProp={6,1,1827,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},
		--{szName="Huy HiÖu Sao Vµng", tbProp={6,1,4378,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},
	--	{szName="B¶o r­¬ng giíi h¹n lùa chän ", tbProp={6,1,4374,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},
--		{szName="Tói tÝch lòy Tèng Kim", tbProp={6,1,4361,1,0,0},nCount = 10,nExpiredTime=1*24*60,nBindState = -2},
	--	{szName="B«n Tiªu", tbProp={0,10,6,10,0,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},
	--	{szName="MÆt N¹ ChiÕn Tr­êng Th¸nh Gi¶",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=30*24*60,nBindState = -2},
	--	{szName="ChiÕn cæ ", tbProp={6,1,156,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
	--	{szName="Phong V©n Phæ Phßng hoµn", tbProp={6,1,191,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
	--	{szName="Phong V©n B¨ng Phßng hoµn", tbProp={6,1,192,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
	--	{szName="Chuyªn dïng cho Phong V©n L«i phßng hoµn", tbProp={6,1,193,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
	--	{szName="Chuyªn dïng cho Phong V©n Háa phßng hoµn", tbProp={6,1,194,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
		--{szName="Chuyªn dïng cho Phong V©n §éc phßng hoµn", tbProp={6,1,195,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
--	{szName="KÝch C«ng Trî Lùc Hoµn", tbProp={6,1,2952,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
	--	{szName="¢m D­¬ng Ho¹t HuyÕt §¬n", tbProp={6,1,2953,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},		
	}
	
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng GiftCode")

PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> NhËn Hç Trî  Live Stream Thµnh C«ng")
end

function HoTroTanThuMoi2()
	local tbAward = {
	--	{szName="NhÊt Kû Cµn Kh«n Phï (7 Ngµy)", tbProp={6,1,4364,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},
		{szName="le bao mat na", tbProp={6,1,4443,1,0,0},nCount = 1,nExpiredTime=7*24*60},
--		{szName="vlmt", tbProp={6,1,26,1,0,0},nCount = 15,nExpiredTime=7*24*60,nBindState = -2},
	--	{szName="vlmt", tbProp={0,3772},nCount = 2,nExpiredTime=7*24*60,nQuality=1,nBindState = -2},
	--	{szName="Huy HiÖu Sao Vµng", tbProp={6,1,4378,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},
	--	{szName="2 r­¬ng h¹n chÕ", tbProp={6,1,4369,1,0,0},nCount = 2,nExpiredTime=7*24*60,nBindState = -2},
	--	{szName="tin vat mon phai", tbProp={6,1,1670,1,0,0},nCount = 2,nExpiredTime=30*24*60,nBindState = -2},
--		{szName="Tói tÝch lòy Tèng Kim", tbProp={6,1,4361,1,0,0},nCount = 10,nExpiredTime=1*24*60,nBindState = -2},
--		{szName="Sieu Quang", tbProp={0,10,13,10,0,0,0},nCount = 1,nExpiredTime=1*24*60,nBindState = -2},
	--	{szName="MÆt N¹ ChiÕn Tr­êng Th¸nh Gi¶",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=7*24*60,nBindState = -2},
	--	{szName="ChiÕn cæ ", tbProp={6,1,156,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
	--	{szName="Phong V©n Phæ Phßng hoµn", tbProp={6,1,191,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
	--	{szName="Phong V©n B¨ng Phßng hoµn", tbProp={6,1,192,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
	--	{szName="Chuyªn dïng cho Phong V©n L«i phßng hoµn", tbProp={6,1,193,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
	---	{szName="Chuyªn dïng cho Phong V©n Háa phßng hoµn", tbProp={6,1,194,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
	--	{szName="Chuyªn dïng cho Phong V©n §éc phßng hoµn", tbProp={6,1,195,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
	--	{szName="KÝch C«ng Trî Lùc Hoµn", tbProp={6,1,2952,1,0,0},nCount = 50,nExpiredTime=10*24*60,nBindState = -2},
		--{szName="¢m D­¬ng Ho¹t HuyÕt §¬n", tbProp={6,1,2953,1,0,0},nCount = 50,nExpiredTime=10*24*60,nBindState = -2},		
	--	{szName="Cong Kick", tbProp={6,1,1704,1,0,0},nCount = 15,nExpiredTime=10*24*60,nBindState = -2},		
	--	{szName="¢m D­¬ng", tbProp={6,1,1705,1,0,0},nCount = 15,nExpiredTime=10*24*60,nBindState = -2},		
		{szName="Kim Quang", tbProp={0,3771},nQuality=1,nCount = 2,nExpiredTime=15*24*60},		
	}
	
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
	if CalcFreeItemCellCount() <= 20 then
	Say("Kh«ng §ñ 20 ¤ Trèng, xãa vËt phÈm råi nhê GM add l¹i")
	return
	end
tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng GiftCode")

PlayerIndex=gmidx 
WriteLogPro("dulieu/admin_buff_ho_tro.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M_%d-%m-%Y").."   "..GetIP().."\t ®· hç trî "..ObjAccount.."  "..ObjName.." 1 MÆt n¹ + 2 NhÉn Kim Quang 15 Ngµy \n");
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> NhËn Hç Trî Thµnh C«ng")
end

function NhanHoTroTrungSinh3()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
for i=3000,3500 do
if GetTask(i)>=1 then
PlayerIndex=gmidx 
Msg2Player("---------Task-"..i.."--------Gia Tri:"..GetTask(i).."------------")
end
end
PlayerIndex=gmidx 

end

--------------------------------------------------------ReLoadFile---------------------------------------
function NhapDuongDanFileCanReLoadOK(Link)
        local ReloadScript = LoadScript(Link);
        if (FALSE(ReloadScript )) then
            Msg2Player("XuÊt hiÖn lçi hoÆc sai ®­êng dÉn, kh«ng thÓ Reload file!<enter><color=green>"..Link.."");
        else
            Msg2Player("<color=green>Reload thµnh c«ng Script<color><enter><color=green>"..Link.."");
        end
end

function Reloadfile()
    return AskClientForString("NhapDuongDanFileCanReLoadOK", "", 1, 500, "<#>NhËp ®­êng dÉn")
end  
---------------------------------------------------------------------------------------------------------------------------------------------

function FALSE(value)
	if (value == 0 or value == nil or value == "") then
		return 1
	else
		return nil
	end
end

----------------------------------------------------------------------------------------------------

function FixVongSangChuyenSinh()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
local nTransLife = ST_GetTransLifeCount()
	for i=1,5 do
	RemoveSkillState(1528+i,1,3,559872000,1)
	end
	if (nTransLife == 1) then
	--PlayerFunLib:AddSkillState(1529,1,3,559872000,1)
	elseif (nTransLife == 2) then
--		PlayerFunLib:AddSkillState(1530,1,3,559872000,1)
	elseif (nTransLife == 3) then
--		PlayerFunLib:AddSkillState(1531,1,3,559872000,1)
	elseif (nTransLife == 4) then
--		PlayerFunLib:AddSkillState(1532,1,3,559872000,1)
	elseif (nTransLife == 5) then
--		PlayerFunLib:AddSkillState(1533,1,3,559872000,1)
end
	
Msg2Player("Fix OK")
PlayerIndex=gmidx 
Msg2Player("Fix OK")
end
----------------------------------------------------------------------------------------------------
function ThemVongSangChuyenSinh()
local szTitle = "H·y Chän Chøc N¨ng"
	local tbOpt = {			
		{"Thªm Vßng S¸ng ChuyÓn Sinh 1",ThemVongSang1},
		{"Thªm Vßng S¸ng ChuyÓn Sinh 2",ThemVongSang2},
		{"Thªm Vßng S¸ng ChuyÓn Sinh 3",ThemVongSang3},
		{"Thªm Vßng S¸ng ChuyÓn Sinh 4",ThemVongSang4},
		{"Thªm Vßng S¸ng ChuyÓn Sinh 5",ThemVongSang5},
		{"Xãa HÕt Vßng S¸ng",XoaHetVongSang},		
		{"Tho¸t",},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function ThemVongSang1()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
PlayerFunLib:AddSkillState(1529,1,3,559872000,1)
Msg2Player("Fix OK")
PlayerIndex=gmidx 
Msg2Player("Fix OK")
end

function ThemVongSang2()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
PlayerFunLib:AddSkillState(1530,1,3,559872000,1)
Msg2Player("Fix OK")
PlayerIndex=gmidx 
Msg2Player("Fix OK")
end

function ThemVongSang3()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
PlayerFunLib:AddSkillState(1531,1,3,559872000,1)
Msg2Player("Fix OK")
PlayerIndex=gmidx 
Msg2Player("Fix OK")
end

function ThemVongSang4()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
PlayerFunLib:AddSkillState(1532,1,3,559872000,1)
Msg2Player("Fix OK")
PlayerIndex=gmidx 
Msg2Player("Fix OK")
end

function ThemVongSang5()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
PlayerFunLib:AddSkillState(1533,1,3,559872000,1)
Msg2Player("Fix OK")
PlayerIndex=gmidx 
Msg2Player("Fix OK")
end

function XoaHetVongSang()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
for i=1,5 do
RemoveSkillState(1528+i,1,3,559872000,1)
end
Msg2Player("Fix OK")
PlayerIndex=gmidx 
Msg2Player("Fix OK")
end
----------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end


function NhapTenNguoiCanXem()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 100) then -- gia xu
		Talk(1,"","CÇn cã <color=pink>100<color> TiÒn ®ång míi cã thÓ xem toµn bé th«ng tin vÒ tiÒm n¨ng hiÖn t¹i cña 1 nh©n vËt cÇn t×m.NÕu t×m thÊt b¹i sÏ kh«ng mÊt xu - t×m thµnh c«ng sÏ mÊt 100 tiÒn ®ång vµ ng­êi bÞ xem tiÒm n¨ng sÏ nhËn ®­îc 50 tiÒn ®ång.") -- go
	return
end
	local a = GetTask(5864)
	local b = GetGameTime()
	local c = 0
	
	if (b - a) < 25 then
		_, c = bil.SplitTime(25 - (b - a))
		return bil.Talk("B¹n ph¶i chê thªm "..c.." míi cã thÓ t×m lÇn kÕ tiÕp!")
	end
	
	SetTask(5864, b)
	return AskClientForString("KiemTraTiemNang", "", 1, 20, "NhËp tªn nh©n vËt");
end

function KiemTraTiemNang(Name)
	local Keywk1 = strfind(Name, "/")
	if FALSE(Keywk1) then
		return BatDauKiemTra(Name)
	end
	local Name = strsub(Name, Keywk1 + 1)
	return BatDauKiemTra(Name)
end


function BatDauKiemTra(rolename)
	if (FALSE(rolename)) then rolename = GetName();end
	if XemCoOnline(rolename) then return end
	SetTaskTemp(245, SearchPlayer(rolename));
	local PlayerIndexGamer = GetTaskTemp(245);
	local img = "<link=image[0,0]:\\spr\\skill\\others\\title_zw.spr>"
	local strTitle = ""..img.."Chµo mõng b¹n ®Õn víi <color=green>Vâ L©m TruyÒn Kú<color> H·y chóng tá m×nh lµ 1 gamer ch©n chÝnh ®õng v× thua ng­êi kh¸c mµ n¶n chÝ trai.QuyÕt t©m Êt chiÕn th¾ng tr­íc mäi cao thñ.Kh«ng cã kÎ nµo yÕu nhÊt chØ cã nh÷ng kÎ kh«ng biÕt chøng tá tr×nh pk cña m×nh."
	local tbOpt = 
	{
		--{"Set Camp cho nh©n vËt "..rolename.."",bilSetCamp4Player},
		{"KÕt thóc ®èi tho¹i.", OnCancel},
	}
	CreateNewSayEx(strTitle , tbOpt)
ConsumeEquiproomItem(100,4,417,1,1)
Msg2SubWorld(""..GetName()..": <color=Blue>§· KiÓm Tra TiÒm N¨ng Cña Nh©n VËt <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color=Blue> KÕt Qu¶ Nh­ Sau:") 
Msg2SubWorld("<color=Pink>Søc M¹nh  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetStrg).." <pic=48>") 
Msg2SubWorld("<color=Pink>Sinh KhÝ  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetVit).." <pic=48>")
Msg2SubWorld("<color=Pink>Th©n Ph¸p :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetDex).." <pic=48>") 
Msg2SubWorld("<color=Pink>Néi C«ng  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetEng).." <pic=48>")
Msg2SubWorld("<color=Pink>Cßn L¹i   :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetProp).." <pic=48>")
Msg2SubWorld("<color=Pink>Cßn L¹i   :<color=green> "..CallPlayerFunction(PlayerIndexGamer, sotiendong ).." <pic=48>")

Msg2SubWorld("=> Nh©n VËt <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color=Blue> NhËn §­îc <color=green>50<color> TiÒn §ång") 

AddGlobalCountNews("<color=Pink>Søc M¹nh Nh©n VËt <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetStrg).." <pic=48><pic=26>") 
AddGlobalCountNews("<color=Pink>Sinh KhÝ Nh©n VËt <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetVit).." <pic=48><pic=15>")
AddGlobalCountNews("<color=Pink>Th©n Ph¸p Nh©n VËt <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).." :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetDex).." <pic=48><pic=18>") 
AddGlobalCountNews("<color=Pink>Néi C«ng Nh©n VËt<color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetEng).." <pic=48><pic=22>")

callPlayerFunction(PlayerIndexGamer, AddStackItem,50,4, 417, 1, 1, 0, 0, 0)
CallPlayerFunction(PlayerIndexGamer, Say, "<color=green>Chóc mõng b¹n nhËn ®­îc 50 tiÒn ®ång khi cã ai ®ã võa xem th«ng tin vÒ b¶ng tiÒm n¨ng cña b¹n..", 0);
end


function XemCoOnline(Name)
	if CallPlayerFunction(SearchPlayer(Name), GetTask, 5998) == 1 then
		local bilPlayerOfflineLive_W, bilPlayerOfflineLive_X, bilPlayerOfflineLive_Y = CallPlayerFunction(SearchPlayer(Name), GetWorldPos)
		Say("<color=pink>Nh©n vËt ®ang ñy th¸c kh«ng thÓ kiÓm tra lóc nµy")
		return 1
	end
	if (SearchPlayer(Name) <= 0) or (SearchPlayer(Name) == nil) or (SearchPlayer(Name) == "") or not (SearchPlayer(Name)) then
		Talk(1, "", "<color=pink>Cã thÓ b¹n ®¸nh : Sai tªn nh©n vËt - nh©n vËt kh«ng tån t¹i - nh©n vËt ®· rêi m¹ng - hoÆc b¹n kh«ng ®øng cïng b¶n ®å víi nh©n vËt cÇn kiÓm tra")
		return 1
	else
		return nil
	end
end
function LayDoTheoID()			
local szTitle = "Vâ L©m h©n hoan chµo ®ãn c¸c vÞ anh hïng b¹n h÷u ®Õn víi server.";
local tbOpt = 
{
{"LÊy §å Hoµng Kim (-1)",LayMenuHKMP},
{"LÊy §å Queskey (ID)",LayMenuQueskey},
{"LÊy §å Magic (ID)",LayMenuMagic},
{"LÊy Ngùa (ID)",LayMenuNgua},
{"LÊy MÆt N¹ (ID)",LayMenuMatNa},
{"Tho¸t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end


function LayMenuMatNa()			
local szTitle = "Vâ L©m h©n hoan chµo ®ãn c¸c vÞ anh hïng b¹n h÷u ®Õn víi server.";
local tbOpt = 
{
{"LÊy 1 MÆt N¹ Ko HSD",LayMatNaHan},
{"LÊy 1 MÆt N¹ HSD 1 Ngµy",LayMatNaHSD1},
{"LÊy 1 MÆt N¹ HSD 3 Ngµy",LayMatNaHSD3},
{"LÊy 1 MÆt N¹ HSD 7 Ngµy",LayMatNaHSD7},
{"LÊy 1 MÆt N¹ HSD 15 Ngµy",LayMatNaHSD15},
{"LÊy 1 MÆt N¹ HSD 30 Ngµy",LayMatNaHSD30},
{"Tho¸t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end


function LayMatNaHan()
AskClientForNumber("LayMatNaHan1",1,10000000,"ID Item")
end
function LayMatNaHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,11,num,1,0},nCount=1,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  mÆt n¹ ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function LayMatNaHSD1()
AskClientForNumber("LayMatNaHSD11",1,10000000,"ID Item")
end
function LayMatNaHSD11(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,11,num,1,0},nCount=1,nExpiredTime=1440,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  mÆt n¹ ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function LayMatNaHSD3()
AskClientForNumber("LayMatNaHSD31",1,10000000,"ID Item")
end
function LayMatNaHSD31(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,11,num,1,0},nCount=1,nExpiredTime=1440*3,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  mÆt n¹ ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function LayMatNaHSD7()
AskClientForNumber("LayMatNaHSD71",1,10000000,"ID Item")
end
function LayMatNaHSD71(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,11,num,1,0},nCount=1,nExpiredTime=1440*7,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  mÆt n¹ ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function LayMatNaHSD15()
AskClientForNumber("LayMatNaHSD151",1,10000000,"ID Item")
end
function LayMatNaHSD151(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,11,num,1,0},nCount=1,nExpiredTime=1440*15,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  mÆt n¹ ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function LayMatNaHSD30()
AskClientForNumber("LayMatNaHSD301",1,10000000,"ID Item")
end
function LayMatNaHSD301(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,11,num,1,0},nCount=1,nExpiredTime=1440*30,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  mÆt n¹ ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function LayMenuNgua()			
local szTitle = "Vâ L©m h©n hoan chµo ®ãn c¸c vÞ anh hïng b¹n h÷u ®Õn víi server.";
local tbOpt = 
{
{"LÊy 1 Ngua Ko HSD",LayNguaKoHan},
{"LÊy 1 Ngua HSD 1 Ngµy",LayNguaHSD1},
{"LÊy 1 Ngua HSD 3 Ngµy",LayNguaHSD3},
{"LÊy 1 Ngua HSD 7 Ngµy",LayNguaHSD7},
{"LÊy 1 Ngua HSD 15 Ngµy",LayNguaHSD15},
{"LÊy 1 Ngua HSD 30 Ngµy",LayNguaHSD30},
{"Tho¸t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end

function LayNguaKoHan()
AskClientForNumber("LayNguaKoHan1",1,10000000,"ID Item")
end
function LayNguaKoHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,10,num,10,0},nCount=1,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Ngùa",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function LayNguaHSD1()
AskClientForNumber("LayNguaHSD11",1,10000000,"ID Item")
end
function LayNguaHSD11(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,10,num,10,0},nCount=1,nExpiredTime=1440,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Ngùa",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function LayNguaHSD3()
AskClientForNumber("LayNguaHSD31",1,10000000,"ID Item")
end
function LayNguaHSD31(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,10,num,10,0},nCount=1,nExpiredTime=1440*3,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Ngùa",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function LayNguaHSD7()
AskClientForNumber("LayNguaHSD71",1,10000000,"ID Item")
end
function LayNguaHSD71(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,10,num,10,0},nCount=1,nExpiredTime=1440*7,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Ngùa",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function LayNguaHSD15()
AskClientForNumber("LayNguaHSD151",1,10000000,"ID Item")
end
function LayNguaHSD151(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,10,num,10,0},nCount=1,nExpiredTime=1440*15,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Ngùa",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function LayNguaHSD30()
AskClientForNumber("LayNguaHSD301",1,10000000,"ID Item")
end
function LayNguaHSD301(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,10,num,10,0},nCount=1,nExpiredTime=1440*30,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Ngùa",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function LayMenuMagic()			
local szTitle = "Vâ L©m h©n hoan chµo ®ãn c¸c vÞ anh hïng b¹n h÷u ®Õn víi server.";
local tbOpt = 
{
{"LÊy 1 Magic Ko HSD",LayMaGicKoHan},
{"LÊy 10 Magic Ko HSD",Lay100MaGicKoHan},
{"LÊy 100 Magic Ko HSD",Lay1000MaGicKoHan},
{"LÊy 1000 Magic Ko HSD",Lay10000MaGicKoHan},

{"LÊy 1 Magic HSD 7 Ngµy",LayMaGicCoHan},
{"LÊy 10 Magic HSD 7 Ngµy",Lay100MaGicCoHan},
{"LÊy 100 Magic HSD 7 Ngµy",Lay1000MaGicyCoHan},
{"LÊy 100 Magic HSD 30 Ngµy",Lay1000MaGicCoHan30},
{"Tho¸t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end


function LayMaGicKoHan()
AskClientForNumber("LayMaGicKoHan1",1,10000000,"ID Item")
end
function LayMaGicKoHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=1,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function Lay100MaGicKoHan()
AskClientForNumber("Lay100MaGicKoHan1",1,10000000,"ID Item")
end
function Lay100MaGicKoHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=10,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function Lay1000MaGicKoHan()
AskClientForNumber("Lay1000MaGicKoHan1",1,10000000,"ID Item")
end
function Lay1000MaGicKoHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=100,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function Lay10000MaGicKoHan()
AskClientForNumber("Lay10000MaGicKoHan1",1,10000000,"ID Item")
end
function Lay10000MaGicKoHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=1000,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function LayMaGicCoHan()
AskClientForNumber("LayMaGicCoHan1",1,10000000,"ID Item")
end
function LayMaGicCoHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=1,nExpiredTime=10080,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function Lay100MaGicCoHan()
AskClientForNumber("Lay100MaGicCoHan1",1,10000000,"ID Item")
end
function Lay100MaGicCoHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=10,nExpiredTime=10080,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function Lay1000MaGicyCoHan()
AskClientForNumber("Lay1000MaGicyCoHan1",1,10000000,"ID Item")
end
function Lay1000MaGicyCoHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=100,nExpiredTime=10080,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function Lay1000MaGicCoHan30()
AskClientForNumber("Lay1000MaGicCoHan301",1,10000000,"ID Item")
end
function Lay1000MaGicCoHan301(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=100,nExpiredTime=43200,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end




function LayMenuQueskey()			
local szTitle = "Vâ L©m h©n hoan chµo ®ãn c¸c vÞ anh hïng b¹n h÷u ®Õn víi server.";
local tbOpt = 
{
{"LÊy 1 Queskey Ko HSD",LayQuekeyKoHan},
{"LÊy 10 Queskey Ko HSD",Lay100QuekeyKoHan},
{"LÊy 100 Queskey Ko HSD",Lay1000QuekeyKoHan},
{"LÊy 1 Queskey HSD 7 Ngµy",LayQuekeyCoHan},
{"LÊy 10 Queskey HSD 7 Ngµy",Lay100QuekeyCoHan},
{"LÊy 100 Queskey HSD 7 Ngµy",Lay1000QuekeyCoHan},
{"Tho¸t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end

function LayQuekeyCoHan()
AskClientForNumber("LayQuekeyCoHan1",1,10000000,"ID Item")
end
function LayQuekeyCoHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={4,num,1,1},nCount=1,nExpiredTime=10080},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  QuestKey",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function Lay100QuekeyCoHan()
AskClientForNumber("Lay100QuekeyCoHan1",1,10000000,"ID Item")
end
function Lay100QuekeyCoHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={4,num,1,1},nCount=10,nExpiredTime=10080,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  QuestKey",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function Lay1000QuekeyCoHan()
AskClientForNumber("Lay1000QuekeyCoHan1",1,10000000,"ID Item")
end
function Lay1000QuekeyCoHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={4,num,1,1},nCount=100,nExpiredTime=10080,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  QuestKey",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function LayQuekeyKoHan()
AskClientForNumber("LayQuekeyKoHan1",1,10000000,"ID Item")
end
function LayQuekeyKoHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={4,num,1,1},nCount=1,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  QuestKey",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function Lay100QuekeyKoHan()
AskClientForNumber("Lay100QuekeyKoHan1",1,10000000,"ID Item")
end
function Lay100QuekeyKoHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={4,num,1,1},nCount=10,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  QuestKey",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function Lay1000QuekeyKoHan()
AskClientForNumber("Lay1000QuekeyKoHan1",1,10000000,"ID Item")
end
function Lay1000QuekeyKoHan1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={4,num,1,1},nCount=100,},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  QuestKey",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function LayMenuHKMP()			
local szTitle = "Vâ L©m h©n hoan chµo ®ãn c¸c vÞ anh hïng b¹n h÷u ®Õn víi server.";
local tbOpt = 
{
{"LÊy 1 HKMP Kh«ng HSD",HKMPKoHan},
{"LÊy 1 HKMP HSD 1 Ngµy",HKMP1Ngay},
{"LÊy 1 HKMP HSD 3 Ngµy",HKMP3Ngay},
{"LÊy 1 HKMP HSD 7 Ngµy",HKMP7Ngay},
{"LÊy 1 HKMP HSD 15 Ngµy",HKMP15Ngay},
{"LÊy 1 HKMP HSD 30 Ngµy",HKMP30Ngay},
{"LÊy 1 HKMP HSD 60 Ngµy",HKMP60Ngay},
{"Tho¸t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end


function HKMPKoHan()
AskClientForNumber("HKMPKoHan1",1,10000,"ID")
end
function HKMPKoHan1(num)
--for i=1,20 do
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1},}, "test", 1);
--end
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Hoµng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function HKMP1Ngay()
AskClientForNumber("HKMP1Ngay1",1,10000,"ID")
end
function HKMP1Ngay1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=1440},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Hoµng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function HKMP3Ngay()
AskClientForNumber("HKMP3Ngay1",1,10000,"ID")
end
function HKMP3Ngay1(num)
--for i=1,6 do
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=4320},}, "test", 1);
--end
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Hoµng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function HKMP7Ngay()
AskClientForNumber("HKMP7Ngay1",1,10000,"ID")
end
function HKMP7Ngay1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=10080},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Hoµng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function HKMP15Ngay()
AskClientForNumber("HKMP15Ngay1",1,10000,"ID")
end
function HKMP15Ngay1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Hoµng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function HKMP30Ngay()
AskClientForNumber("HKMP30Ngay1",1,10000,"ID")
end
function HKMP30Ngay1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=43200},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Hoµng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function HKMP60Ngay()
AskClientForNumber("HKMP60Ngay1",1,10000,"ID")
end
function HKMP60Ngay1(num)
tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=43200*2},}, "test", 1);
 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Hoµng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end
function ChucNangQuanLyGM()
tbGmRole:GMC_Menu()

end

function ReLoadScript()
	local szTitle = "NhËn ®­êng link:<color=red> Yªu cÇu chÝnh x¸c<color>"
	local tbOpt = 
	{
		{"NhËp ®­êng dÉn",NhapDuongDanFileCanReLoad},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
--------------------------------- RELOAD SCRIPT NPC TU LENH BAI ADMINISTRATOR ------------------------------------
--------------------------------- THU CONG DUONG DAN CAN RELOAD FILE ---------------------------------
function NhapDuongDanFileCanReLoadOK(Link)
		local ReloadScript = LoadScript(Link);
		if (FALSE(ReloadScript )) then
			Msg2Player("XuÊt hiÖn lçi, kh«ng thÓ Reload!<enter><color=yellow>"..Link.."");
		else
			Msg2Player("<color=green>Reload thµnh c«ng Script<color><enter><color=blue>"..Link.."");
		end
end

function NhapDuongDanFileCanReLoad()
	return AskClientForString("NhapDuongDanFileCanReLoadOK", "", 1, 500, "<#>NhËp ®­êng dÉn")
end
function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end
---------------------------------------------------------------------------------