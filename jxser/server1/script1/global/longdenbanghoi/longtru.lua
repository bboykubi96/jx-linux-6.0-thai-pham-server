IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{1665,80,4,333,1506,2996,0,"Long Trô Kinh NghiÖm",0,"\\script\\global\\longdenbanghoi\\longtru.lua","main", 0},   
	{1665,80,4,333,1494,2978,0,"Long Trô Kinh NghiÖm",0,"\\script\\global\\longdenbanghoi\\longtru.lua","main", 0},   
	{1665,80,4,333,1509,2980,0,"Long Trô Kinh NghiÖm",0,"\\script\\global\\longdenbanghoi\\longtru.lua","main", 0},   
	{1665,80,4,333,1485,2999,0,"Long Trô Kinh NghiÖm",0,"\\script\\global\\longdenbanghoi\\longtru.lua","main", 0},   
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
                                                                                                              AddTimer(20*60* 18, "OnTimeout", nNpcIdx);

			end; 
	end; 
end


local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia.")
		return
	end

	if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
	--	Msg2Player("ChØ cã bang chñ míi ®ñ t­ c¸ch.")
	--	return
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
		--Msg2Player("Ch­a gia nhËp bang héi, hoÆc kh«ng ph¶i lµ bang chñ kh«ng thÓ THAM GIA.");
		--return
     end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
	--	Msg2Player("<color=green>ChØ cã bang chñ míi cã ®ñ t­ c¸ch ®o¹t kú Bang Héi.");
		--return
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
	
--	DelNpc(nNpcIdx)
	local tbAwardLDBH = {
						[1] = {		
							--		{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=200},	

								},
						[2] = {

								},
						}
						tbAwardTemplet:GiveAwardByList({{nExp = 300000}}, "test", 1);
		SetTask(3077,0)
--	tbAwardTemplet:GiveAwardByList(tbAwardLDBH,"PhÇn th­ëng")
--Earn(10000000)
--	Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> ®o¹t thµnh c«ng Kú Bang Héi vµ<color=green> NhËn nh÷ng phÇn th­ëng cao quý nhÊt dµnh cho bang . .!")	
end


local _OnBreak = function()
SetTask(3077,0)
	Msg2Player("b¹n bÞ tróng ®ßn hoÆc cö ®éng kh«ng thÓ tiÕp tôc")
               --       Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> bÞ ®¸nh träng th­¬ng<color=green> kh«ng thÓ tiÕp tôc §o¹t Kú.!")
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	--¿ªÆô½ø¶ÈÌõ
	if GetTask(3077)>0 then
	return
end
	SetTask(3077,1)
	tbProgressBar:OpenByConfig(5, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)

end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end

local _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=42><color=red>VËt phÈm <color=pink><%s><color=green><enter> võa r¬i tõ <color=yellow>Lång §Ìn Bang Héi<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end