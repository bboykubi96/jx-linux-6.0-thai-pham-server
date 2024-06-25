--Thî rÌn 7 thµnh thÞ edit by mcteam
Include("\\script\\global\\recoin_goldenequip.lua")
Include("\\script\\global\\equipenchase_help.lua") 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\×ÏÉ«¼°»Æ½ð×°±¸ÖýÔì.lua")
Include("\\script\\global\\shenmi_chapman.lua");	--ÐÞ×°±¸¹¦ÄÜ
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\global\\tieungao\\dotim.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\tieungao\\thorentieungao.lua")
Include("\\script\\global\\tieungao\\dotim.lua")
Include("\\script\\global\\shenmi_chapman.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
--Include("\\script\\activitysys\\config\\6\\doitrangbi_ex.lua")
IncludeLib("ITEM")
function myreloadfile()
--dofile("script/global/tieungao/thorentieungao.lua")
--dofile("script/global/tieungao/dotim.lua")
dofile("script/global/global_tiejiang.lua")
--dofile("script/global/shenmi_chapman.lua")
--dofile("script/global/g7vn/g7configall.lua")
--dofile("script/activitysys/config/6/doitrangbi_ex.lua")
end

--------¹Ì¶¨¶Ô»° ³ÇÊÐ--------
function tiejiang_city(...)
	
	local nNpcIndex = GetLastDiagNpc();
	--local szNpcName = GetNpcName(nNpcIndex);
	--if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local szNpcName = "Thî rÌn trong thµnh"
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	
	local aryParam = arg;
	
	if (getn(aryParam) == 0) then
		tbDailog.szTitleMsg = TIEJIANG_DIALOG
	else
		for i = 1, getn(aryParam) do
			if (i == 1) then
				tbDailog.szTitleMsg = TIEJIANG_DIALOG
			else
				local _,_, szOpt, szFun = strfind(aryParam[i], "([^/]+)/([^/]+)")
				local fn = getglobal(szFun)
				if fn then
					tbDailog:AddOptEntry(szOpt, fn);	
				end
			end;
		end;
	end;
	
	--myreloadfile();--reload file tho ren tieu ngao
	
	tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg, "<dec>", "")
	
	tbDailog:AddOptEntry("Giao dÞch", yes);
	tbDailog:AddOptEntry("§æi 3 BÝ KÝp --> 1 BÝ KÝp NgÉu Nhiªn", doibikip);
	--tbDailog:AddOptEntry("Cöa hµng tinh lùc", energy_sale);
	--tbDailog:AddOptEntry("Giao dÞch", yes);
	if GetAccount() == "testgame4" or GetAccount()=="thaipham1" then
	--	tbDailog:AddOptEntry("Trang bÞ tÝm ", gmtrangbitim);
	--	tbDailog:AddOptEntry("VËt phÈm ®óc", onFoundry);
	--	tbDailog:AddOptEntry("N©ng cÊp trang bÞ hoµng kim", gmnangcaptrangbi_hk);
	--tbDailog:AddOptEntry("§æi 3 BÝ KÝp --> 1 BÝ KÝp NgÉu Nhiªn", doibikip);
	end
	if vatphamkhamnam == 1 then
		tbDailog:AddOptEntry("VËt phÈm kh¶m n¹m", jewel_yes);
	end
	if phuchoitrangbihong == 1 then
		tbDailog:AddOptEntry("Xö lý <trang bÞ ®· bÞ háng>", deal_brokenequip);
	end
--	tbDailog:AddOptEntry("Ta ®Õn nhËn nhiÖm vô S¬ nhËp", education_tiejiang);	
	if GetAccount()=="testgame4" or GetAccount()=="thaipham1" then
			
		--	tbDailog:AddOptEntry("GhÐp M¶nh An Bang --> Trang BÞ An Bang", ghepmanhratrangbi);	
	end
	--	tbDailog:AddOptEntry("VËt phÈm ®óc", onFoundry);
--	tbDailog:AddOptEntry("§æi HÖ D· TÈu Méc Bµi", doihemocbai);
--	tbDailog:AddOptEntry("N©ng CÊp D· TÈu Méc Bµi", nangcapdataumocbai);
--	tbDailog:AddOptEntry("§æi M¶nh GhÐp R­¬ng An Bang --> R­¬ng M¶nh An Bang", doiruongmanhanbang);	
--	tbDailog:AddOptEntry("§æi 500 Tinh Ngäc --> 1 §¹i Tinh Ngäc", doitinhngoc);	
	--tbDailog:AddOptEntry("§æi 500 Bã Cá --> 1 D©y Thõng", doiboco);	
	--	tbDailog:AddOptEntry("N©ng CÊp Phi Phong", nangcapphiphong);	
	--	tbDailog:AddOptEntry("N©ng CÊp Ngùa", nangcapngua);	
	--tbDailog:AddOptEntry("§æi B¶o R­¬ng HuyÒn Tho¹i", doibaoruong);	

	--	tbDailog:AddOptEntry("VËt phÈm kh¶m n¹m", jewel_yes);
	--tbDailog:AddOptEntry("Nh©n tiÖn ghÐ qua th«i", no, {});

	--tbDailog:AddOptEntry("§æi R­¬ng Hoµng Kim LÊy Trang BÞ", exchange_lingpai2goldequip)

	tbDailog:Show()
end;
function doibikip()
	if CalcFreeItemCellCount() < 5 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 5 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("§æi BÝ KÝp", "Bá 3 BÝ KÝp vµo. \nThµnh c«ng nhËn ®­îc 1 BÝ KÝp NgÉu Nhiªn","doibikip_ok")
