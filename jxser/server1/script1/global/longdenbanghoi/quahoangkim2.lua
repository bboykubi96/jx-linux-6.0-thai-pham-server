IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	
	{1111,80,4,355,1389,2758,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1389,2768,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1381,2772,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1378,2778,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1374,2787,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	
	{1111,80,4,355,1377,2749,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1370,2750,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1362,2746,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1360,2772,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1364,2785,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	
	{1111,80,4,355,1365,2759,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1376,2761,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1369,2772,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1396,2772,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1398,2756,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
			
	{1111,80,4,355,1390,2740,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1358,2732,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1348,2733,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1345,2744,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	{1111,80,4,355,1348,2760,0,"Qu� Huy Ho�ng",0,"\\script\\global\\longdenbanghoi\\quahoangkim2.lua","main", 0}, 
	
	

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
                                                                                                              AddTimer(5*60* 18, "OnTimeout", nNpcIdx);

			end; 
	end; 
end


local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia.")
		return
	end

	if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("Tr�ng th�i chi�n ��u m�i nh�t ���c.")
		return
	end

	local nPlayerLevel = GetLevel();
	local nGetSeedLevel = nil;
	if (nPlayerLevel < 80) then

	Say("D��i c�p 80 kh�ng th� nh�t ���c Qu� Huy Ho�ng Cao")
	return
	else
		nGetSeedLevel=3
	end
	local nBuildFund = 5000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		--Msg2Player("Ch�a gia nh�p bang h�i, ho�c kh�ng ph�i l� bang ch� kh�ng th� THAM GIA.");
		--return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
	--	Msg2Player("<color=green>Ch� c� bang ch� m�i c� �� t� c�ch m� Qu� Huy Ho�ng Cao n�y.");
	--	return
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
						--			{szName="Xu",tbProp={4,417,1,1,0,0},nCount=20},	
	--{szName="B�o r��ng Th�n B�",tbProp={6,1,4447,1,1,0},nCount=1},
	{szName="Qu� Huy Ho�ng Cao",tbProp={6,1,906,1,0,0},nCount=1,nExpiredTime=7*24*60},	
--{szName="Ng�a B�n Ti�u",tbProp={0,10,6,10,0,0,0},nCount=1,nExpiredTime=1*24*60},
--{szName = "Nh�n Kim Quang",tbProp={0,3771},nCount=1,nExpiredTime=2*24*60},
								--	{szName="Tran Phai Linh Don",tbProp={6,1,1704,1,0,0},nCount=2},
								---	{szName="Tran Phai Linh Duoc",tbProp={6,1,1705,1,0,0},nCount=2},

									
											
												--	{szName = "T�i Qu� S� Ki�n",tbProp={6,1,4409,0},nCount=200},
								},
						[2] = {
								--	{szName="Phi V�n Th�ch",tbProp={4,1620,1,1},nCount=1,nRate=20},
								--	{szName="An Bang",tbProp={0,random(210,213)},nCount=1,nQuality=1,nExpiredTime=60*24,nRate=30},
								},
						}

	tbAwardTemplet:GiveAwardByList(tbAwardLDBH,"Ph�n th��ng Qu� Huy Ho�ng Cao")
	SetTask(3077,0)
local _, nTongID = GetTongName()
				Msg2Tong(nTongID,"��i hi�p "..GetName().." �� nh�t ���c qu� Huy Ho�ng Cao")
--Msg2SubWorld("<color=green>��i hi�p<color=red>"..GetName().."<color> �� m� th�nh c�ng Qu� Huy Ho�ng Cao v� nh�n ���c ph�n th��ng,,,!")	
end


local _OnBreak = function()
SetTask(3077,0)
	Msg2Player("b�n b� tr�ng ��n ho�c c� ��ng kh�ng th� m� Qu� Huy Ho�ng Cao")
--   Msg2SubWorld("<color=green>��i hi�p<color=red>"..GetName().."<color> �� b� ��nh tr�ng th��ng, kh�ng th� ti�p t�c m� Qu� Huy Ho�ng Cao.!")	
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
if GetTask(3077)>0 then
	return
end
	--����������
	SetFightState(1)
	SetTask(3077,1)
	tbProgressBar:OpenByConfig(random(29,33), %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end

local _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=42><color=red>V�t ph�m <color=pink><%s><color=green><enter> v�a r�i t� <color=yellow>Qu� Huy Ho�ng Cao<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end