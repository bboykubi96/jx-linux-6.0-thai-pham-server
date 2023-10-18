IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{1866,80,4,333,1498,2987,0,"K� Bang H�i",0,"\\script\\global\\longdenbanghoi\\longden.lua","main", 0},   
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
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia.")
		return
	end

	if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("Ch� c� bang ch� m�i �� t� c�ch.")
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
		Msg2Player("Ch�a gia nh�p bang h�i, ho�c kh�ng ph�i l� bang ch� kh�ng th� THAM GIA.");
		return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		Msg2Player("<color=green>Ch� c� bang ch� m�i c� �� t� c�ch �o�t k� Bang H�i.");
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
							--		{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=200},	
	{szName="Nh�t K� C�n Kh�n Ph� 7 Ng�y",tbProp={6,1,4363,1,1,0},nCount=1,nExpiredTime=7*24*60},
{szName="Ng�a 8x",tbProp={0,10,5,random(5,9),0,0,0},nCount=1,nExpiredTime=7*24*60},
{szName="Ng�a 8x",tbProp={0,10,5,random(5,9),0,0,0},nCount=1,nExpiredTime=7*24*60},
	{szName="M�nh Ph�i T�m",tbProp={4,1622,1,1},nCount=20},
--{szName = "Nh�n Kim Quang",tbProp={0,3771},nCount=1,nQuality=1,nExpiredTime=2*24*60},
---{szName = "[Ho�n M�] Hi�p C�t T�nh � K�t",tbProp={0,5941},nCount=1,nQuality=1,nExpiredTime=2*24*60},
--{szName = "M�t n� V��ng Gi�", tbProp = {0,11,853,1,0,0},nCount=1, nExpiredTime = 1*24*60},
											
									{szName = "Lam Thu� Tinh",tbProp={4,238,1,1},nCount=1},
									{szName = "T� Thu� Tinh",tbProp={4,239,1,1},nCount=1},
									{szName = "L�c Thu� Tinh",tbProp={4,240,1,1},nCount=1},
								},
						[2] = {

								},
						}
	tbAwardTemplet:GiveAwardByList(tbAwardLDBH,"Ph�n th��ng �o�t K� Bang H�i")
Earn(10000000)
	Msg2SubWorld("<color=cyan>Bang Ch� <color=green>"..GetName().."<color=yellow> �o�t th�nh c�ng K� Bang H�i v�<color=green> Nh�n nh�ng ph�n th��ng cao qu� nh�t d�nh cho bang . .!")	
end


local _OnBreak = function()
	Msg2Player("b�n b� tr�ng ��n ho�c c� ��ng kh�ng th� �o�t k�")
                      Msg2SubWorld("<color=cyan>Bang Ch� <color=green>"..GetName().."<color=yellow> b� ��nh tr�ng th��ng<color=green> kh�ng th� ti�p t�c �o�t K�.!")
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	--����������
	tbProgressBar:OpenByConfig(23, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end

local _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=42><color=red>V�t ph�m <color=pink><%s><color=green><enter> v�a r�i t� <color=yellow>L�ng ��n Bang H�i<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end