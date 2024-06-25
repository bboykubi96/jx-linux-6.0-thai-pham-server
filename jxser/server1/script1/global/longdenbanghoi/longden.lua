IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{1866,80,4,333,1498,2987,0,"Kú Bang Héi",0,"\\script\\global\\longdenbanghoi\\longden.lua","main", 0},   
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
		Msg2Player("<color=green>ChØ cã bang chñ míi cã ®ñ t­ c¸ch ®o¹t kú Bang Héi.");
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
							--		{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=200},	
	{szName="NhÊt Kû Cµn Kh«n Phï 7 Ngµy",tbProp={6,1,4363,1,1,0},nCount=1,nExpiredTime=7*24*60},
{szName="Ngùa 8x",tbProp={0,10,5,random(5,9),0,0,0},nCount=1,nExpiredTime=7*24*60},
{szName="Ngùa 8x",tbProp={0,10,5,random(5,9),0,0,0},nCount=1,nExpiredTime=7*24*60},
	{szName="M¶nh Ph«i TÝm",tbProp={4,1622,1,1},nCount=20},
--{szName = "NhÉn Kim Quang",tbProp={0,3771},nCount=1,nQuality=1,nExpiredTime=2*24*60},
---{szName = "[Hoµn Mü] HiÖp Cèt T×nh ý KÕt",tbProp={0,5941},nCount=1,nQuality=1,nExpiredTime=2*24*60},
--{szName = "MÆt n¹ V­¬ng Gi¶", tbProp = {0,11,853,1,0,0},nCount=1, nExpiredTime = 1*24*60},
											
									{szName = "Lam Thuû Tinh",tbProp={4,238,1,1},nCount=1},
									{szName = "Tö Thuû Tinh",tbProp={4,239,1,1},nCount=1},
									{szName = "Lôc Thuû Tinh",tbProp={4,240,1,1},nCount=1},
								},
						[2] = {

								},
						}
	tbAwardTemplet:GiveAwardByList(tbAwardLDBH,"PhÇn th­ëng §o¹t Kú Bang Héi")
Earn(10000000)
	Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> ®o¹t thµnh c«ng Kú Bang Héi vµ<color=green> NhËn nh÷ng phÇn th­ëng cao quý nhÊt dµnh cho bang . .!")	
end


local _OnBreak = function()
	Msg2Player("b¹n bÞ tróng ®ßn hoÆc cö ®éng kh«ng thÓ ®o¹t kú")
                      Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> bÞ ®¸nh träng th­¬ng<color=green> kh«ng thÓ tiÕp tôc §o¹t Kú.!")
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	--¿ªÆô½ø¶ÈÌõ
	tbProgressBar:OpenByConfig(23, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
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