IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{1556,80,4,37,1576,3454,0,"Trèng Kh¶i Hoµn Bang Héi",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\trongbanghoi\\trongbanghoi.lua","main", 0},   
	--{1556,80,4,37,1585,3247,0,"Trèng Bang Héi",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\trongbanghoi\\trongbanghoi.lua","main", 0},   
	--{1556,80,4,37,1569,3251,0,"Trèng Bang Héi",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\trongbanghoi\\trongbanghoi.lua","main", 0},   

}
function add_npc_click()
	call_npc(NPC_Clickdb)
end
function call_npc(tbnpc) 
		for i = 1 , getn(tbnpc) do 
			Mid = SubWorldID2Idx(tbnpc[i][4]); 
			if (Mid >= 0 ) then 
				TabValue5 = tbnpc[i][5] * 32; 
				TabValue6 = tbnpc[i][6] * 32; 
				local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]); 
				SetNpcScript(nNpcIdx, tbnpc[i][10]); 
                                                                                                              AddTimer(1800* 18, "OnTimeout", nNpcIdx);

			end; 
	end; 
end


local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia.")
		return
	end

	if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("ChØ cã bang chñ míi ®ñ t­ c¸ch.")
		return
	end

	local nPlayerLevel = GetLevel();
	local nGetSeedLevel = nil;
	if (nPlayerLevel < 90) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 90 and nPlayerLevel < 120) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 120) then
		nGetSeedLevel = 3;
	end
	local nBuildFund = 5000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("Ch­a gia nhËp bang héi, hoÆc kh«ng ph¶i lµ bang chñ kh«ng thÓ THAM GIA.");
		return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		Msg2Player("<color=green>ChØ cã bang chñ míi cã ®ñ t­ c¸ch ®¸nh trèng.");
		return
	end;

	return nGetSeedLevel
end
	
local _GetFruit = function(nNpcIdx, dwNpcId)
	
	if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
		return 0
	end
	local nGetSeedLevel = %_Limit(nNpcIdx)
	
	if nGetSeedLevel == nil then
		return 0
	end
	
	DelNpc(nNpcIdx)

	local tkctItem ={
		{szName="Trèng Kh¶i Hoµn", tbProp={6,1,2309,1,0,0}, nCount = 1},
	--	{szName="Tói tiÒn ®ång", tbProp={6,1,4718,1,0,0}, nCount = 20},
	--	{szName="ThÇn Hµnh Phï", tbProp={6,1,1266,1,0,0}, nCount = 1 , nExpiredTime = 10080},
	--	{szName="Tiªn Th¶o Lé (8h)", tbProp={6,1,1181,0,0}, nCount = 10},
	--	{szName="TÈy Tñy Kinh", tbProp={6,1,22,0,0}, nCount = 3},
	--	{szName="Vâ L©m MËt TÞch", tbProp={6,1,26,0,0}, nCount = 3},
	--	{szName="Thñy Tinh",tbProp={4,238,1,1,0,0,0},nCount=1},
	--	{szName="Thñy Tinh",tbProp={4,239,1,1,0,0,0},nCount=1},
	--	{szName="Thñy Tinh",tbProp={4,240,1,1,0,0,0},nCount=1},
	--	{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0,0},nCount=6},
	}
	tbAwardTemplet:GiveAwardByList(tkctItem, "");
RestoreOwnFeature()
	Msg2SubWorld("<color=cyan>Huynh ®µi <color=green>"..GetName().." ®¸nh thñng trèng nhËn ®­îc nhiÒu chiÕn lîi phÈm.")	
end


local _OnBreak = function()
	RestoreOwnFeature()
	Msg2Player("b¹n bÞ tróng ®ßn hoÆc cö ®éng kh«ng thÓ ®¸nh trèng")
                 Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> bÞ ®¸nh träng th­¬ng<color=green> kh«ng thÓ ®¸nh trèng!")
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	--¿ªÆô½ø¶ÈÌõ
	ChangeOwnFeature(0,0,526);
	tbProgressBar:OpenByConfig(23, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end
