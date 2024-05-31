Include("\\script\\activitysys\\config\\29\\config.lua")
Include("\\script\\activitysys\\config\\29\\head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\lib\\awardtemplet.lua")

function pActivity:AddInitNpc()
--Move soldier's action to soldier statue - Modified by DinhHQ - 20110425
--	local tbSoldierPos = {
--		{2,2613,3499,},
--	}
--	local tbSoldier = {
--		szName = "Ng­êi lÝnh", 
--		szTitle = "<npc>22/04/2011~22/05, Nh©n sü cÊp 120 trë lªn cã thÓ tÆng Hoa Lan Rõng, Tói G¹o, ChiÕc ¸o cho ta, ta sÏ hËu ®·I ng­¬i chu ®¸o.",
--		nLevel = 95,
--		nNpcId = 1781,--246,
--		nIsboss = 0,
--		szScriptPath = "\\script\\activitysys\\npcdailog.lua",
--	}
--	for _, tbTmpPos in tbSoldierPos do
--		local nMapId, nPosX, nPosY = unpack(tbTmpPos)
--		%basemission_CallNpc(tbSoldier, nMapId, nPosX*32, nPosY*32)	
--	end
	--print('Add ¾ü±ø')

--Fix bug missing LanHuan positions - Modified by DinhHQ - 20110425
	local tbLanHuanCaoPos = {
		{153,1745,3213,},
		{153,1724,3192,},
		{153,1757,3197,},

		{153,1741,3216,},
		{153,1747,3218,},
		{153,1753,3193,},

		{153,1720,3191,},
		{153,1724,3184,},
		{153,1728,3195,},
	}
	local tbLanHuaCao = {
		szName = "Bôi Hoa Lan Rõng", 
		nLevel = 95,
		nNpcId = 1782,--1407,844
		nIsboss = 0,
		tbNpcParam = {},
		szScriptPath = "\\script\\activitysys\\config\\29\\lanhuacao.lua",
	}
	--Fix bug missing LanHuan positions - Modified by DinhHQ - 20110425
	--for i=1,3 do
	--	local nMapId, nPosX, nPosY = unpack(tbLanHuanCaoPos[1])
	for i=1, getn(tbLanHuanCaoPos) do
		local nMapId, nPosX, nPosY = unpack(tbLanHuanCaoPos[i])
		tbLanHuaCao.tbNpcParam[1] = i;
		%basemission_CallNpc(tbLanHuaCao, nMapId, nPosX*32, nPosY*32)	
	end
	print('Add Bui lan rung')
end	

function pActivity:OnGiveLanHua()
--	if not self:CheckDate() then
--		Msg2Player(format("Thêi gian ho¹t ®éng ®· qua, kh«ng thÓ tÆng Hoa Lan n÷a."))
--		return
--	end
--	self:AddTaskDaily(%TSK_IDX_DAILY_GIVE_LANHUA,1)
--	PlayerFunLib:ConsumeEquiproomItem({tbProp={6,1,1977,1,0,0},},1)
--	--PlayerFunLib:AddExp(20000000,1,"ÔùËÍ¾ü±øÀ¼»¨»ñµÃ¾­Ñé")
--	tbAwardTemplet:Give({nExp_tl=20000000}, 1, {"EventTangHoa042011", "TangHoaChoNguoiLinh"});
--	AddStatData("jiefangri_shangjiaolanhua")
end

function pActivity:Vng_OnGiveLanHua(nCount)
	--if not self:CheckDate() then
		--Msg2Player(format("Thêi gian ho¹t ®éng ®· qua, kh«ng thÓ tÆng Hoa Lan n÷a."))
		--return
	--end

	for i = 1, nCount do
		self:AddTaskDaily(%TSK_IDX_DAILY_GIVE_LANHUA,1)
		tbAwardTemplet:Give({nExp_tl=250000}, 1, {"Event8Thang3", "TangHopQuaTieuPhuong"});
		AddStatData("jiefangri_shangjiaolanhua")
	end
end

function pActivity:Vng_LanHua_Limit(nCount)
	if nCount > 1 then
		Msg2Player("Mçi ngµy tèi ®a chØ tÆng ®­îc: ".. %MAX_GIVE_LANHUA_PERDAY .. " hép, mçi lÇn chØ tÆng ®­îc 1 hép!!!")
		return 0
	end
	return 1
end

function pActivity:Test()
--	print(TSK_IDX_DAILY_GIVE_LANHUA)
--	print(MAX_GIVE_LANHUA_PERDAY)
--	print(self:GetTask(TSK_IDX_DAILY_GIVE_LANHUA))
end

function pActivity:SuDungBoHoa8Thang3()

