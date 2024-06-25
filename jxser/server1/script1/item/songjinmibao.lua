-- Ëæ»ú±¦ÏäÎïÆ·£¨Ëæ»ú»ñµÃÒ»ÑùÎïÆ·£©
-- By: Wangjingjun(2011-02-17)

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Chóc mõng cao thñ <color=yellow>%s<color=green> ®· nhËn ®­îc <color=yellow><%s><color=green> tõ <color=yellow><Tèng Kim BÝ B¶o><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

tbSJ_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 30191},
}
tbSJNewAward = 
{	
	["chiakhoanhuy"] = 
	{
		{szName = "TÈy tñy kinh",	tbProp = {6,1,22,1,0,0},nCount=1,nRate=0.05},
		{szName = "Vâ L©m mËt tÞch",	tbProp = {6,1,26,1,0,0},nCount=1,nRate=0.01},
		{szName = "Tiªn Th¶o Lé",	tbProp = {6,1,71,1,0,0},nCount=1,nRate=20.18,nCount=1},
		{szName = "Phóc duyªn lé §¹i",	tbProp = {6,1,124,1,0,0},nCount=1,nRate=8,nCount=1},
		{szName = "Phóc duyªn lé Trung",	tbProp = {6,1,123,1,0,0},nCount=1,nRate=10,nCount=1},
		{szName = "Phóc duyªn lé TiÓu",	tbProp = {6,1,122,1,0,0},nCount=1,nRate=12,nCount=2},
		{szName = "BÝ kÝp 90",	tbProp = {6,1,random(27,28),5,0,0},nCount=1,nRate=0.05},
		{szName = "BÝ kÝp 90",tbProp={6,1,random(33,43),1,0,0},nCount=1,nRate=0.05},
		{szName = "BÝ kÝp 90",tbProp={6,1,random(45,49),1,0,0},nCount=1,nRate=0.05},
		{szName = "§iÓm kinh nghiÖm 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "Tèng Kim BÝ B¶o")
					end,
					nRate = 20,
		},
		{szName="§iÓm kinh nghiÖm 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1500000, "Tèng Kim BÝ B¶o")
					end,
					nRate = 20,
		},
		{szName="§iÓm kinh nghiÖm 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1700000, "Tèng Kim BÝ B¶o")
					end,
					nRate = 1,
		},
		{szName="§iÓm kinh nghiÖm 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1900000, "Tèng Kim BÝ B¶o")
					end,
					nRate = 1,
		},
		{szName="§iÓm kinh nghiÖm 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "Tèng Kim BÝ B¶o")
					end,
					nRate = 1,
		},		
	},	
	["chiakhoavang"] = 
	{
		--{szName = "Ngò Hµnh Kú Th¹ch",		tbProp = {6,1,2125,1,0,0},nCount=5,nRate=25},
		--{szName = "Tiªn Th¶o Lé",	tbProp = {6,1,1181,1,0,0},nCount=1,nRate=5,nCount=3},
		--{szName = "B«n Tiªu",		tbProp = {0,10,6,1,5,0},nCount=1,nRate=1},
		{szName = "Tèng Kim Chiªu Binh LÔ Bao",tbProp={6,1,30084,1,0,0},nCount=1,nRate=1,nExpiredTime=10080},
		{szName = "Håi thiªn t¸i t¹o lÔ bao",tbProp={6,1,2527,1,0,0},nCount=3,nRate=1,nExpiredTime=20160},
		{szName = "§iÓm kinh nghiÖm 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(15000000, "Tèng Kim BÝ B¶o")
					end,
					nRate = 50,
		},
		{szName="§iÓm kinh nghiÖm 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(25000000, "Tèng Kim BÝ B¶o")
					end,
					nRate = 28,
		},
		{szName="§iÓm kinh nghiÖm 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(30000000, "Tèng Kim BÝ B¶o")
					end,
					nRate = 10,
		},
		{szName="§iÓm kinh nghiÖm 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(40000000, "Tèng Kim BÝ B¶o")
					end,
					nRate = 5,
		},
		{szName="§iÓm kinh nghiÖm 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(50000000, "Tèng Kim BÝ B¶o")
					end,
					nRate = 1,
		},
		{szName="§iÓm kinh nghiÖm 6", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(80000000, "Tèng Kim BÝ B¶o")
					end,
					nRate = 1,
		},
		{szName="§iÓm kinh nghiÖm 7", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(100000000, "Tèng Kim BÝ B¶o")
					end,
					nRate = 0.5,
		},
		{szName="Qu¶ Hoµng Kim",tbProp={6,1,907,1,0,0},nCount=3,nRate=1,nExpiredTime=43200},
	},	
}

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main()
	local SLSD5LoaiBaoRuong = 20
	local nDate = tonumber(GetLocalDate("%m%d"))
	if ( GetTask(1408) ~= nDate ) then
		SetTask(1408, nDate)
		SetTask(1409, 0)
	end
	if ( GetTask(1409) >= SLSD5LoaiBaoRuong ) then
		Say("H«m nay ®¹i hiÖp ®· sö dông "..SLSD5LoaiBaoRuong.." b¶o r­¬ng c¸c lo¹i, vâ c«ng th¨ng tiÕn qu¸ nhanh dÔ g©y t¸c dông ph¶n nghÞch, ngµy mai h·y tiÕp tôc vËy.")
		return 1
	end
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e6}}, "test", 1);
		return 0
