IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	--{1985,80,4,959,1503,3100,0,"L©m ThÞt Chã",0,"\\script\\global\\longdenbanghoi\\noinauthitcho.lua","main", 0},   
	{1985,80,4,380,1432,3336,0,"L©m ThÞt Chã",0,"\\script\\global\\longdenbanghoi\\noinauthitcho.lua","main", 0},   
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
                                                                                                              AddTimer(30*60* 18, "OnTimeout", nNpcIdx);
			end; 
	end; 
end


local _Limit = function(nNpcIdx)
local nTime = tonumber(GetLocalDate("%H%M"));
	--if nTime>=2035 then	
--	Say("Kh«ng ®¸nh mak muèn cã ¨n, th× chØ cã ¨n ®Çu bïi, ¨n cøt nhÐ!!!...")
	--return
--	end
if GetTask(3003) ==0 then
SetTask(3003,1)
end
	if GetTask(3003)>=30 then
		Msg2Player("ChØ ®­îc ¨n tèi ®a 30 KG thÞt chã th«i nha. ¡n nh×u bÞ Gót ®ã.")
		return
	end
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia.")
		return
	end
--local nBuildFund = 5000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("Ch­a gia nhËp bang héi, hoÆc kh«ng ph¶i lµ bang chñ kh«ng thÓ THAM GIA.");
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
	
	--DelNpc(nNpcIdx)
	local tbAwardLDBH = {
						[1] = {		
								--	{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=10},	
	--{szName="B¶o r­¬ng ThÇn BÝ",tbProp={6,1,4447,1,1,0},nCount=1},
	{szName="ThÞt Chã",tbProp={6,1,4384,1,0,0},nCount=1},	
--{szName="Ngùa Phiªn Vò",tbProp={0,10,7,10,0,0,0},nCount=1,nExpiredTime=3*24*60},
--{szName = "NhÉn Kim Quang",tbProp={0,3771},nCount=1,nExpiredTime=2*24*60},
								--	{szName="Tran Phai Linh Don",tbProp={6,1,1704,1,0,0},nCount=2},
								---	{szName="Tran Phai Linh Duoc",tbProp={6,1,1705,1,0,0},nCount=2},

								--	{szName="Long §¶m",tbProp={0,5941},nCount=1,nQuality=1},
											
												--	{szName = "Tói Quµ Sù KiÖn",tbProp={6,1,4409,0},nCount=200},
								},
						[2] = {

								},
						}

	tbAwardTemplet:GiveAwardByList(tbAwardLDBH,"PhÇn th­ëng Nåi NÊu ThÞt Chã")
SetTask(3003,GetTask(3003)+1)
Msg2SubWorld("<color=green>§¹i HiÖp <color=yellow>"..GetName().."<color> ®· ¡n Chùc cña <color=blue>L©m ThÞt Chã<color><color=cyan> 1kg ThÞt Chã T­¬i .!")	
end


local _OnBreak = function()
	Msg2Player("B¹n bÞ tróng ®ßn hoÆc cö ®éng kh«ng thÓ ¨n chùc thÞt chã.")
                  --    Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> bÞ ®¸nh träng th­¬ng<color=green> kh«ng thÓ më Qu¶ Hoµng Kim.!")
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	--SetFightState(1)
	if %_Limit(nNpcIdx) == nil then
		return
	end
	--¿ªÆô½ø¶ÈÌõ
	tbProgressBar:OpenByConfig(5, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end

local _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=42><color=red>VËt phÈm <color=pink><%s><color=green><enter> võa r¬i tõ <color=yellow>Qu¶ Hoµng Kim<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end