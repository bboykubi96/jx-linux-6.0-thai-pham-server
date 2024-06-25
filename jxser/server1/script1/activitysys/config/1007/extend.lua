------------------------------------------------------------------------------------------------
--Author: NgaVN
--Des: Event Phô N÷ ViÖt Nam
--Date: 2011-10-13
------------------------------------------------------------------------------------------------
Include("\\script\\activitysys\\config\\1007\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\config\\1007\\variables.lua")

Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("SETTING")

tbActivityNpc = {	
	[1] = {
		szName = "Thî GhÐp Hoa", 
		nLevel = 95,
		nNpcId = 1889,
		nIsboss = 0,
		szScriptPath = "\\script\\activitysys\\npcdailog.lua",
		},
	[2] = {
		szName = "TiÓu Ph­¬ng", 
		nLevel = 95,
		nNpcId = 1327,
		nIsboss = 0,
		szScriptPath = "\\script\\activitysys\\npcdailog.lua",
		}
}

tbActivityNpcPos = {
	[1] = {
			[1] = {78,1531,3312,},
		},
	[2] = {
		[1] = {78,1561,3223,},
		},
	}
	

--PhÇn th­ëng ®¹t mèc
local tbUseBTT_AdditionalAward = {
		[500] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 30000000},
			{szName = "ChiÕu d¹", tbProp={0,10,5,5,0,0},nCount=1, nExpiredTime=60*24*14},
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=2,},
			{szName = "§å phæ Hoµng Kim - §Þnh Quèc XÝch Quyªn NhuyÔn Ngoa",tbProp={6,1,385,1,0,0},nCount=1},
		},
		[600] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 30000000}, 
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "§å phæ Hoµng Kim - §Þnh Quèc Ng©n Tµm Yªu ®¸i",tbProp={6,1,387,1,0,0},nCount=1},
		},
		[700] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 30000000}, 
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "§å phæ Hoµng Kim - An Bang Cóc Hoa Th¹ch ChØ hoµn",tbProp={6,1,389,1,0,0},nCount=1},
		},
		[800] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 50000000}, 
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "§å phæ Hoµng Kim - An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={6,1,390,1,0,0},nCount=1},
		},
		[900] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 60000000}, 
			{szName = "§¹i thµnh bÝ kÝp 90",tbProp={6,1,2424,1,0,0},nCount=1},
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=9,},
			{szName = "§å phæ Hoµng Kim - An Bang Kª HuyÕt Th¹ch Giíi ChØ ",tbProp={6,1,391,1,0,0},nCount=1},
		},
		[1000] = 
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

			{szName = "TÝn sø yªu bµi", tbProp={6,1,888,1,0,0},nCount=1,},
			--{szName = "Cóc hoa th¹ch", tbProp={4,963,1,1,0,0},nCount=1,},
			--{szName = "B¨ng th¹ch kÕt tinh", tbProp={4,967,1,1,0,0},nCount=1,},
			--{szName = "B¨ng thiÒm t¬", tbProp={4,965,1,1,0,0},nCount=1,},
			--{szName = "Kª huyÕt th¹ch", tbProp={4,966,1,1,0,0},nCount=1,},
			{szName = "M· n·o", tbProp={4,964,1,1,0,0},nCount=1,},
			{szName = "M¶nh thiªn th¹ch", tbProp={4,968,1,1,0,0},nCount=1,},
			{szName = "§iÒn hoµng th¹ch", tbProp={4,969,1,1,0,0},nCount=1,},
		}, 
}

--local tbLogUseIceCrystals = {
--	[500] = "NopVatPhamHoangThach500Lan",
--	[1000] = "NopVatPhamHoangThach1000Lan",
--	[1500] = "NopVatPhamHoangThach1500Lan",	
--	[1500] = "NopVatPhamHoangThach2000Lan",		
--}

--PhÇn th­ëng Item
local tbUseBTT_ItemAward = {

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
}

