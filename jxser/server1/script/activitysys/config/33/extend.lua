Include("\\script\\activitysys\\config\\33\\head.lua")
Include("\\script\\activitysys\\config\\33\\variables.lua")
Include("\\script\\lib\\objbuffer_head.lua")

pActivity.tbNpc = {}
pActivity.nPak = curpack()
SeptemperRewardsCityMapID = nil

function SetSeptemperRewardsCityMapID(handle)
	
	local CityMapID = ObjBuffer:PopObject(handle);
	SeptemperRewardsCityMapID = CityMapID;
end
	

--Ìí¼Ó»î¶¯NPC
function pActivity:AddInitNpc()
	local tbNpcPos = {
		[1] = {78,1584,3235,},
		--[2] = {37,1707,3120,},
	}
	local tbNpc = {
		--[1] = {
			--szName = "T­îng §µi", 
			--nLevel = 95,
			--nNpcId = 1785,
			--nIsboss = 0,
			--szScriptPath = "\\script\\activitysys\\npcdailog.lua",
			--},
		--[2] = {
			--szName = "H»ng Nga", 
			--nLevel = 95,
			--nNpcId = 1867,
			--nIsboss = 0,
			--szScriptPath = "\\script\\activitysys\\npcdailog.lua",
			--}
	}
	for i=1,getn(tbNpcPos) do
		local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
		basemission_CallNpc(tbNpc[i], nMapId, nPosX * 32, nPosY * 32)	
	end
end	

tbMonstorAwardManhCo = {
		{szName="M¶nh cê 1",tbProp={6,1,4278,1,0,0},nExpiredTime=QK2015ngayhethan,nRate = 1.0,},
		{szName="M¶nh cê 2",tbProp={6,1,4279,1,0,0},nExpiredTime=QK2015ngayhethan,nRate = 1.0,},
		{szName="M¶nh cê 3",tbProp={6,1,4280,1,0,0},nExpiredTime=QK2015ngayhethan,nRate = 1.0,},
		{szName="M¶nh cê 4",tbProp={6,1,4281,1,0,0},nExpiredTime=QK2015ngayhethan,nRate = 1.0,},
	}	

function pActivity:KillMonsterAwardManhCo(nNpcIndex)
	local tbAward = %tbMonstorAwardManhCo
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, tbAward, %EVENT_LOG_TITLE, 1)
end 

function pActivity:UseLaCoDoSaoVang()
	local tbAward = %tbAward_CoDoSaoVang["CoDoSaoVang"]
	local nUsedCount = self:GetTask(%TSK_LaCoDoSaoVang)
	Msg2Player("§· sö dông: <color=green>"..nUsedCount.."<color> lÇn")
	tbAwardTemplet:Give(tbAward, 1 , {%EVENT_LOG_TITLE, "SuDungLaCoDoSaoVang"})
	
	local tbItemLog = 
	{
		[500] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 30000000},
			{szName = "ChiÕu d¹", tbProp={0,10,5,5,0,0},nCount=1, nExpiredTime=60*24*14},
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=2,},
			{szName = "§å phæ Hoµng Kim - §Þnh Quèc XÝch Quyªn NhuyÔn Ngoa",tbProp={6,1,385,1,0,0},nCount=1},
		},
		[700] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 30000000}, 
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "§å phæ Hoµng Kim - §Þnh Quèc Ng©n Tµm Yªu ®¸i",tbProp={6,1,387,1,0,0},nCount=1},
		},
		[900] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 30000000}, 
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "§å phæ Hoµng Kim - An Bang Cóc Hoa Th¹ch ChØ hoµn",tbProp={6,1,389,1,0,0},nCount=1},
		},
		[1000] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 50000000}, 
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "§å phæ Hoµng Kim - An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={6,1,390,1,0,0},nCount=1},
		},
		[1100] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 60000000}, 
			{szName = "§¹i thµnh bÝ kÝp 90",tbProp={6,1,2424,1,0,0},nCount=1},
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=9,},
			{szName = "§å phæ Hoµng Kim - An Bang Kª HuyÕt Th¹ch Giíi ChØ ",tbProp={6,1,391,1,0,0},nCount=1},
		},
		[1200] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 150000000},
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=15,},
			{szName = "HuyÒn tinh cÊp 8", tbProp={6,1,147,8,0,0},nCount=1,},
			{szName = "Hãa c«ng ®¹i ph¸p", tbProp={6,1,4276,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},},
			{szName = "ThÊt tinh th¶o", tbProp={6,1,1673,1,0,0},nCount=1, },
			{szName = "B¸ch niªn thÊt tinh th¶o", tbProp={6,1,1674,1,0,0},nCount=1, },
			{szName = "Thiªn niªn thÊt tinh th¶o", tbProp={6,1,1675,1,0,0},nCount=1, },
			{szName = "B¾c §Èu truyÒn c«ng thuËt", tbProp={6,1,1672,1,0,0},nCount=1, },
			{szName = "§å phæ Hoµng Kim - An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={6,1,388,1,0,0},nCount=1},

			--{szName = "TÝn sø yªu bµi", tbProp={6,1,888,1,0,0},nCount=1,},
			{szName = "Cóc hoa th¹ch", tbProp={4,963,1,1,0,0},nCount=1,},
			{szName = "B¨ng th¹ch kÕt tinh", tbProp={4,967,1,1,0,0},nCount=1,},
			{szName = "B¨ng thiÒm t¬", tbProp={4,965,1,1,0,0},nCount=1,},
			{szName = "Kª huyÕt th¹ch", tbProp={4,966,1,1,0,0},nCount=1,},
			--{szName = "M· n·o", tbProp={4,964,1,1,0,0},nCount=1,},
			--{szName = "M¶nh thiªn th¹ch", tbProp={4,968,1,1,0,0},nCount=1,},
			--{szName = "§iÒn hoµng th¹ch", tbProp={4,969,1,1,0,0},nCount=1,},
		}, 
	}
	if tbItemLog[nUsedCount] then
		local szAction = format("SuDungLaCoDoSaoVang%dLan", nUsedCount)
		tbAwardTemplet:Give(tbItemLog[nUsedCount], 1, {%EVENT_LOG_TITLE, szAction})
		Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông vËt phÈm Event ®Õn mèc <color=yellow>"..nUsedCount.."<color>, nhËn ®­îc phÇn th­ëng nh­ ý")
		if GetLevel() < 120 then
			AddOwnExp(1000000000)
		end
	end