end
function main1(nIndexItem)

	if GetLevel() < 80 then
		Say("§¼ng cÊp 80 trë lªn míi cã thÓ sö dông")
		return 1
	end

	local SLSD5LoaiBaoRuong = 5
	local nDate = tonumber(GetLocalDate("%m%d"))
	if ( GetTask(1406) ~= nDate ) then
		SetTask(1406, nDate)
		SetTask(1407, 0)
	end

	if ( GetTask(1407) >= SLSD5LoaiBaoRuong ) then
		Say("H«m nay ®¹i hiÖp ®· sö dông "..SLSD5LoaiBaoRuong.." b¶o r­¬ng c¸c lo¹i, vâ c«ng th¨ng tiÕn qu¸ nhanh dÔ g©y t¸c dông ph¶n nghÞch, ngµy mai h·y tiÕp tôc vËy.")
		return 1
	end

	local tbKey1 = tbSJ_Key_Require["chiakhoanhuy"]
	local tbKey2 = tbSJ_Key_Require["chiakhoavang"]
	local nCount1 = CalcItemCount(3, tbKey1[1], tbKey1[2], tbKey1[3], -1) 
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount1 == 0 and nCount2 == 0 then
		Say("CÇn ph¶i cã Ch×a Khãa Vµng hoÆc Ch×a Khãa Nh­ ý míi cã thÓ më ®­îc Tèng Kim BÝ B¶o", 1, "§ãng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("Sö dông Ch×a khãa nh­ ý/#VnSJBoxNewAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("Sö dông Ch×a khãa vµng/#VnSJBoxNewAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "§ãng/Oncancel")
		Say("Sö dông ch×a khãa ®Ó më r­¬ng:", getn(tbOpt), tbOpt)
	end
	return 1	
end
function Oncancel()end

function VnSJBoxNewAward(nItemIdx, strKeyType)
	local tbKey = tbSJ_Key_Require[strKeyType]
	local tbAward = tbSJNewAward[strKeyType]
	if not tbKey or not tbAward then
		return
	end

	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("CÇn ph¶i cã Ch×a Khãa Vµng hoÆc Ch×a Khãa Nh­ ý míi cã thÓ më ®­îc Tèng Kim BÝ B¶o", 1, "§ãng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 2741, -1) ~= 1 then
		Say("Kh«ng t×m thÊy Tèng Kim BÝ B¶o", 1, "§ãng/no")
		return
	end
	tbAwardTemplet:Give(tbAward, 1, {"SongJin", "use songjingmibao"})	
	AddStatData("baoxiangxiaohao_kaisongjinmibao", 1)	
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> më Tèng Kim BÝ B¶o b»ng ch×a khãa nh­ ý <color=yellow>nhËn ®­îc nhiÒu phÇn th­ëng")
	SetTask(1407, GetTask(1407) + 1)
end