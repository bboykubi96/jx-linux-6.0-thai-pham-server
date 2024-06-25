Include("\\script\\lib\\awardtemplet.lua")
 _Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=yellow>%s<color=green> tõ c«ng thµnh thÞ ®¹i hång bao", GetName(), strItemName)
	local handle = OB_Create();
	Msg2SubWorld(strMessage)
	-- ObjBuffer:PushObject(handle, strMessage)
	-- RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	-- OB_Release(handle)
end
local tbTop={
		[23]={szName = "Ng©n L­îng", nJxb =250000, nRate = 100, nCount = 1},
		-- [1]={szName="§¹i thµnh bÝ kÝp",tbProp={6,1,2424,1,0,0},nRate=0.01,CallBack =_Message},
		[1]={szName="Tiªn th¶o lé 8h",tbProp={6,1,1181,1,0,0},nRate=0.1,CallBack =_Message},
		[2] = {szName="§Þnh quèc",tbProp={0,{159,160}},nQuality = 1,nRate=0,CallBack = _Message},
		[3]={szName="Thñy tinh",tbProp={4,{238,240},1,1,0,0},nRate=15,CallBack = _Message},
		[4]={szName="Tiªn th¶o lé",tbProp={6,1,71,1,0,0},nRate=5,},
		[5]={szName="QuÕ hoa töu",tbProp={6,1,125,1,0,0},nRate=5,},
		[6] = {szName="§Þnh quèc",tbProp={0,{161,163}},nQuality = 1,nRate=0,CallBack = _Message},
		[7]={szName="Tinh hång b¶o th¹ch",tbProp={4,353,1,1,0,0},nRate=15,CallBack =_Message},
		[8] = {szName = "Ng©n L­îng", nJxb =300000, nRate = 2, nCount = 1},
		[9] = {szName="HiÖp cèt",tbProp={0,{186,188}},nQuality = 1,nRate=0,CallBack = _Message},
		[10] = {szName="ChiÕu d¹",tbProp={6,1,2332,1,0,0},nRate=0.1,CallBack = _Message},
		[11] = {szName="M· bµi 8x",tbProp={6,1,{2328,2331},1,0,0},nRate=0.2,CallBack = _Message},
		[12] =	{szName = "TÈy tñy kinh",tbProp={6,1,22,1,0,0,0}, nRate=1,CallBack = _Message},
		[13] =	{szName = "Vâ l©m mËt tÞch",tbProp={6,1,26,1,0,0,0}, nRate=1,CallBack = _Message},
		[14] =	{szName = "ThÇn hµnh phï",tbProp={6,1,1266,1,0,0,0}, nRate=0.5,nExpiredTime=24*60*7,CallBack = _Message},
		[15] =	{szName = "Thæ ®Þa phï",tbProp={6,1,438,1,0,0,0}, nRate=0.8,nExpiredTime=24*60*7,CallBack = _Message},
		[16] = {szName="Nhu t×nh",tbProp={0,{191,193}},nQuality = 1,nRate=0,CallBack = _Message},
		[17] = {szName="Phóc duyªn",tbProp={6,1,{122,124},1,0,0},nRate=2,CallBack = _Message},
		[18] = {szName = "Ng©n L­îng", nJxb =500000, nRate = 1, nCount = 1},
		[19] = {szName = "Ng©n L­îng", nJxb =1000000, nRate = 0.5, nCount = 1},
		[20] = {szName="HiÖp cèt",tbProp={0,189},nQuality = 1,nRate=0,CallBack = _Message},
		[21] = {szName="Nhu T×nh",tbProp={0,190},nQuality = 1,nRate=0,CallBack = _Message},
		[22] = {szName="M· bµi phi v©n",tbProp={6,1,2396,1,0,0},nRate=0.001,CallBack = _Message},
		[22] = {szName="R­¬ng cao quý",tbProp={6,1,1384,1,0,0},nRate=0,CallBack = _Message},
}
function main()
if CalcFreeItemCellCount() < 20 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 
end
tbAwardTemplet:GiveAwardByList(%tbTop, "Mo than bi dai hong bao")
end