end

function pActivity:HandinString(nComposeCount)
	nComposeCount = nComposeCount or 1
	
	if(self:CheckTask(11, 0,"","==") == 1) then
		AddStatData("jxjiuyue_shangjiaodiyigeshengzi", 1)
	end
	
	if(self:CheckTask(11, 500,"","<") == 1) and 
		(self:CheckTask(11, 500 - nComposeCount,"",">=") == 1) then
		PlayerFunLib:AddExp(50000000,1,"Event_QuocKhanhVN","NopVatPhamDayThung500Lan")
		tbVngTransLog:Write(%strQK_TranslogFolder, %nQK_PromotionID, "NopDayThung500Lan", "50000000 exp", 1)
	end
	
	if(self:CheckTask(11, 1000,"","<") == 1)  and 
		(self:CheckTask(11, 1000 - nComposeCount,"",">=") == 1)then
		PlayerFunLib:AddExp(100000000,1,"Event_QuocKhanhVN","NopVatPhamDayThung1000Lan")
		tbVngTransLog:Write(%strQK_TranslogFolder, %nQK_PromotionID, "NopDayThung1000Lan", "100000000 exp", 1)
		AddStatData("jxjiuyue_shangjiaoshengzidadaoshangxian", 1)
	end 	
	
	for i = 1, nComposeCount do
		PlayerFunLib:AddExp(1200000,1,"Event_QuocKhanhVN","NopDayThung")
		tbVngTransLog:Write(%strQK_TranslogFolder, %nQK_PromotionID, "NopDayThung", "1200000 exp", 1)		
	end

	local nCount = self:GetTask(%TKSG_HandinStringCount)
	local nCountHT = nCount + nComposeCount
	self:AddTask(%TKSG_HandinStringCount,nComposeCount)
	
	Msg2Player("§· nép: <color=yellow>"..nCountHT.."<color> lÇn")
end

function pActivity:ConvertFireworks(nComposeCount)
	nComposeCount = nComposeCount or 1
	AddStatData("jxjiuyue_guoqinghuapao", nComposeCount)
end

function pActivity:ConvertMooncake(nComposeCount)
	nComposeCount = nComposeCount or 1
	AddStatData("jxjiuyue_hanyueyuebing", nComposeCount)
end

function pActivity:UseFirworks()
	local tbAward = %tbAward_CoDoSaoVang["PhaoHoaQK"]
	local nUsedCount = self:GetTask(%TKSG_UseFireworksCount)
	Msg2Player("§· sö dông: <color=yellow>"..nUsedCount.."<color> lÇn")
	tbAwardTemplet:Give(tbAward, 1 , {%EVENT_LOG_TITLE, "SuDungPhaoHoaQK"})
end

function pActivity:UseMooncake()
	
end

function pActivity:PlayerOnLoginRSEV()
	local nCount = self:GetTask(%TKSG_UseFireworksCount)
	if nCount > 0 then
		self:SetTask(%TKSG_UseFireworksCount,0)
		Msg2Player("TKSG_UseFireworksCount:"..TKSG_UseFireworksCount)
	end
	nCount = self:GetTask(%TSK_LaCoDoSaoVang)
	if nCount > 0 then
		self:SetTask(%TSK_LaCoDoSaoVang,0)
		Msg2Player("TSK_LaCoDoSaoVang:"..TSK_LaCoDoSaoVang)
	end
end