end
function doibikip_ok(ncount)
local scrollarray = {}
	local scrollcount = 0
	local scrollidx = {}
	local y = 0
	for i=1, ncount do
		local nItemIdx = GetGiveItemUnit(i);
		itemgenre, detailtype, parttype = GetItemProp(nItemIdx)
		if itemgenre == 6 and detailtype == 1 and ((parttype >=27 and parttype<=28) or (parttype >=33 and parttype<=43) or (parttype >=45 and parttype<=59)) then	
			y = y + 1
			scrollidx[y] = nItemIdx;
			scrollarray[i] = GetItemStackCount(nItemIdx)
			scrollcount = scrollcount + scrollarray[i]
		end
	end
	if (y ~= ncount) then
		Say("Xin h·y bá ®óng 3 BÝ KÝp ®¹i hiÖp muèn ®æi.", 2, "µ! Th× ra ®Æt nhÇm ®Ó ta thö l¹i./doibikip", "§Ó ta kiÓm tra xem sao/no")
		return
	end
	if (scrollcount > 3) then
		Say("Ta chØ cÇn 3 cuèn BÝ KÝp, cßn l¹i ng­¬i ®em vÒ ®i!", 2, "µ! Th× ra ®Æt nhÇm ®Ó ta thö l¹i./doibikip", "§Ó ta kiÓm tra xem sao/no")
		return
	end
	if (scrollcount < 3) then
		Say("VÉn ch­a ®ñ 3 cuèn BÝ KÝp! H·y thö l¹i xem!", 2, "µ! Th× ra ®Æt nhÇm ®Ó ta thö l¹i./doibikip", "§Ó ta kiÓm tra xem sao/no")
		return
	end
	if (scrollcount == 3) then
		for i = 1, y do
			RemoveItemByIndex(scrollidx[i])
		end
		lebaoskill()
	end;	
end
function lebaoskill()
local s = random(1,49)