local nCurCount = self:GetTask(%TSK_SUDUNG_BOHOA)
	local nCurCountHT = nCurCount + 1
	Msg2Player("§· sö dông: " .. nCurCountHT .. " lÇn")

	local tbExpAward = {
		[1] = {szName = "§iÓm kinh nghiÖm", nExp = 250000},
	}
	tbAwardTemplet:Give(tbExpAward, 1 , {"SuDungBoHoa8Thang3MD", "SuDungBoHoa8Thang3MD"})

	--Diem kn dat moc
	local tbBonusAward = 
	{
		[500] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 2500000},
			{szName = "ChiÕu d¹", tbProp={0,10,5,5,0,0},nCount=1, nExpiredTime=60*24*7},
			{szName = "§å phæ Hoµng Kim - An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp={6,1,391,1,0,0},nCount=1},
			{szName = "§å phæ Hoµng Kim - §Þnh Quèc Thanh Sa Tr­êng Sam ",tbProp={6,1,383,1,0,0},nCount=1},
		},
	}

	if tbBonusAward[nCurCountHT] then
		tbAwardTemplet:Give(tbBonusAward[nCurCountHT], 1 , {"SuDungBoHoa8Thang3", format("SuDung%dlanBoHoa8Thang3", nCurCount)})
		Msg2Player("Chóc mõng c¸c h¹ sö dông ®Õn mèc "..nCurCountHT.." vËt phÈm Bã Hoa 8 Th¸ng 3, nhËn ®­îc phÇn th­ëng nh­ ý")
	end

	--Phan thuong them
	local tbItemAward = 
	{
			{szName = "HuyÒn tinh cÊp 1", tbProp={6,1,147,1,0,0},nCount=1, nRate =5},--25 cai
			{szName = "HuyÒn tinh cÊp 2", tbProp={6,1,147,2,0,0},nCount=1, nRate =0.5},
			{szName = "HuyÒn tinh cÊp 3", tbProp={6,1,147,3,0,0},nCount=1, nRate =0.3},
			{szName = "HuyÒn tinh cÊp 4", tbProp={6,1,147,4,0,0},nCount=1, nRate =0.2},
			{szName = "HuyÒn tinh cÊp 5", tbProp={6,1,147,5,0,0},nCount=1, nRate =0.1},

			{szName = "Tiªn th¶o lé §Æc BiÖt",tbProp={6,1,1181,1,0,0},nCount=1, nRate=0.2},--1 cai
			{szName = "Tiªn th¶o lé",tbProp={6,1,71,1,0,0},nCount=1, nRate=2},--10 cai
			{szName = "NÕn B¸t tr©n phóc nguyÖt", nRate = 0.2,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1},	
			{szName = "Th­ ®Æc x¸ triÒu ®×nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.1},
			{szName = "Tö mÉu lÖnh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},
			{szName = "Tinh hång b¶o th¹ch",					tbProp={4,353,1,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "Tö thñy tinh",								tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lôc thñy tinh",								tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lam thñy tinh",							tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
			{szName ="QuÕ hoa töu",tbProp={6,1,125,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName ="Vâ l©m mËt tÞch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.1},
			{szName ="TÈy tñy kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=0.1},
			{szName="Tói danh väng",tbProp={6,1,4338,1,0,0},nCount=1,nRate=2},--10 cai

			--{szName ="ChiÕu d¹", tbProp={0,10,5,5,0,0},nCount=1,nRate=0.03, nExpiredTime=60*24*7},
			--{szName ="XÝch thè", tbProp={0,10,5,2,0,0},nCount=1,nRate=0.1,nExpiredTime=60*24*7},
			--{szName ="¤ v©n ®¹p tuyÕt", tbProp={0,10,5,1,0,0},nCount=1,nRate=0.1,nExpiredTime=60*24*7},
			--{szName ="TuyÕt ¶nh", tbProp={0,10,5,3,0,0},nCount=1,nRate=0.1,nExpiredTime=60*24*7},
			--{szName ="§Ých L«", tbProp={0,10,5,4,0,0},nCount=1,nRate=0.1,nExpiredTime=60*24*7},

			{szName="M¶nh Tµng B¶o §å 1",tbProp={4,490,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 2",tbProp={4,491,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 3",tbProp={4,492,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 4",tbProp={4,493,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 5",tbProp={4,494,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 6",tbProp={4,495,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 7",tbProp={4,496,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 8",tbProp={4,497,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 9",tbProp={4,498,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 10",tbProp={4,499,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 11",tbProp={4,500,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 12",tbProp={4,501,1,1,0,0},nCount=1,nRate=0.02},
	}
	tbAwardTemplet:Give(tbItemAward, 1 , {"SuDungBoHoa8Thang3Them", "SuDungBoHoa8Thang3Them"})

end