function pActivity:InitAddNpc()
	--self:AddHeChengHua(%tbActivityNpc[1], %tbActivityNpcPos[1])
	--self:AddHeChengHua(%tbActivityNpc[2], %tbActivityNpcPos[2])
	--self:InitCompose()
end

function pActivity:AddHeChengHua(tbNpc, tbNpcPos)
	--for i=1,getn(tbNpcPos) do
	--	local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
	--	basemission_CallNpc(tbNpc, nMapId, nPosX * 32, nPosY * 32)	
	--end
end

--Function giíi h¹n tang bo hoa hong
function pActivity:HandInTangBoHoaHongLimit(nCount)
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveBoHoaHongLimit) == 1 then
		Talk(1, "", "Ng­¬i tÆng ta nhiÒu Bã Hoa Hång råi, sè Bã Hoa Hång nµy xin h·y nhËn l¹i.");
		Msg2Player("Ng­¬i tÆng ta nhiÒu Bã Hoa Hång råi, sè Bã Hoa Hång nµy xin h·y nhËn l¹i.");
		return nil
	end
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbGiveBoHoaHongLimit)
	if (nTaskVal + nCount) > %nHoangThachMaxCount then
		Msg2Player(format("Sè l­îng Bã Hoa Hång v­ît qu¸ giíi h¹n, ng­¬i chØ cã thÓ nép <color=yellow>%d <color>Bã Hoa Hång n÷a.", %nHoangThachMaxCount - nTaskVal))
		return nil
	end
	return 1
end

--Function nép Bo hoa hong
function pActivity:HandInTangBoHoaHong(nCount)		
	local tbAward = {szName = "§iÓm kinh nghiÖm", nExp=500000};
	
	for i = 1, nCount do
		if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveBoHoaHongLimit) == 1 then
			return nil
		end
		%tbVNG_BitTask_Lib:addTask(%tbGiveBoHoaHongLimit, 1)
		tbAwardTemplet:Give(tbAward, 1, {"Event_PNVN", "TangBoHoaHong"})
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "TangBoHoaHong", "500000 exp", 1)			
	end
	--Ghi Log	
end
	
--Function giíi h¹n nép Hoµng Th¹ch
function pActivity:HandInHoangThachLimit(nCount)
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveHoangThachLimit) == 1 then
		Talk(1, "", "Ng­¬i tÆng ta nhiÒu Hoµng Th¹ch råi, sè Hoµng Th¹ch nµy xin h·y nhËn l¹i.");
		Msg2Player("Ng­¬i tÆng ta nhiÒu Hoµng Th¹ch råi, sè Hoµng Th¹ch nµy xin h·y nhËn l¹i.");
		return nil
	end
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbGiveHoangThachLimit)
	if (nTaskVal + nCount) > %nHoangThachMaxCount then
		Msg2Player(format("Sè l­îng v­ît qu¸ giíi h¹n, ng­¬i chØ cã thÓ nép <color=yellow>%d <color>Hoµng Th¹ch n÷a.", %nHoangThachMaxCount - nTaskVal))
		return nil
	end
	return 1
end

--Function nép Hoµng Th¹ch
function pActivity:HandInHoangThach(nCount)		
	local tbAward = {szName = "§iÓm kinh nghiÖm", nExp=200000};
	
	for i = 1, nCount do
		if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveHoangThachLimit) == 1 then
			return nil
		end
		%tbVNG_BitTask_Lib:addTask(%tbGiveHoangThachLimit, 1)
		tbAwardTemplet:Give(tbAward, 1, {"Event_PNVN", "NopVatPhamHoangThach"})
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "NopVatPhamHoangThach", "1500000 exp", 1)			
	end
	--Ghi Log	
end


--Function giíi h¹n
function pActivity:UseBTT_Limit()
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbUseBTTLimit) == 1 then
		Talk(1, "", "Sö dông vËt phÈm ®· ®¹t ®Õn giíi h¹n, kh«ng thÓ sö dông thªm")
		Msg2Player("Sö dông vËt phÈm ®· ®¹t ®Õn giíi h¹n, kh«ng thÓ sö dông thªm");
		return nil
	end
	return 1