if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="Th¸i cùc quyÓn 3",tbProp={6,1,33,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Th¸i cùc quyÓn 3 <color> tõ lÔ  bao BÝ KÝp  ");
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="Th¸i cùc kiÕm phæ 2",tbProp={6,1,34,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Th¸i cùc kiÕm phæ 2 <color> tõ lÔ bao BÝ KÝp ");
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="V©n Long KÝch",tbProp={6,1,35,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>V©n Long KÝch <color> tõ lÔ bao bÝ kÝp ");
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="L­u tinh ®ao ph¸p",tbProp={6,1,36,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>L­u tinh ®ao ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName="Thiªn v­¬ng chïy ph¸p 1",tbProp={6,1,37,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Thiªn v­¬ng chïy ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="Thiªn v­¬ng th­¬ng ph¸p 2",tbProp={6,1,38,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Thiªn v­¬ng th­¬ng ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="Thiªn v­¬ng ®ao ph¸p",tbProp={6,1,39,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Thiªn v­¬ng ®ao ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName="Thóy yªn ®ao",tbProp={6,1,40,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Thóy yªn ®ao <color> tõ lÔ bao BÝ KÝp ");
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="Thóy yªn song ®ao",tbProp={6,1,41,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Thóy yªn song ®ao<color> tõ lÔ bao BÝ KÝp ");
end;
if s==10 then
tbAwardTemplet:GiveAwardByList({{szName="DiÖt kiÕm mËt tÞch",tbProp={6,1,42,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>DiÖt kiÕm mËt tõch <color> tõ lÔ bao BÝ KÝp ");
end;
if s==11 then
tbAwardTemplet:GiveAwardByList({{szName="Nga my phæ quang",tbProp={6,1,43,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Nga my phæ quang <color> tõ lÔ bao BÝ KÝp ");
end;
if s==12 then
tbAwardTemplet:GiveAwardByList({{szName="Phi ®ao thuËt",tbProp={6,1,45,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Phi ®ao thuËt <color> tõ lÔ bao BÝ KÝp ");
end;
if s==13 then
tbAwardTemplet:GiveAwardByList({{szName="Lo¹n hoµn kÝch",tbProp={6,1,28,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Lo¹n hoµn kÝch<color> tõ lÔ bao BÝ KÝp ");
end;
if s==14 then
tbAwardTemplet:GiveAwardByList({{szName="Phi tiªu thuËt",tbProp={6,1,46,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Phi tiªu thuËt<color> tõ lÔ bao BÝ KÝp ");
end;
if s==15 then
tbAwardTemplet:GiveAwardByList({{szName="Ngò ®éc ch­ëng ph¸p",tbProp={6,1,47,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngò ®éc ch­ëng ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==16 then
tbAwardTemplet:GiveAwardByList({{szName="Ngò ®éc ®ao ph¸p",tbProp={6,1,48,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngò ®éc ®ao ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==17 then
tbAwardTemplet:GiveAwardByList({{szName="Ngù Phong thuËt",tbProp={6,1,49,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngù Phong thuËt <color> tõ lÔ bao BÝ KÝp ");
end;
if s==18 then
tbAwardTemplet:GiveAwardByList({{szName="Ngù l«i thuËt",tbProp={6,1,50,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngù l«i thuËt <color> tõ lÔ bao BÝ KÝp ");
end;
if s==19 then
tbAwardTemplet:GiveAwardByList({{szName="Ngù T©m thuËt",tbProp={6,1,51,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngù T©m thuËt <color> tõ lÔ bao BÝ KÝp ");
end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="Ngù T©m thuËt",tbProp={6,1,52,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngù T©m thuËt <color> tõ lÔ bao BÝ KÝp ");
end;
if s==21 then
tbAwardTemplet:GiveAwardByList({{szName="NhiÕp hån chó",tbProp={6,1,53,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Nhi?p hån chó<color> tõ lÔ bao BÝ KÝp ");
end;
if s==22 then
tbAwardTemplet:GiveAwardByList({{szName="C¸i bang ch­ëng ph¸p",tbProp={6,1,54,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>C¸i bang ch­ëng ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==23 then
tbAwardTemplet:GiveAwardByList({{szName="C¸i bang c«n ph¸p",tbProp={6,1,55,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>C¸i bang c«n ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==24 then
tbAwardTemplet:GiveAwardByList({{szName="ThiÕu l©m quyÒn ph¸p",tbProp={6,1,56,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>ThiÕu l©m QuyÒn ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==25 then
tbAwardTemplet:GiveAwardByList({{szName="ThiÕu l©m c«n ph¸p",tbProp={6,1,57,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>ThiÕu l©m c«n ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==26 then
tbAwardTemplet:GiveAwardByList({{szName="ThiÕu l©m ®ao ph¸p",tbProp={6,1,58,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>ThiÕu l©m ®ao ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==27 then
tbAwardTemplet:GiveAwardByList({{szName="Phæ ®é mËt tõch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Phæ ®é mËt tõch <color> tõ lÔ bao BÝ KÝp ");
end;
if s==28 then
tbAwardTemplet:GiveAwardByList({{szName="Phæ ®é mËt tõch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Phæ ®é mËt tõch <color> tõ lÔ bao BÝ KÝp ");
end;
if s==29 then
tbAwardTemplet:GiveAwardByList({{szName="Phæ ®é mËt tõch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Phæ ®é mËt tõch <color> tõ lÔ bao BÝ KÝp ");
end;
if s==30 then
tbAwardTemplet:GiveAwardByList({{szName="Phæ ®é mËt tõch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Phæ ®é mËt tõch <color> tõ lÔ bao BÝ KÝp ");
end;
if s==31 then
tbAwardTemplet:GiveAwardByList({{szName="Nga my phæ quang",tbProp={6,1,43,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Nga my phæ quang <color> tõ lÔ bao BÝ KÝp ");
end;
if s==32 then
tbAwardTemplet:GiveAwardByList({{szName="Phi ®ao thuËt",tbProp={6,1,45,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Phi ®ao thuËt <color> tõ lÔ bao BÝ KÝp ");
end;
if s==33 then
tbAwardTemplet:GiveAwardByList({{szName="Lo¹n hoµn kÝch",tbProp={6,1,28,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Lo¹n hoµn kÝch<color> tõ lÔ bao BÝ KÝp ");
end;
if s==34 then
tbAwardTemplet:GiveAwardByList({{szName="Phi tiªu thuËt",tbProp={6,1,46,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Phi tiªu thuËt<color> tõ lÔ bao BÝ KÝp ");
end;
if s==35 then
tbAwardTemplet:GiveAwardByList({{szName="Ngò ®éc ch­ëng ph¸p",tbProp={6,1,47,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngò ®éc ch­ëng ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==36 then
tbAwardTemplet:GiveAwardByList({{szName="Ngò ®éc ®ao ph¸p",tbProp={6,1,48,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngò ®éc ®ao ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==37 then
tbAwardTemplet:GiveAwardByList({{szName="Ngù Phong thuËt",tbProp={6,1,49,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngù Phong thuËt <color> tõ lÔ bao BÝ KÝp ");
end;
if s==38 then
tbAwardTemplet:GiveAwardByList({{szName="Ngù l«i thuËt",tbProp={6,1,50,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngù l«i thuËt <color> tõ lÔ bao BÝ KÝp ");
end;
if s==39 then
tbAwardTemplet:GiveAwardByList({{szName="Ngù T©m thuËt",tbProp={6,1,51,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngù T©m thuËt <color> tõ lÔ bao BÝ KÝp ");
end;
if s==40 then
tbAwardTemplet:GiveAwardByList({{szName="Phæ ®é mËt tõch",tbProp={6,1,59,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Phæ ®é mËt tõch <color> tõ lÔ bao BÝ KÝp ");
end;
if s==41 then
tbAwardTemplet:GiveAwardByList({{szName="Nga my phæ quang",tbProp={6,1,43,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Nga my phæ quang <color> tõ lÔ bao BÝ KÝp ");
end;
if s==42 then
tbAwardTemplet:GiveAwardByList({{szName="Phi ®ao thuËt",tbProp={6,1,45,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Phi ®ao thuËt <color> tõ lÔ bao BÝ KÝp ");
end;
if s==43 then
tbAwardTemplet:GiveAwardByList({{szName="Lo¹n hoµn kÝch",tbProp={6,1,28,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Lo¹n hoµn kÝch<color> tõ lÔ bao BÝ KÝp ");
end;
if s==44 then
tbAwardTemplet:GiveAwardByList({{szName="Phi tiªu thuËt",tbProp={6,1,46,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Phi tiªu thuËt<color> tõ lÔ bao BÝ KÝp ");
end;
if s==45 then
tbAwardTemplet:GiveAwardByList({{szName="Ngò ®éc ch­ëng ph¸p",tbProp={6,1,47,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngò ®éc ch­ëng ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==46 then
tbAwardTemplet:GiveAwardByList({{szName="Ngò ®éc ®ao ph¸p",tbProp={6,1,48,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngò ®éc ®ao ph¸p <color> tõ lÔ bao BÝ KÝp ");
end;
if s==47 then
tbAwardTemplet:GiveAwardByList({{szName="Ngù Phong thuËt",tbProp={6,1,49,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngù Phong thuËt <color> tõ lÔ bao BÝ KÝp ");
end;
if s==48 then
tbAwardTemplet:GiveAwardByList({{szName="Ngù l«i thuËt",tbProp={6,1,50,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngù l«i thuËt <color> tõ lÔ bao BÝ KÝp ");
end;
if s==49 then
tbAwardTemplet:GiveAwardByList({{szName="Ngù T©m thuËt",tbProp={6,1,51,1,0,0},nCount=1,},}, "test", 1);
--Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn ®­îc<color=yellow>Ngù T©m thuËt <color> tõ lÔ bao BÝ KÝp ");
end;
end
function nangcapdataumocbai()
local tbSay = 
{
"N©ng DÉ TÈu Méc Bµi CÊp 1 --> CÊp 2 /#nangdatau1()",
"N©ng DÉ TÈu Méc Bµi CÊp 2 --> CÊp 3 /#nangdatau2()",
"N©ng DÉ TÈu Méc Bµi CÊp 3 --> CÊp 4 /#nangdatau3()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Chän Chøc N¨ng Nµo?",getn(tbSay),tbSay)
end
function nangdatau3()
	if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng CÊp", "Bá D· TÈu Méc Bµi vµo. \nKh«ng bá Nguyªn LiÖu vµo.\nNguyªn liÖu:\n-Hån Ngäc CÊp 4","nangdatau3_ok")
end
function nangdatau3_ok(nCount)
	if nCount~=1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/nangdatau3", "Ta xin th«i")
		return 0
	end

	local tiendong=CalcEquiproomItemCount(6,1,30058,-1)
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
		return
	end
	if nGoldEquipIdxFF>=6263 and nGoldEquipIdxFF<=6266 then
			if tiendong>=1 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(1,6,1,30058,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "D· TÈu Méc Bµi",tbProp={0,nGoldEquipIdxFF+4},nQuality=1,nCount=1},}, "test", 1);
		--		Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>Phi Phong CÊp 2.<color>")
			else
				Say("Hµnh trang kh«ng cã 1 Hån Ngäc CÊp 4")
				return
			end
	else
		Say("Trang bÞ ®¹i hiÖp bá vµo kh«ng ph¶i lµ D· TÈu Méc Bµi CÊp 3")
		return
	end
end
function nangdatau2()
	if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng CÊp", "Bá D· TÈu Méc Bµi vµo. \nKh«ng bá Nguyªn LiÖu vµo.\nNguyªn liÖu:\n-Hån Ngäc CÊp 3","nangdatau2_ok")
end
function nangdatau2_ok(nCount)
	if nCount~=1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/nangdatau2", "Ta xin th«i")
		return 0
	end

	local tiendong=CalcEquiproomItemCount(6,1,30057,-1)
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
		return
	end
	if nGoldEquipIdxFF>=6259 and nGoldEquipIdxFF<=6262 then
			if tiendong>=1 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(1,6,1,30057,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "D· TÈu Méc Bµi",tbProp={0,nGoldEquipIdxFF+4},nQuality=1,nCount=1},}, "test", 1);
		--		Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>Phi Phong CÊp 2.<color>")
			else
				Say("Hµnh trang kh«ng cã 1 Hån Ngäc CÊp 3")
				return
			end
	else
		Say("Trang bÞ ®¹i hiÖp bá vµo kh«ng ph¶i lµ D· TÈu Méc Bµi CÊp 2")
		return
	end
end
function nangdatau1()
	if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng CÊp", "Bá D· TÈu Méc Bµi vµo. \nKh«ng bá Nguyªn LiÖu vµo.\nNguyªn liÖu:\n-Hån Ngäc CÊp 2","nangdatau1_ok")
end
function nangdatau1_ok(nCount)
	if nCount~=1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/nangdatau1", "Ta xin th«i")
		return 0
	end

	local tiendong=CalcEquiproomItemCount(6,1,30056,-1)
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
		return
	end
	if nGoldEquipIdxFF>=6255 and nGoldEquipIdxFF<=6258 then
			if tiendong>=1 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(1,6,1,30056,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "D· TÈu Méc Bµi",tbProp={0,nGoldEquipIdxFF+4},nQuality=1,nCount=1},}, "test", 1);
		--		Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>Phi Phong CÊp 2.<color>")
			else
				Say("Hµnh trang kh«ng cã 1 Hån Ngäc CÊp 2")
				return
			end
	else
		Say("Trang bÞ ®¹i hiÖp bá vµo kh«ng ph¶i lµ D· TÈu Méc Bµi CÊp 1")
		return
	end
end
function doihemocbai()
local tbSay = 
{
"§æi Sang Søc M¹nh /#doitrangsuc(6255)",
"§æi Sang Th©n Ph¸p /#doitrangsuc(6256)",
"§æi Sang Sinh KhÝ /#doitrangsuc(6257)",
"§æi Sang Néi C«ng /#doitrangsuc(6258)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Chän Chøc N¨ng Nµo?",getn(tbSay),tbSay)
end
IDtrangss=0
function doitrangsuc(IDtrangsuc)
	IDtrangss=IDtrangsuc
	if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng CÊp", "Bá D· TÈu Méc Bµi vµo. \nKh«ng bá Nguyªn LiÖu vµo.\nNguyªn liÖu:\n-50 Xu","doitrangsuc_ok")
end
function doitrangsuc_ok(nCount)
	if nCount~=1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/doitrangsuc", "Ta xin th«i")
		return 0
	end

	local tiendong=CalcEquiproomItemCount(4,417,1,1)
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
		return
	end
	if nGoldEquipIdxFF>=6255 and nGoldEquipIdxFF<=6270 then
		if nGoldEquipIdxFF>=6255 and nGoldEquipIdxFF<=6258 then
			if tiendong>=50 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(50,4,417,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "D· TÈu Méc Bµi",tbProp={0,IDtrangss},nQuality=1,nCount=1},}, "test", 1);
		--		Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>Phi Phong CÊp 2.<color>")
			else
				Say("Hµnh trang kh«ng ®ñ 50 Xu")
				return
			end
		elseif nGoldEquipIdxFF>=6259 and nGoldEquipIdxFF<=6262 then
			if tiendong>=50 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(50,4,417,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "D· TÈu Méc Bµi",tbProp={0,IDtrangss+4},nQuality=1,nCount=1},}, "test", 1);
		--		Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>Phi Phong CÊp 2.<color>")
			else
				Say("Hµnh trang kh«ng ®ñ 50 Xu")
				return
			end
		elseif nGoldEquipIdxFF>=6263 and nGoldEquipIdxFF<=6266 then
			if tiendong>=50 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(50,4,417,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "D· TÈu Méc Bµi",tbProp={0,IDtrangss+8},nQuality=1,nCount=1},}, "test", 1);
		--		Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>Phi Phong CÊp 2.<color>")
			else
				Say("Hµnh trang kh«ng ®ñ 50 Xu")
				return
			end
		elseif nGoldEquipIdxFF>=6267 and nGoldEquipIdxFF<=6270 then
			if tiendong>=50 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(50,4,417,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "D· TÈu Méc Bµi",tbProp={0,IDtrangss+12},nQuality=1,nCount=1},}, "test", 1);
		--		Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>Phi Phong CÊp 2.<color>")
			else
				Say("Hµnh trang kh«ng ®ñ 50 Xu")
				return
			end
		end
	else
		Say("Trang bÞ ®¹i hiÖp bá vµo kh«ng ph¶i lµ D· TÈu Méc Bµi")
		return
	end
end
function doiboco()
	if CalcFreeItemCellCount()<5 then
		Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
		return
	end
	if CalcEquiproomItemCount(6,1,4415,-1)>=500 then
		ConsumeEquiproomItem(500,6,1,4415,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "D©y Thõng",tbProp={6,1,4416,1,1},nCount=1},}, "test", 1);
	else
		Say("Hµnh trang kh«ng ®ñ 500 Bã Cá.")
		return
	end
end
function doitinhngoc()
	if CalcFreeItemCellCount()<5 then
		Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
		return
	end
	if CalcEquiproomItemCount(6,1,4409,-1)>=500 then
		ConsumeEquiproomItem(500,6,1,4409,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "§¹i Tinh Ngäc",tbProp={6,1,4410,1,1},nCount=1},}, "test", 1);
	else
		Say("Hµnh trang kh«ng ®ñ 500 Tinh Ngäc.")
		return
	end
end
function doiruongmanhanbang()
	local manhghep=CalcEquiproomItemCount(4,1624,1,1)
	local xu=CalcEquiproomItemCount(4,417,1,1)
	if CalcFreeItemCellCount() < 5 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 5 « trèng råi h·y më.",0);
		return 0;
	end
	if manhghep>=50 and xu>=50 then
		ConsumeEquiproomItem(50,4,1624,1,1)
		ConsumeEquiproomItem(50,4,417,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "R­¬ng M¶nh An Bang",tbProp={6,1,4470,1,1},nCount=1},}, "test", 1);
	else
		Say("Hµnh trang kh«ng ®ñ 50 M¶nh GhÐp R­¬ng An Bang + 50 Xu.")
		return
	end
end
function ghepmanhratrangbi()
local tbSay = 
{
"An Bang B¨ng Tinh Th¹ch H¹ng Liªn /#nangphivan()",
"An Bang Cóc Hoa Th¹ch ChØ hoµn /#nangbontieu()",
"An Bang §iÒn Hoµng Th¹ch Ngäc Béi /#nangbontieu()",
"An Bang Kª HuyÕt Th¹ch Giíi ChØ /#nangbontieu()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Chän Chøc N¨ng Nµo?",getn(tbSay),tbSay)
end
function nangcapngua()
local tbSay = 
{
"N©ng CÊp Ngùa 8x --> Ngùa Phi V©n /#nangphivan()",
"N©ng CÊp Ngùa Phi V©n --> Ngùa B«n Tiªu /#nangbontieu()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Chän Chøc N¨ng Nµo?",getn(tbSay),tbSay)
end
function nangphivan()
if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng CÊp Ngùa", "Bá ngùa 3 8x vµo. \nKh«ng bá Nguyªn LiÖu vµo.\nNguyªn liÖu:\n-200 Bã Cá\n-1 D©y Thõng\n-2 Bé Thuû Tinh\n Tû lÖ thµnh c«ng: 100%","nangphivan_ok")
end
function nangphivan_ok(nCount)
local daythung= CalcEquiproomItemCount(6,1,4416,-1)--D©y Thõng
local coxanh= CalcEquiproomItemCount(6,1,4415,-1)--Cá Xanh
local nguabontieu= CalcEquiproomItemCount(0,10,5,-1)--B«n Tiªu
local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
local lucthuytinh = CalcEquiproomItemCount(4,239,1,1)
local tuthuytinh = CalcEquiproomItemCount(4,240,1,1)
if (nCount == 0) then 
			Say("ng­¬i ®Æt c¸i g× vµo thÕ nµy ta chØ cÇn 3 ngùa 8x vµo th«i cßn l¹i tÊt c¶ thø kh¸c ®Ó bªn ngoµi",0);
		return
	end
	if (nCount ~= 3) then 
			Say("C¸c h¹ chØ cÇn bá vµo 3 ngùa vµo trong.",0);
		return
	end
for i=1,nCount do
local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nCurItemQuality = GetItemQuality(nCurItemIdx);
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
	if nD~=10 and nP~=5 then
	Say("Thø ng­¬i bá vµo kh«ng ph¶i lµ Ngùa 8x")
	return
	end
end		
		local tbItem = 
	{	
		{szName = "Phi V©n", tbProp = {0,10,8,10,0,0,0}, nCount = 1},	
	}
	if  nguabontieu>=3 and coxanh>=200 and daythung>=1 and lamthuytinh>=2 and lucthuytinh>=2 and tuthuytinh>=2 then
				ConsumeEquiproomItem(3, 0,10, 5,-1)
				ConsumeEquiproomItem(2,4,238,1,1)
				ConsumeEquiproomItem(2,4,239,1,1)
				ConsumeEquiproomItem(2,4,240,1,1)
				ConsumeEquiproomItem(200,6,1,4415,-1)
				ConsumeEquiproomItem(1,6,1,4416,-1)
				tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
				Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· luyÖn thµnh c«ng <color=red> Phi V©n.")
				WriteLogPro("dulieu/dulieuepngua.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t  Ðp thµnh c«ng Phi V©n\n");	
	else 
			Say("Kh«ng §ñ Nguyªn LiÖu.");
	end
end
function nangbontieu()
if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng CÊp Ngùa", "Bá 2 Phi V©n vµo. \nKh«ng bá Nguyªn LiÖu vµo.\nNguyªn liÖu:\n-400 Bã Cá\n-2 D©y Thõng\n-4 Bé Thuû Tinh\n Tû lÖ thµnh c«ng: 100%","nangbontieu_ok")
end
function nangbontieu_ok(nCount)
local daythung= CalcEquiproomItemCount(6,1,4416,-1)--D©y Thõng
local coxanh= CalcEquiproomItemCount(6,1,4415,-1)--Cá Xanh
local nguabontieu= CalcEquiproomItemCount(0,10,8,-1)--B«n Tiªu
local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
local lucthuytinh = CalcEquiproomItemCount(4,239,1,1)
local tuthuytinh = CalcEquiproomItemCount(4,240,1,1)
if (nCount == 0) then 
			Say("ng­¬i ®Æt c¸i g× vµo thÕ nµy ta chØ cÇn 2 Phi V©n vµo th«i cßn l¹i tÊt c¶ thø kh¸c ®Ó bªn ngoµi",0);
		return
	end
	if (nCount ~= 2) then 
			Say("C¸c h¹ chØ cÇn bá vµo 2 ngùa Phi V©n vµo trong.",0);
		return
	end
for i=1,nCount do
local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nCurItemQuality = GetItemQuality(nCurItemIdx);
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
	if nD~=10 and nP~=8 then
	Say("Thø ng­¬i bá vµo kh«ng ph¶i lµ Ngùa Phi V©n")
	return
	end
end		
		local tbItem = 
	{	
		{szName = "B«n Tiªu", tbProp = {0,10,6,10,0,0,0}, nCount = 1},	
	}
	if  nguabontieu>=2 and coxanh>=400 and daythung>=2 and lamthuytinh>=4 and lucthuytinh>=4 and tuthuytinh>=4 then
				ConsumeEquiproomItem(2, 0,10, 8,-1)
				ConsumeEquiproomItem(4,4,238,1,1)
				ConsumeEquiproomItem(4,4,239,1,1)
				ConsumeEquiproomItem(4,4,240,1,1)
				ConsumeEquiproomItem(400,6,1,4415,-1)
				ConsumeEquiproomItem(2,6,1,4416,-1)
				tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
				Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· luyÖn thµnh c«ng <color=red> B«n Tiªu.")
				WriteLogPro("dulieu/dulieuepngua.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t  Ðp thµnh c«ng B«n Tiªu\n");	
	else 
			Say("Kh«ng §ñ Nguyªn LiÖu.");
	end
end
function nangcapphiphong()
local tbSay = 
{
"N©ng CÊp Phi Phong CÊp 1 --> CÊp 2 /#phiphong2()",
"N©ng CÊp Phi Phong CÊp 2 --> CÊp 3 /#phiphong3()",
"§ét Ph¸ Phi Phong CÊp 3 --> CÊp 4 - 1 Sao /#phiphong4()",
"N©ng Sao Phi Phong CÊp 4 /#nangsaophiphong()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Chän Chøc N¨ng Nµo?",getn(tbSay),tbSay)
end
function phiphong2()
if CalcFreeItemCellCount() < 10 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng cÊp phi phong.", "Bá Phi Phong CÊp 1 vµo.\nKh«ng bá nguyªn liÖu vµo.\n-200 Tinh Ngäc\n-1 §¹i Tinh Ngäc\n-2 Bé Thuû Tinh\n-3000 V¹n L­îng.", "phiphong2_ok")
end
function phiphong2_ok(nCount)
	if nCount~=1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/phiphong2", "Ta xin th«i")
		return 0
	end
	local tinhngoc=CalcEquiproomItemCount(6,1,4409,-1)
	local daitinhngoc=CalcEquiproomItemCount(6,1,4410,-1)
	local lamthuytinh=CalcEquiproomItemCount(4,238,1,1)
	local tuhuytinh=CalcEquiproomItemCount(4,239,1,1)
	local lucthuytinh=CalcEquiproomItemCount(4,240,1,1)
	local tienvan=GetCash()
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
		return
	end
	if nGoldEquipIdxFF==3467 then
		if tinhngoc>=200 and daitinhngoc>=1 and lamthuytinh>=2 and tuhuytinh>=2 and lucthuytinh>=2 and tienvan>=30000000 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(2,4,238,1,1)
				ConsumeEquiproomItem(2,4,239,1,1)
				ConsumeEquiproomItem(2,4,240,1,1)
				ConsumeEquiproomItem(200,6,1,4409,-1)
				ConsumeEquiproomItem(1,6,1,4410,-1)
				Pay(30000000)
				tbAwardTemplet:GiveAwardByList({{szName = "Phi Phong CÊp 2",tbProp={0,3468},nQuality=1,nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>Phi Phong CÊp 2.<color>")
		else
			Say("Hµnh trang kh«ng ®ñ 200 Tinh Ngäc + 1 §¹i Tinh Ngäc + 2 Bé Thuû Tinh + 3000 V¹n L­îng")
			return
		end
	else
		Say("Trang bÞ ®¹i hiÖp bá vµo kh«ng ph¶i lµ Phi Phong CÊp 1")
		return
	end
end
function phiphong3()
if CalcFreeItemCellCount() < 10 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng cÊp phi phong.", "Bá Phi Phong CÊp 1 vµo.\nKh«ng bá nguyªn liÖu vµo.\n-400 Tinh Ngäc\n-2 §¹i Tinh Ngäc\n-4 Bé Thuû Tinh\n-6000 V¹n L­îng.", "phiphong3_ok")
end
function phiphong3_ok(nCount)
	if nCount~=1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/phiphong3", "Ta xin th«i")
		return 0
	end
	local tinhngoc=CalcEquiproomItemCount(6,1,4409,-1)
	local daitinhngoc=CalcEquiproomItemCount(6,1,4410,-1)
	local lamthuytinh=CalcEquiproomItemCount(4,238,1,1)
	local tuhuytinh=CalcEquiproomItemCount(4,239,1,1)
	local lucthuytinh=CalcEquiproomItemCount(4,240,1,1)
	local tienvan=GetCash()
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
		return
	end
	if nGoldEquipIdxFF==3468 then
		if tinhngoc>=400 and daitinhngoc>=2 and lamthuytinh>=4 and tuhuytinh>=4 and lucthuytinh>=4 and tienvan>=60000000 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(4,4,238,1,1)
				ConsumeEquiproomItem(4,4,239,1,1)
				ConsumeEquiproomItem(4,4,240,1,1)
				ConsumeEquiproomItem(400,6,1,4409,-1)
				ConsumeEquiproomItem(2,6,1,4410,-1)
				Pay(60000000)
				tbAwardTemplet:GiveAwardByList({{szName = "Phi Phong CÊp 3",tbProp={0,3469},nQuality=1,nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>Phi Phong CÊp 3.<color>")
		else
			Say("Hµnh trang kh«ng ®ñ 400 Tinh Ngäc + 2 §¹i Tinh Ngäc + 4 Bé Thuû Tinh + 6000 V¹n L­îng")
			return
		end
	else
		Say("Trang bÞ ®¹i hiÖp bá vµo kh«ng ph¶i lµ Phi Phong CÊp 2")
		return
	end
end
function phiphong4()
if CalcFreeItemCellCount() < 10 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng cÊp phi phong.", "Bá Phi Phong CÊp 3 vµo.\nKh«ng bá nguyªn liÖu vµo.\n-400 Tinh Ngäc\n-2 §¹i Tinh Ngäc\n-4 Bé Thuû Tinh\n-6000 V¹n L­îng.", "phiphong4_ok")
end
function phiphong4_ok(nCount)
	if nCount~=1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/phiphong4", "Ta xin th«i")
		return 0
	end
	local tinhngoc=CalcEquiproomItemCount(6,1,4409,-1)
	local daitinhngoc=CalcEquiproomItemCount(6,1,4410,-1)
	local lamthuytinh=CalcEquiproomItemCount(4,238,1,1)
	local tuhuytinh=CalcEquiproomItemCount(4,239,1,1)
	local lucthuytinh=CalcEquiproomItemCount(4,240,1,1)
	local tienvan=GetCash()
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
		return
	end
	if nGoldEquipIdxFF==3469 then
		if tinhngoc>=400 and daitinhngoc>=2 and lamthuytinh>=4 and tuhuytinh>=4 and lucthuytinh>=4 and tienvan>=60000000 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(4,4,238,1,1)
				ConsumeEquiproomItem(4,4,239,1,1)
				ConsumeEquiproomItem(4,4,240,1,1)
				ConsumeEquiproomItem(400,6,1,4409,-1)
				ConsumeEquiproomItem(2,6,1,4410,-1)
				Pay(60000000)
				tbAwardTemplet:GiveAwardByList({{szName = "Phi Phong CÊp 4",tbProp={0,6241},nQuality=1,nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®ét ph¸ thµnh c«ng <color=yellow>Phi Phong CÊp 4.<color>")
		else
			Say("Hµnh trang kh«ng ®ñ 400 Tinh Ngäc + 2 §¹i Tinh Ngäc + 4 Bé Thuû Tinh + 6000 V¹n L­îng")
			return
		end
	else
		Say("Trang bÞ ®¹i hiÖp bá vµo kh«ng ph¶i lµ Phi Phong CÊp 3")
		return
	end
end
function nangsaophiphong()
if CalcFreeItemCellCount() < 10 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng sao phi phong.", "Bá Phi Phong CÊp 4 vµo.\nKh«ng bá nguyªn liÖu vµo.\n-150 Tinh Ngäc\n-1 §¹i Tinh Ngäc.", "nangsaophiphong_ok")
end
function nangsaophiphong_ok(nCount)
	if nCount~=1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/nangsaophiphong", "Ta xin th«i")
		return 0
	end
	local tinhngoc=CalcEquiproomItemCount(6,1,4409,-1)
	local daitinhngoc=CalcEquiproomItemCount(6,1,4410,-1)
	local lamthuytinh=CalcEquiproomItemCount(4,238,1,1)
	local tuhuytinh=CalcEquiproomItemCount(4,239,1,1)
	local lucthuytinh=CalcEquiproomItemCount(4,240,1,1)
	local tienvan=GetCash()
	local nItemIndex = GetGiveItemUnit(1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
		return
	end
	if nGoldEquipIdxFF>=6241 and nGoldEquipIdxFF<=6250 then
		if tinhngoc>=150 and daitinhngoc>=1 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(150,6,1,4409,-1)
				ConsumeEquiproomItem(1,6,1,4410,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "Phi Phong CÊp 4",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);
				Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng sao thµnh c«ng <color=yellow>Phi Phong CÊp 4.<color>")
		else
			Say("Hµnh trang kh«ng ®ñ 150 Tinh Ngäc + 1 §¹i Tinh Ngäc")
			return
		end
	else
		Say("Trang bÞ ®¹i hiÖp bá vµo kh«ng ph¶i lµ Phi Phong CÊp 4")
		return
	end
end
function doibaoruong()
	if CalcFreeItemCellCount()<5 then
		Say("Hµnh trang kh«ng ®ñ 5 « trèng")
		return
	end
	local manh=CalcEquiproomItemCount(4,1622,1,1)
	local lamthuytinh=CalcEquiproomItemCount(4,238,1,1)
	local tuthuytinh=CalcEquiproomItemCount(4,239,1,1)
	local lucthuytinh=CalcEquiproomItemCount(4,240,1,1)
	if manh>=20 and GetCash()>=500000 then
		ConsumeEquiproomItem(20,4,1622,1,1)
		--ConsumeEquiproomItem(1,4,239,1,1)
		Pay(500000)
		tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng HuyÒn Tho¹i",tbProp={6,1,4443,1,1},nCount=1},}, "test", 1);
	else
		Say("Hµnh trang kh«ng ®ñ 20 M¶nh Ph«i TÝm + 50 V¹n L­îng")
		return
	end
	
end
--------¹Ì¶¨¶Ô»° ÐÂÊÖ´å------
function tiejiang_village(...)
	local aryParam = arg;
	local aryDescribe = {
		--szDialog,		--Ìú½³µÄËµ»°£¬ÔÚ¸÷³ÇÊÐÌú½³´¦
		"Giao dÞch/yes",
		
		--Change request 04/06/2011, ®ãng chÕ t¹o trang bÞ b¹ch kim - Modified by DinhHQ - 20110605
--	"VËt phÈm ®óc/onFoundry",
		
		"Ta ®Õn nhËn nhiÖm vô S¬ nhËp/tboss",
		"Nh©n tiÖn ghÐ qua th«i/no",
	};
	
	if (getn(aryParam) == 0) then
		tinsert(aryDescribe, 1, TIEJIANG_DIALOG)
	else
		for i = 1, getn(aryParam) do
			if (i == 1) then
				tinsert(aryDescribe, 1, aryParam[i]);
			else
				tinsert(aryDescribe, 2, aryParam[i]);
			end;
		end;
	end;
	CreateTaskSay(aryDescribe);
end;

--------ÏâÇ¶--------
function jewel_yes()
	CreateTaskSay({"<dec><npc>Thñy tinh kh¶m n¹m liªn quan ®Õn sù c©n b»ng ngò hµnh, ph­¬ng ph¸p chuyÓn linh khÝ tuyÖt nhiªn kh«ng thÓ dïng søc ng­êi ®­îc, kh«ng h¼n nh­ ®¹i hiÖp hi väng thµnh vËt phÈm tuyÖt thÕ nh©n gian, mµ vò khÝ ®å phæ vµ vùc ngoµi kú tr©n chØ gióp chuyÓn ®æi ®¼ng cÊp cña trang bÞ. C¸c h¹ muèn kh¶m n¹m trang bÞ nµy kh«ng?", "B¾t ®Çu kh¶m n¹m/jewel_yes1", "Liªn quan kh¶m n¹m/help", "§Ó ta suy nghÜ kü l¹i xem/no"});
end

function jewel_yes1()
	EnchaseItem()
end

-------No--------
function no()
end;

------¾«Á¦-------
function energy_sale()
	CreateStores();
	AddShop2Stores(174, "Cöa hµng tinh lùc", 15, 100, "fBuyCallBack(%d,%d)");
	OpenStores();
end

function fBuyCallBack(nItemIdx, nPrice)
	local nCount = 1
	local itemgenre, itemdetail, itemParticular = GetItemProp(nItemIdx)
	if itemgenre == 6 and itemdetail == 1 and itemParticular == 2317 then
		-- ÊÔÁ¶Ìû
		AddStatData("jlxiaohao_shiliantiegoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2355 then
		-- ÐþÌì½õÄÒ
		AddStatData("jlxiaohao_xuantiangoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2369 then
		-- Çà¾ÔÁî
		AddStatData("jlxiaohao_qingjulinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2353 then
		-- ÔÆÂ¹Áî
		AddStatData("jlxiaohao_yunlulinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2352 then
		-- ²ÔÀÇÁî
		AddStatData("jlsxiaohao_canglanglinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2351 then
		-- ÐþÔ³Áî
		AddStatData("jlxiaohao_xuanyuanlinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2350 then
		-- ×ÏòþÁî
		AddStatData("jlxiaohao_zimanglinggoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2744 then
		-- ÈçÒâÔ¿³×
		AddStatData("jlxiaohao_ruyiyaoshigoumai", nCount)
	elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 1617 then
		-- Ñ×µÛÁî
		AddStatData("jlxiaohao_yandilinggoumai", nCount)
	end											
	return 1
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
