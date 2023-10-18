IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")

Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")

IncludeLib("TASKSYS");

NPC_Clickdb = {
	{1658,80,4,78,1584,3212,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1579,3216,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1575,3221,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1570,3226,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1564,3232,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1559,3237,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1563,3255,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1569,3251,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1574,3246,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1579,3240,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1584,3235,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1588,3231,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1594,3225,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1589,3217,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1584,3223,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1579,3229,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1573,3234,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1567,3241,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1562,3247,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1557,3251,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
	{1658,80,4,78,1553,3243,0,"B�n Ti�c",0,"\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua","main", 0},   
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
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia.")
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
		{szName="Ph�c Duy�n",tbProp={6,1,random(122,124),0,0},nCount=1,nRate=10,CallBack = _Message},
		{szName="Th�y Tinh",tbProp={4,random(238,240),1,1,0,0,0},nCount=1,nRate=10,CallBack = _Message},
		{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0,0},nCount=1,nRate=10,CallBack = _Message},
		{szName="T�y T�y Kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=10,CallBack = _Message},
		{szName="V� L�m M�t T�ch",tbProp={6,1,26,1,0,0},nCount=1,nRate=10,CallBack = _Message},
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nRate=10,CallBack = _Message},
		{szName="Qu� Hoa T�u",tbProp={6,1,125,1,0,0},nCount=1,nRate=10,CallBack = _Message},
		{szName="TTL 8h",tbProp={6,1,1181,1,0,0},nCount=1,nRate=10,CallBack = _Message},
		{szName="L�nh B�i Boss",tbProp={6,1,4728,1,0,0},nCount=1,nRate=10,CallBack = _Message},
		{szName="Thi�n Ho�ng",tbProp={0,random(168,176)},nCount=1,nQuality = 1,nRate=10,CallBack = _Message},
	}
	tbAwardTemplet:GiveAwardByList(tkctItem, "cac");
	PlayerFunLib:AddTaskDaily(TSK_USED_TIEC, 1) 

	--Msg2SubWorld("<color=cyan>Ng��i ch�i<color=green>"..GetName().." �n u�ng no say nh�n ���c 1 Ti�n th�o l� 8h v� 5 tri�u kinh nghi�m.")	
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>%s<color> nh�n ���c:<color=yellow>%s<color><enter>T� <color=yellow>B�n Ti�c (T��ng D��ng Th�nh).<color>", GetName(), strItemName)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

TSK_USED_TIEC = 2000
NDAILYTIME = 5

local _OnBreak = function()
	local solanan = NDAILYTIME;
	Msg2Player("Qu� tr�nh �n ti�c b� ng�t qu�ng!")
end

function main()
	local szFailMsg = format("M�i ng��i ch�i ch� tham gia y�n ti�c ���c t�i �a 5 l�n m�i th� 7 th�i nh�!",NDAILYTIME)	
	if PlayerFunLib:CheckTaskDaily(TSK_USED_TIEC, NDAILYTIME, szFailMsg, "<") == 1 then
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	if %_Limit(nNpcIdx) == nil then
		return
	end
	tbProgressBar:OpenByConfig(5, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
	end
end;

function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end
