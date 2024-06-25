Include("\\script\\activitysys\\config\\38\\head.lua")
Include("\\script\\activitysys\\config\\38\\variables.lua")
Include("\\script\\activitysys\\config\\38\\gift_pos.lua")
Include("\\script\\global\\autoexec_head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\config\\38\\award.lua")
Include("\\script\\lib\\awardtemplet.lua")

pActivity.nPak = curpack()

EVENT_LOG_TITLE = "SPRING FESTIVIAL"
function pActivity:InitAddNpc()
	self:AddPlutus()
	self:AddGiftNpc()
	self:AddAmbienceNpc()
end

function pActivity:PlayerOnLogin()

	if GetTask(3907) ~= 5 then
		SetTask(3907,5)--task kiem tra event dot truoc moi dot event tang len 1
		--SetTask(3908,0)--task nhan moc 1000
		--SetTask(3909,0)--task event loai 3
		--SetTask(3910,0) --ev kvan
		--SetTask(3911,0) --ev xu
		--SetTask(3912,0) --thuong free event
		self:SetTask(TSK_SUDUNG_BANHCHUNG,0)
		self:SetTask(TSK_SUDUNG_MAMNGUQUA,0)
		self:SetTask(TSK_BAOLIXISD,0)
		self:SetTask(TSK_BAOLIXI,0)
	end
end

