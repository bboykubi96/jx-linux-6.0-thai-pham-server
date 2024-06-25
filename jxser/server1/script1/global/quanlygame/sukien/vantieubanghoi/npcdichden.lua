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
		Msg2Player("Ng­êi ch¬i ph¶i tõ cÊp 92 trë lªn míi cã thÓ tham gia ")
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
	dofile("script/global/quanlygame/sukien/vantieubanghoi/npcdichden.lua")
	if 1==1 then
		--Say("VËn tiªu ®ang t¹m ®ãng.")
	--	return
	end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
      		Say("ChØ cã bang chñ nhµ ng­¬i míi cã t­ c¸ch nãi chuyÖn víi ta.<pic=1>",0)
		return
	end
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	local nHour = tonumber(GetLocalDate("%H%M"))
local nWeek = tonumber(GetLocalDate("%w"))
	if %_Limit(nNpcIdx) == nil then
		return
	end

			if (nHour >= 2030 and nHour <= 2055)   then
		tbProgressBar:OpenByConfig(28, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
	else
     		Say("Thêi gian vËn tiªu bang héi tõ 20h30 ®Õn 20h55 h»ng ngµy. HiÖn t¹i ch­a ®Õn giê ®Ó triÒu ®Þnh cho ta nhËn tiªu bang míi.",0)
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
		--	{szName="Ng©n L­îng",nJxb=50000000,nCount=1},
			{szName="Xu",tbProp={4,417,1,0,0,0},nCount=500},
			{szName="TÈy Tñy Kinh",tbProp={6,1,22,1,0,0},nCount=1},	
			{szName="Vâ L©m MËt TÞch",tbProp={6,1,26,1,0,0},nCount=1},	
			{szName="R­¬ng §å Xanh",tbProp={6,1,4476,1,0,0},nCount=25},	
			{szName="D· TÈu Chi LÖnh",tbProp={6,1,4407,1,0,0},nCount=50},	
		--	{szName="LÖnh Bµi Bang Héi",tbProp={6,1,4466,1,1,0},nCount=50},


	}
Earn(10000000)
	tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn th­ëng VËn Tiªu Bang Héi")

    local szNews = format("Tiªu Bang Héi cña bang Chñ <color=green>"..GetName().."<color=yellow> §· Hoµn thµnh nhiÖm vô nhËn ®­îc phÇn th­ëng.");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
--KickOutSelf()
	else
Say("<color=green>Tiªu ®©u ®Þnh lõa ta µ !!<pic=6>.")
	end
end



