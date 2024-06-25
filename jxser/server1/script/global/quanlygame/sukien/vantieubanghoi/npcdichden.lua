--Include("\\script\\global\\lbadmin.lua")
-------------------------------------------------Script*By* NguyenKhai-----------------------------------------
IncludeLib("LEAGUE");
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");


local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia.")
		return
	end

	local nPlayerLevel = GetLevel();
	local nGetSeedLevel = nil;
	if (nPlayerLevel < 90) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 90 and nPlayerLevel < 91) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 92) then
		nGetSeedLevel = 3;
	end

	if (nGetSeedLevel ~= 3) then -- Èç¹û¼¶±ð²»¶Ô,²»ÄÜ½øÐÐÊ°È¡
		--ÕâÀï¸æËßÍæ¼Ò¼¶±ð²»¶Ô,²»ÄÜÊ°È¡
		Msg2Player("Ng­êi ch¬i ph¶i tõ cÊp 120 trë lªn míi cã thÓ tham gia ")
		return
                      end
	return nGetSeedLevel
end
	
local _GetFruit = function(nNpcIdx, dwNpcId)
	vantieubanghoine()
	end


local _OnBreak = function()
	Msg2Player("§øng yªn kh«ng ®­îc nhót nhÝch.<pic=15>")
end



function main()
	-- dofile("script/global/quanlygame/sukien/vantieubanghoi/npcdichden.lua")
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
      		Say("ChØ cã bang chñ nhµ ng­¬i míi cã t­ c¸ch nãi chuyÖn víi ta.<pic=1>",0)
		return
	end
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	local nHour = tonumber(GetLocalDate("%H%M"))

	if %_Limit(nNpcIdx) == nil then
		return
	end
	if( nHour >= 2000) then
		Say("Thêi Gian Tr¶ Tiªu §· HÕt.",0)
	return  
	end
		
	if( nHour >= 1900 and nHour <= 2000) then
		tbProgressBar:OpenByConfig(25, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
	else
     		Say("Thêi gian vËn tiªu bang héi tõ 19h00 ®Õn 20h00 h»ng ngµy hiÖn t¹i ch­a ®Õn giê ®Ó triÒu ®Þnh cho ta nhËn tiªu bang míi.",0)
		return
	end
end

function vantieubanghoine()
	local tbDialog = 
{ 
"<npc><color=green>§¹i qu©n ta ®ang cÇn nhiÒu chuyÕn tiªu ®Ó tiÕp tÕ l­¬ng thùc cho chiÕn tr­êng ch¼n hay quý bang ®· ®em ®Õn ch­a.",
 "Ta ®Õn ®Ó giao Tiªu Bang/giaohangdaiquan",
"Ta chØ ghÐ qua th«i/no",
} 
CreateTaskSay(tbDialog)
end



function giaohangdaiquan()
if GetTask(5859) > 0 then
SetTask(5859,0)
ForbidEnmity(0);
SetPKFlag(0)
DisabledUseTownP(0);
ForbitSkill(0);
ForbidChangePK(0);
SetMoveSpeed(-1);
ForbitTrade(0); 
RestoreOwnFeature();
RemoveSkillState(464);
RemoveSkillState(739);--CHIM
RemoveSkillState(731);--VONG XANH
RemoveSkillState(313);--TANHINH
RemoveSkillState(458);--TANHINH
RemoveSkillState(874);--BAYMAU
SetDeathScript("");
	local tbAward =
	{
    	-- {szName="KNB",tbProp={4,1496,1,1,0,0},nCount=9999},
	{szName="Xu",tbProp={4,417,1,1,0,0},nCount=15000},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn th­ëng §Òn Lång Bang Héi")

    local szNews = format("Tiªu Bang Héi cña bang Chñ <color=green>"..GetName().."<color=yellow> §· Hoµn thµnh nhiÖm vô nhËn ®­îc phÇn th­ëng.");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
--KickOutSelf()
	else
Say("<color=green>Tiªu ®©u ®Þnh lõa ta µ !!<pic=6>.")
	end
end



function ranphanthuong()
local s = random(1,13)

if s==1 then
			tbAwardTemplet:GiveAwardByList({{szName = "HiÖp Cèt ThiÕt HuyÕt Sam",tbProp={0,186},nCount=1,nQuality = 1,},}, "test", 1);
end;
if s==2 then
			tbAwardTemplet:GiveAwardByList({{szName = "HiÖp Cèt §a T×nh Hoµn",tbProp={0,187},nCount=1,nQuality = 1,},}, "test", 1);
end;
if s==3 then
			tbAwardTemplet:GiveAwardByList({{szName = "HiÖp Cèt §an T©m Giíi",tbProp={0,188},nCount=1,nQuality = 1,},}, "test", 1);
end;
if s==4 then
			tbAwardTemplet:GiveAwardByList({{szName = "HiÖp Cèt T×nh ý KÕt",tbProp={0,189},nCount=1,nQuality = 1,nRate=10},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName = "HiÖp Cèt §a T×nh Hoµn",tbProp={0,187},nCount=1,nQuality = 1,nRate=50},}, "test", 1);
end;
if s==5 then
			tbAwardTemplet:GiveAwardByList({{szName = "Nhu T×nh C©n Quèc Nghª Th­êng",tbProp={0,190},nCount=1,nQuality = 1,nRate=10},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName = "Nhu T×nh  TuÖ T©m Ngäc Béi",tbProp={0,193},nCount=1,nQuality = 1,nRate=50},}, "test", 1);
end;
if s==6 then
			tbAwardTemplet:GiveAwardByList({{szName = "Nhu T×nh Thôc N÷ H¹ng Liªn",tbProp={0,191},nCount=1,nQuality = 1,},}, "test", 1);
end;
if s==7 then
			tbAwardTemplet:GiveAwardByList({{szName = "Nhu T×nh  Phông Nghi Giíi ChØ",tbProp={0,192},nCount=1,nQuality = 1,},}, "test", 1);
end;
if s==8 then
			tbAwardTemplet:GiveAwardByList({{szName = "Nhu T×nh  TuÖ T©m Ngäc Béi",tbProp={0,193},nCount=1,nQuality = 1,},}, "test", 1);
end;
	
if s==9 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þnh Quèc Thanh Sa Tr­êng Sam",tbProp={0,159},nCount=1,nQuality = 1,},}, "test", 1);
end;
if s==10 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þnh Quèc ¤ Sa Ph¸t Qu¸n",tbProp={0,160},nCount=1,nQuality = 1,nRate=10,},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName = "§Þnh Quèc XÝch Quyªn NhuyÔn Ngoa",tbProp={0,161},nCount=1,nQuality = 1,nRate=50},}, "test", 1);
end;
if s==11 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þnh Quèc XÝch Quyªn NhuyÔn Ngoa",tbProp={0,161},nCount=1,nQuality = 1,},}, "test", 1);
end;
	
if s==12 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þnh Quèc Tö §»ng Hé uyÓn",tbProp={0,162},nCount=1,nQuality = 1,},}, "test", 1);
end;
if s==13 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þnh Quèc Ng©n Tµm Yªu ®¸i",tbProp={0,163},nCount=1,nQuality = 1,},}, "test", 1);
end;
end
