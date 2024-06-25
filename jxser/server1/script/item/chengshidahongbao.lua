Include("\\script\\lib\\awardtemplet.lua")
 _Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green> t� c�ng th�nh th� ��i h�ng bao", GetName(), strItemName)
	local handle = OB_Create();
	Msg2SubWorld(strMessage)
	-- ObjBuffer:PushObject(handle, strMessage)
	-- RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	-- OB_Release(handle)
end
local tbTop={
		[23]={szName = "Ng�n L��ng", nJxb =250000, nRate = 100, nCount = 1},
		-- [1]={szName="��i th�nh b� k�p",tbProp={6,1,2424,1,0,0},nRate=0.01,CallBack =_Message},
		[1]={szName="Ti�n th�o l� 8h",tbProp={6,1,1181,1,0,0},nRate=0.1,CallBack =_Message},
		[2] = {szName="��nh qu�c",tbProp={0,{159,160}},nQuality = 1,nRate=0,CallBack = _Message},
		[3]={szName="Th�y tinh",tbProp={4,{238,240},1,1,0,0},nRate=15,CallBack = _Message},
		[4]={szName="Ti�n th�o l�",tbProp={6,1,71,1,0,0},nRate=5,},
		[5]={szName="Qu� hoa t�u",tbProp={6,1,125,1,0,0},nRate=5,},
		[6] = {szName="��nh qu�c",tbProp={0,{161,163}},nQuality = 1,nRate=0,CallBack = _Message},
		[7]={szName="Tinh h�ng b�o th�ch",tbProp={4,353,1,1,0,0},nRate=15,CallBack =_Message},
		[8] = {szName = "Ng�n L��ng", nJxb =300000, nRate = 2, nCount = 1},
		[9] = {szName="Hi�p c�t",tbProp={0,{186,188}},nQuality = 1,nRate=0,CallBack = _Message},
		[10] = {szName="Chi�u d�",tbProp={6,1,2332,1,0,0},nRate=0.1,CallBack = _Message},
		[11] = {szName="M� b�i 8x",tbProp={6,1,{2328,2331},1,0,0},nRate=0.2,CallBack = _Message},
		[12] =	{szName = "T�y t�y kinh",tbProp={6,1,22,1,0,0,0}, nRate=1,CallBack = _Message},
		[13] =	{szName = "V� l�m m�t t�ch",tbProp={6,1,26,1,0,0,0}, nRate=1,CallBack = _Message},
		[14] =	{szName = "Th�n h�nh ph�",tbProp={6,1,1266,1,0,0,0}, nRate=0.5,nExpiredTime=24*60*7,CallBack = _Message},
		[15] =	{szName = "Th� ��a ph�",tbProp={6,1,438,1,0,0,0}, nRate=0.8,nExpiredTime=24*60*7,CallBack = _Message},
		[16] = {szName="Nhu t�nh",tbProp={0,{191,193}},nQuality = 1,nRate=0,CallBack = _Message},
		[17] = {szName="Ph�c duy�n",tbProp={6,1,{122,124},1,0,0},nRate=2,CallBack = _Message},
		[18] = {szName = "Ng�n L��ng", nJxb =500000, nRate = 1, nCount = 1},
		[19] = {szName = "Ng�n L��ng", nJxb =1000000, nRate = 0.5, nCount = 1},
		[20] = {szName="Hi�p c�t",tbProp={0,189},nQuality = 1,nRate=0,CallBack = _Message},
		[21] = {szName="Nhu T�nh",tbProp={0,190},nQuality = 1,nRate=0,CallBack = _Message},
		[22] = {szName="M� b�i phi v�n",tbProp={6,1,2396,1,0,0},nRate=0.001,CallBack = _Message},
		[22] = {szName="R��ng cao qu�",tbProp={6,1,1384,1,0,0},nRate=0,CallBack = _Message},
}
function main()
if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 
end
tbAwardTemplet:GiveAwardByList(%tbTop, "Mo than bi dai hong bao")
end