function pActivity:UseNewYearGift()
	local AWARD_TABLE = tbAwardList["Gift_Item"]
	tbAwardTemplet:Give(AWARD_TABLE, 1, {EVENT_LOG_TITLE, "get gift award by item"})
	--mini game - Modified By DinhHQ - 20120103
	local nStartTime = 20170127
	local nEndTime = 20180305
	local nCurrTime = tonumber(GetLocalDate("%Y%m%d"))
	if nCurrTime >= nStartTime and nCurrTime < nEndTime then
		local tbMiniGameAward = 
		{
			{szName="MÆt n¹ - Long Ch©u",tbProp={0,11,75,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="MÆt n¹ - §Çu Rång",tbProp={0,11,76,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="MÆt n¹ - Th©n Rång",tbProp={0,11,77,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="MÆt n¹ - §u«i Rång",tbProp={0,11,78,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="MÆt n¹ - §Çu «ng ®Þa",tbProp={0,11,72,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="MÆt n¹ - Nam S­ ",tbProp={0,11,73,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="MÆt n¹ - B¾c S­ ",tbProp={0,11,74,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="MÆt n¹ - B¾c S­ ",tbProp={0,11,74,1,0,0},nCount=1,nRate=10,nExpiredTime=10080},
			{szName="Ph¸o hoa mõng xu©n",tbProp={6, 1, 3087, 1,0,0},nCount=1,nRate=20,nExpiredTime=20180305,},
		}
		tbAwardTemplet:Give(tbMiniGameAward, 1, {EVENT_LOG_TITLE, "SuDungLeVatNamMoiNhanMatNa"})
	end
	
	--local solansudung = self:GetTask(%TSK_GET_NEWYEAR_GIFT_DAILY)
	--Msg2Player("H«m nay ®· sö dông: " .. solansudung .. " lÇn")

end

function pActivity:UseNewYearFireworks()
	local AWARD_TABLE = tbAwardList["Fireworks"]
	tbAwardTemplet:Give(AWARD_TABLE, 1, {EVENT_LOG_TITLE, "get gift award by item"})
	tbVngTransLog:Write("201201_event_tet/", 22, "SuDungPhaoHoaNamMoi", "N/A", 1)
	local nSkillId = 1175
	local _,nX32,nY32 = GetWorldPos()
	CastSkill(nSkillId, 1, nX32*32, nY32*32) -- ÐÂÄê¿ìÀÖÑÌ»¨¼¼ÄÜ

	--local solansudung = self:GetTask(%TSK_USED_NEWYEAR_FIREWORKS)
	--Msg2Player("H«m nay ®· sö dông: " .. solansudung .. " lÇn")
end

function pActivity:CheckFireworksUseTime()
	local nStartTime = 20180127
	local nEndTime = 20180305
	local nCurrTime = tonumber(GetLocalDate("%Y%m%d"))
	
	if nCurrTime >= nStartTime and nCurrTime < nEndTime then
		return 1
	else
		Msg2Player(format("Thêi gian hiÖn t¹i kh«ng ®óng, xin h·y ®îi ®Õn %3$d-%2$d-%1$d ®Õn %5$d-%4$d-%1$d h·y sö dông nhÐ!",2017,1,27,2,27))
	end
end

local tbPool = 
{
	[2] = {{nX = 2571, nY = 3509, nR = 100}},
}

function InMap(nMapId)
	local nFlag = 0
	for nTmpMapId, _ in %tbPool do
		if nTmpMapId == nMapId then
			nFlag = 1
			break
		end
	end
	return nFlag
end

function IsInDistance(nX, nY, tbPosList)
	for _, tbPos in tbPosList do
		local nDis = (nX - tbPos.nX)^2 + (nY - tbPos.nY)^2
--		print("nX, nY, nR,nDis", tbPos.nX, tbPos.nY, tbPos.nR, nDis)
		if tbPos.nR > nDis then
			return 1
		end
	end
	return
end

function pActivity:CheckFireworksUseTime()
	local nStartTime = 20180216
	local nEndTime = 20180220
	local nCurrTime = tonumber(GetLocalDate("%Y%m%d"))
	local nStartHour = 1900
	local nEndHour = 1916
	local nCurHour = tonumber(date("%H%M"))
	local nMapId, nX, nY = GetWorldPos()
	
	if not (nCurrTime >= nStartTime and nCurrTime < nEndTime) then
		Say("Tõ ngµy 16/02 ®Õn ngµy 19/02 míi cã thÓ sö dông")
	elseif not (nCurHour >= nStartHour and nCurHour < nEndHour) then
		Say("Vµo lóc 19h00 ®Õn 19h15 mang ph¸o hoa nµy ®Õn ®Ønh Hoa S¬n täa ®é 321/219 ®Ó chung vui cïng b¹n h÷u")
	elseif InMap(nMapId) ~= 1 then
		Say("Mang ph¸o hoa nµy ®Õn ®Ønh Hoa S¬n ®Ó chung vui cïng b¹n h÷u")
	elseif IsInDistance(nX, nY, %tbPool[nMapId]) ~= 1 then
		Say("Mang ph¸o hoa nµy ®Õn ®Ønh Hoa S¬n täa ®é 321/219 ®Ó chung vui cïng b¹n h÷u")
	else
		return 1
	end

end

function pActivity:AddPlutus()
	local szNpcName = "§¹i ThÇn Tµi"
	local nNpcId = 1528
	local tbNpcPos = {
		{176,1585,2953},
		{1,1584,3192},
		{37,1709,3118},
		{162,1621,3183},
		{78,1586,3223},
		{11,3139,5063}}
			
	NpcFunLib:AddDialogNpc(szNpcName, nNpcId, tbNpcPos)
end

function pActivity:AddGiftNpc()
	local nMapIndex = SubWorldID2Idx(%GIFT_MAPID)
	if nMapIndex < 0 then
		return
	end
	local szNpcName = "LÔ VËt N¨m Míi"
	local nNpcId = 1288
	for i=1, getn(%GIFT_POS) do
		local nX, nY = %GIFT_POS[i][1], %GIFT_POS[i][2]
		local nNpcIndex = AddNpc(nNpcId, 1, nMapIndex, nX*32, nY*32, 0, szNpcName);
		SetNpcScript(nNpcIndex, "\\script\\activitysys\\config\\38\\npc_gift.lua")
	end
end

function pActivity:AddAmbienceNpc()
	Include("\\script\\activitysys\\config\\38\\ambience_npc.lua")
	DynamicExecute("\\script\\activitysys\\ambience.lua", "tbAmbience:CreateNpc",tbAmbienceNpc)
end


function pActivity:ExpiredTime()
	return self:IsExpired() 
end

function pActivity:CheckGifeGetDaily()
	if self:CheckTaskDaily(%TSK_GET_NEWYEAR_GIFT_DAILY, %MAX_GET_NEWYEAR_GIFT_DAILY, "H«m nay ng­¬i ®· thu thËp ®ñ, ngµy mai h·y quay l¹i nhÐ!", "<") == 1 then
		return 1
	else
		return 0
	end
end

function pActivity:GetNewYearGift()
	self:AddTaskDaily(%TSK_GET_NEWYEAR_GIFT_DAILY, 1)
end

IncludeLib("RELAYLADDER");

function pActivity:XemTOP3Event()
	local sResult = ""
	for i = 1, 3 do
		local nten, ncap,nphai = Ladder_GetLadderInfo(10282, i)
		sResult = sResult.."\r\n TOP "..i.." - <"..nten.."> sè lÇn: <"..ncap..">"
	end
	Say("Danh s¸ch b¶ng xÕp h¹ng TOP 3 event kú nµy: \r\n" .. sResult)
end

function pActivity:TetND2016_MamNguQua()

	local nCurCount = self:GetTask(%TSK_SUDUNG_MAMNGUQUA)
	nCurCount = nCurCount + 1
	Msg2Player("§· sö dông: " .. nCurCount .. " lÇn")

	local tbExpAward = 
	{
		[1] = {szName = "§iÓm kinh nghiÖm", nExp = 1500000},
	}
	tbAwardTemplet:Give(tbExpAward, 1 , {EVENT_LOG_TITLE, "SuDungMamNguQuaMD"})
	--Phan thuong them
	local tbItemAward = 
	{
			{szName = "Kim tª",tbProp={4,979,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "ThÇn bÝ kho¸ng th¹ch", tbProp={6,1,398,1,0,0},nCount=1, nRate =0.1},

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
			{szName = "QuÕ hoa töu",tbProp={6,1,125,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "Vâ l©m mËt tÞch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.1},
			{szName = "TÈy tñy kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=0.1},
			{szName= "Tói danh väng",tbProp={6,1,4338,1,0,0},nCount=1,nRate=2},--10 cai

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

			{szName = "§iÓm Kinh NghiÖm", nExp=2000000,nRate=0.5},
			{szName = "§iÓm Kinh NghiÖm", nExp=4000000,nRate=0.5},
			{szName = "§iÓm Kinh NghiÖm", nExp=6000000,nRate=0.5},
			{szName = "§iÓm Kinh NghiÖm", nExp=8000000,nRate=0.5},
			{szName = "§iÓm Kinh NghiÖm", nExp=10000000,nRate=0.01},
			{szName = "§iÓm Kinh NghiÖm", nExp=15000000,nRate=0.01},

			{szName = "LÖnh bµi hoµn thµnh D· TÈu",tbProp={6,1,4336,1,0,0},nCount=1,nRate=0.1},
			{szName = "Cèng HiÕn LÔ bao",tbProp={6,1,30214,1,0,0},nCount=1,nRate=0.02},
			{szName = "Cèng HiÕn §¹i LÔ bao",tbProp={6,1,30215,1,0,0},nCount=1,nRate=0.01},
			{szName = "KiÕn ThiÕt LÔ Bao",tbProp={6,1,30216,1,0,0},nCount=1,nRate=0.02},
			{szName = "KiÕn ThiÕt §¹i LÔ Bao",tbProp={6,1,30217,1,0,0},nCount=1,nRate=0.01},
			{szName = "ChiÕn BÞ LÔ Bao",tbProp={6,1,30218,1,0,0},nCount=1,nRate=0.02},
			{szName = "ChiÕn BÞ §¹i LÔ Bao",tbProp={6,1,30219,1,0,0},nCount=1,nRate=0.01},

			{szName = "Tiªn th¶o lé §Æc BiÖt",tbProp={6,1,1181,1,0,0},nCount=1, nRate=1},
			{szName = "NÕn B¸t tr©n phóc nguyÖt", nRate = 0.5,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1},	
			{szName = "Th­ ®Æc x¸ triÒu ®×nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.1},
			{szName = "Tö mÉu lÖnh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},

			{szName = "TÝn sø yªu bµi", tbProp={6,1,888,1,0,0},nCount=1, nRate =0.05},
			{szName = "Cóc hoa th¹ch", tbProp={4,963,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "B¨ng th¹ch kÕt tinh", tbProp={4,967,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "B¨ng thiÒm t¬", tbProp={4,965,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "Kª huyÕt th¹ch", tbProp={4,966,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "M· n·o", tbProp={4,964,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "M¶nh thiªn th¹ch", tbProp={4,968,1,1,0,0},nCount=1, nRate =0.05},
			{szName = "§iÒn hoµng th¹ch", tbProp={4,969,1,1,0,0},nCount=1, nRate =0.2},
	}
	tbAwardTemplet:Give(tbItemAward, 1 , {EVENT_LOG_TITLE, "SuDungNguThaiKetTinh"})
	--Diem kn dat moc
	local tbBonusAward = {
		[500] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 150000000},},
		[600] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 160000000},},
		[700] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 170000000},},
		[800] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 180000000},},
		[900] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 190000000},
			{szName = "MÆt n¹ V­¬ng Gi¶", tbProp = {0,11,561,1,0,0}, nExpiredTime = 60*24*15, nCount=1},
			{szName = "ThÊt tinh th¶o", tbProp={6,1,1673,1,0,0},nCount=1, },
			{szName = "B¸ch niªn thÊt tinh th¶o", tbProp={6,1,1674,1,0,0},nCount=1, },
			{szName = "Thiªn niªn thÊt tinh th¶o", tbProp={6,1,1675,1,0,0},nCount=1, },
			{szName = "B¾c §Èu truyÒn c«ng thuËt", tbProp={6,1,1672,1,0,0},nCount=1, },
			{szName = "§å phæ Hoµng Kim - §Þnh Quèc ¤ Sa Ph¸t Qu¸n",tbProp={6,1,384,1,0,0},nCount=2},
		},
		[1000] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp_tl = 7000000000}, 
			{szName = "NhÊt kû cµn kh«n phï",	tbProp = {6,1,2126,1,0,0},nCount=1,},
			{szName = "HuyÒn tinh cÊp 8", tbProp={6,1,147,8,0,0},nCount=1,},
			{szName = "§¹i thµnh bÝ kÝp 90",tbProp={6,1,2424,1,0,0},nCount=1},
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=50,},
			{szName = "§å phæ Hoµng Kim - An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={6,1,388,1,0,0},nCount=2},
		},
	}

	if tbBonusAward[nCurCount] then
		tbAwardTemplet:Give(tbBonusAward[nCurCount], 1 , {EVENT_LOG_TITLE, format("SuDung%dlanMamNguQua", nCurCount)})
		Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().."<color> sö dông ®Õn mèc <color=green>"..nCurCount.."<color> vËt phÈm M©m ngò qu¶, nhËn ®­îc phÇn th­ëng nh­ ý")
	end
	
end

function pActivity:TetND2016_BanhChungDacBiet()
	
	local tbExpAward = {
		[1] = {szName = "§iÓm kinh nghiÖm", nExp = 900000},
	}
	tbAwardTemplet:Give(tbExpAward, 1 , {EVENT_LOG_TITLE, "SuDungBanhChungDacBietMD"})

	local solansudung = self:GetTask(%TSK_SUDUNG_BANHCHUNG)
	solansudung = solansudung + 1
	Msg2Player("§· sö dông: " .. solansudung .. " lÇn")
end

function pActivity:TetND2016_BaoLiXi()
	local tbItemAward = 
	{
		{szName="§iÓm Kinh NghiÖm céng dån", nExp_tl=random(100000000,200000000)},
	}
	tbAwardTemplet:Give(tbItemAward, 1 , {EVENT_LOG_TITLE, "SuDungBaoLiXiNam2016"})
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Bao L× X× Mõng n¨m míi<color> t¹i npc §¹i ThÇn Tµi (T­¬ng D­¬ng 198/201)")
end