end

function pActivity:Use_BTT()
	local tbExpAward = {szName = "§iÓm kinh nghiÖm", nExp=700000}
	%tbVNG_BitTask_Lib:addTask(%tbUseBTTLimit, 1)	
	--PhÇn th­ëng kinh nghiÖm
	tbAwardTemplet:Give(tbExpAward, 1, {"Event_PNVN", "SuDungBangTinhThachNhanKinhNghiem"});

	--PhÇn th­ëng item
	local tbTranslog = {strFolder = %strTranLogFolder, nPromID = %nPromotionID, nResult = 1}	
	tbAwardTemplet:Give(%tbUseBTT_ItemAward, 1, {"Event_PNVN", "SuDungBangTinhThachNhanVatPham", tbTranslog});
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbUseBTTLimit);

	--PhÇn th­ëng Kinh nghiÖm v­ît møc
	if %tbUseBTT_AdditionalAward[nTaskVal] then
		local tbTempAward = %tbUseBTT_AdditionalAward[nTaskVal]
		tbAwardTemplet:Give(tbTempAward, 1, {"Event_PNVN", format("SuDung%dLanBangTinhThach", nTaskVal)})
		--%tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, format("SuDung%dLanBangTinhThach", nTaskVal), tbTempAward.nExp.." Exp", 1)
		Msg2Player(format("<color=green>Chóc mõng b¹n sö dông vËt phÈm %s %d lÇn, nhËn ®­îc phÇn th­ëng quý<color>", "B¨ng Tinh Th¹ch", nTaskVal))
		Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông vËt phÈm Event ®Õn mèc <color=yellow>"..nTaskVal.."<color>, nhËn ®­îc phÇn th­ëng nh­ ý")
		if GetLevel() < 130 then
			local tbExpAward130 = {szName = "§iÓm kinh nghiÖm 1ty2 cong don", nExp_tl=1200000000}
			tbAwardTemplet:Give(tbExpAward130, 1, {"Event_PNVN", "SuDungBangTinhThachDatMocNhanKinhNghiem1ty2"});
		end
	end

	Msg2Player("§· sö dông lÇn thø: <color=green>"..nTaskVal.."<color>")
end

function pActivity:NhanDatMoc1000()

	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbUseBTTLimit) == 0 then
		Talk(1, "", "§¹i hiÖp ch­a ®¹t mèc 1000")
		Msg2Player("§¹i hiÖp ch­a ®¹t mèc 1000");
		return nil
	end

	local idtaskHoTroCuuGiang = 1400
	if GetTask(idtaskHoTroCuuGiang) >= 2 then
		Talk(1, "", "§¹i hiÖp ®· nhËn mèc 1000 råi")
		Msg2Player("§¹i hiÖp ®· nhËn mèc 1000 råi");
		return nil
	end

	local Thuong1000 = 
	{
		{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp_tl = 7000000000},
		{szName = "§å phæ Hoµng Kim - An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={6,1,388,1,0,0},nCount=2},
		{szName = "§å phæ Hoµng Kim - An Bang Kª HuyÕt Th¹ch Giíi ChØ ",tbProp={6,1,391,1,0,0},nCount=2},
		{szName = "§å phæ Hoµng Kim - An Bang Cóc Hoa Th¹ch ChØ hoµn",tbProp={6,1,389,1,0,0},nCount=2},
		{szName = "§å phæ Hoµng Kim - An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={6,1,390,1,0,0},nCount=2},
	}
	tbAwardTemplet:Give(Thuong1000, 1 , {"ThuongEV20T10moc1000", "ThuongEV20T10moc1000"})
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· nhËn ®­îc phÇn th­ëng nh­ ý khi ®¹t <color=yellow>mèc 1000<color> Event t¹i NPC Thî GhÐp Hoa")
	SetTask(idtaskHoTroCuuGiang,2)
end
