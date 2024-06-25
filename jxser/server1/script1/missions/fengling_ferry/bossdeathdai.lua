Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\fengling_ferry\\fld_head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\event\\jiefang_jieri\\200904\\shuizei\\shuizei.lua");
Include("\\script\\event\\change_destiny\\mission.lua");	-- �������
Include("\\script\\lib\\awardtemplet.lua")
SIGNET_DROPCOUNT = 2

local _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=42><color=red>V�t ph�m <color=pink><%s><color=green><enter> v�a r�i t� <color=yellow>Boss Th�y T�c<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
		local tbAward = {
	[1] = {	
	---{nExp_tl=500000},	
	--	{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=15},
	--	{szName="Huy�n tinh Kho�ng Th�ch",tbProp={6,1,147,2,0},nCount=1},
	--	{szName="B� C�",tbProp={6,1,4415,1,1,0},nCount=5},
	--		{szName="M�nh Gh�p R��ng An Bang",tbProp={4,1624,1,1},nCount=5},
	{szName="L�nh b�i g�i boss",tbProp={6,1,4489,1,1,0},nCount=8},
	{szName="Truy C�ng L�nh",tbProp={6,1,2015,1,1},nCount=5},
	{szName="Ti�n Th�o L�",tbProp={6,1,71,1,1},nCount=1},
	{szName="Thi�n S�n B�o L�",tbProp={6,1,72,1,1},nCount=1},
	{szName="B�ch Qu� L�",tbProp={6,1,73,1,1},nCount=1},
	{szName="Ph�c Duy�n",tbProp={6,1,123,1,1},nCount=1},
	{szName="Ph�c Duy�n",tbProp={6,1,124,1,1},nCount=1},
		
	},
	[2] = {
	
	{szName="M� B�i Gh�p Th� C��i",tbProp={6,1,random(4529,4533),1,1},nCount=1,nRate=40},
	{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,1},nCount=1,nRate=20},
--	{szName="M�nh Hi�p C�t",tbProp={4,random(1629,1632)},nCount=1,nRate=5,CallBack= _Message},
	--{szName="M�nh ��nh Qu�c",tbProp={4,random(1637,1641)},nCount=1,nRate=5,CallBack= _Message},
--		{szName="Ng� H�nh �n",tbProp={0,5946},nCount=1,nQuality=1,nRate=10,nExpiredTime=7*24*60},
	--	{szName="Hi�p C�t T�nh � K�t",tbProp={0,189},nCount=1,nQuality=1,nRate=50},
	},
	}

		local tbAward22 = {
	[1] = {	
	{nExp_tl=3000000},	
	--	{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=15},
	--	{szName="Huy�n tinh Kho�ng Th�ch",tbProp={6,1,147,2,0},nCount=1},

	--	{szName="Ph�c Duy�n ��i",tbProp={6,1,124,1,1,0},nCount=1},
				{szName="Ph�c Duy�n Ti�u",tbProp={6,1,122,1,1,0},nCount=1},
						{szName="Ph�c Duy�n Trung",tbProp={6,1,123,1,1,0},nCount=1},
				{szName="Thi�t La H�n",tbProp={6,1,23,1,1,0},nCount=1},
	--			{szName="Phi�u Bang H�i",tbProp={4,1621,1,1},nCount=15},
--		{szName="M�nh Ph�i T�m",tbProp={4,1622,1,1},nCount=5},
		
	},
	[2] = {
						{szName = "Ph�c Duy�n ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=15},
			{szName = "Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nRate=15},
			{szName = "Thi�n S�n B�o L�",tbProp={6,1,72,1,0,0},nCount=1,nRate=15},
			{szName = "Thi�t La H�n",tbProp={6,1,23,1,0,0},nCount=1,nRate=15},
			{szName = "Thu� Tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=5},
			{szName = "Tinh H�ng B�o Th�ch",tbProp={4,353,1,1},nCount=1,nRate=5},
					{szName="Huy�n Tinh Kho�ng Th�ch",tbProp={6,1,147,3,0},nCount=1,nRate=15},
		{szName="Huy�n Tinh Kho�ng Th�ch",tbProp={6,1,147,4,0},nCount=1,nRate=15},
	
--		{szName="Ng� H�nh �n",tbProp={0,5946},nCount=1,nQuality=1,nRate=10,nExpiredTime=7*24*60},
	--	{szName="Hi�p C�t T�nh � K�t",tbProp={0,189},nCount=1,nQuality=1,nRate=50},
	},
	}
function OnDeath( nNpcIndex )
	local x, y, world = GetNpcPos(nNpcIndex);
	local maxcount = SIGNET_DROPCOUNT;
	local _, nTongID = GetTongName();
	if (nTongID > 0) then
		if (IsDoubledMoneyBox(nTongID)) then
			maxcount = getSignetDropRate(SIGNET_DROPCOUNT);
		end;
	end;
	local nCurtime = GetCurServerTime() + 7 * 24 *60 * 60
	local nYear = tonumber(FormatTime2String("%Y", nCurtime))
	local nMonth = tonumber(FormatTime2String("%m", nCurtime))
	local nDay = tonumber(FormatTime2String("%d", nCurtime))

	

	--if (jf0904_shuizei_IsActtime() == 1) then
	--	local nItemIdx = DropItem(world, x, y, PlayerIndex, 6,1,2015, 1, 0, 0, 0, 0, 0, 0, 0, 0);
		
	--	local nCurtime = tonumber(GetLocalDate("%H%M"));
	--	local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
	--	ITEM_SetExpiredTime(nItemIdx, nRestMin);
	--	SyncItem(nItemIdx);
		
		--local nRate = 0.005;
		--local nCurRate	= random(10000000)
		--if (nCurRate <= 10000000 * nRate) then		
			--local x, y, world = GetNpcPos(nNpcIndex);
			--local nItemIdx = DropItem(world, x, y, PlayerIndex, 6,1,2115, 1, 0, 0, 0, 0, 0, 0, 0, 0);
		--end
	--end


	-- �������
	tbChangeDestiny:completeMission_WaterThief();
	--tbAwardTemplet:Give(tbAward, 1, {%EVENT_LOG_TITLE, "Nh�n Ph�n Th��ng Ti�u Di�t Boss Th�y T�c ��u L�nh"})	
--AddOwnExp(10e6)
	local nhour = tonumber(GetLocalDate("%H"))
--	if nhour==23  then
		tbAwardTemplet:GiveAwardByList({{nExp_tl=5000000},}, "test", 1);
			tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbAward,format("killed_%s",GetNpcName(nNpcIndex)))
	--end
		--	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbAward,format("killed_%s",GetNpcName(nNpcIndex)))
	--		tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n Th��ng")
--	Add120SkillExp(5000000)
--	Clear120SkillExpLimit ()
--	Earn(2000000)
	Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().." <color=green>�� nh�n ���c ph�n th��ng Ti�u di�t Th�y T�c ��u L�nh => Phong L�ng ��.")	

--------------------them exp thuy tac dau linh
	local W,X,Y = GetWorldPos();
	local nMapId = W;	
	if ( nMapId == 337 ) then
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 1e6, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng g�n l�c Bossb� ti�u di�t"));
	end
end
	local W,X,Y = GetWorldPos();
	local nMapId = W;	
	if ( nMapId == 338 ) then
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 1e6, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng g�n l�c Bossb� ti�u di�t"));
	end
end
	local W,X,Y = GetWorldPos();
	local nMapId = W;	
	if ( nMapId == 339 ) then
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
	doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 1e6, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng g�n l�c Bossb� ti�u di�t"));
	end
end
end
