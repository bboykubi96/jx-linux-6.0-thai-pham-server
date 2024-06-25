IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{1220,80,4,53,1633,3309,0,"Lång §Ìn Bang Héi",0,"\\script\\global\\longdenbanghoi\\longden.lua","main", 0},   
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
		Msg2Player("<color=green>ChØ cã bang chñ míi cã ®ñ t­ c¸ch më lång ®Ìn.");
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
	local tbAwardLDBH = {
						[1] = {		
									{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=100},	
									{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=5},
									{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=5},
									{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=5},
									{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=5},
									{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=5},
									{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=5},
									{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=5},
									{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=5},
									{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=5},
									{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=5},
									{szName="Tran Phai Linh Don",tbProp={6,1,1704,1,0,0},nCount=2},
									{szName="Tran Phai Linh Duoc",tbProp={6,1,1705,1,0,0},nCount=2},
	
								},
						[2] = {
									--{szName="TÈy Tñy Kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=25},
								},
						}
	tbAwardTemplet:GiveAwardByList(tbAwardLDBH,"PhÇn th­ëng §Òn Lång Bang Héi")
	local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*1) SyncItem(Index) --- can khon
--	local Index = AddGoldItem(0,142) ITEM_SetExpiredTime(Index,24*60*1) SyncItem(Index)
	Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> §· më thµnh c«ng lång ®Ìn vµ<color=green> NhËn nh÷ng phÇn th­ëng cao quý nhÊt dµnh cho bang . .!")	
end


local _OnBreak = function()
	Msg2Player("b¹n bÞ tróng ®ßn hoÆc cö ®éng kh«ng thÓ më lång ®Ìn")
                      Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> bÞ ®¸nh träng th­¬ng<color=green> kh«ng thÓ më lång ®Ìn.!")
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	--¿ªÆô½ø¶ÈÌõ
	tbProgressBar:OpenByConfig(20, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end
