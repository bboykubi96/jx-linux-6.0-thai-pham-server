-- ´³¹Ø±¦ÏäÎïÆ·£¨Ëæ»ú»ñµÃÒ»ÑùÎïÆ·£©
-- By: Wangjingjun(2011-03-02)

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Chóc mõng cao thñ <color=yellow>%s<color=green> ®· nhËn ®­îc <color=yellow><%s><color=green> tõ <color=yellow><B¶o R­¬ng V­ît ¶i><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

tbCOT_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 30191},
}
tbCOT_Box_Award = 
{
	["chiakhoanhuy"] = 
	{
		{szName = "Tinh hång b¶o th¹ch",							tbProp={4,353,1,1,0,0},nCount=1,nRate =6},
		{szName = "HuyÒn tinh cÊp 5",								tbProp={6,1,147,5,0,0},nCount=1, nRate =2},
		--{szName = "Ngò Hµnh Kú Th¹ch",						tbProp = {6,1,2125,1,0,0},nCount=3,nRate=17},
		{szName = "Tiªn Th¶o Lé ®Æc biÖt",							tbProp={6,1,1181,1,0,0},nCount=1,nRate=7},
		{szName = "Tiªn Th¶o Lé",										tbProp={6,1,71,1,0,0},nCount=1,nRate=11},
		--{szName = "Tay Tuy Kinh",										tbProp={6,1,22,1,0,0},nCount=1,nRate=2},
		--{szName = "Vo Lam Mat Tich",										tbProp={6,1,26,1,0,0},nCount=1,nRate=2},
		{szName = "NÕn B¸t tr©n phóc nguyÖt",					tbProp = {6, 1, 1817, 1, 0, 0},nCount=1,nRate=12},	
		--{szName = "MÆt n¹ v­¬ng gi¶ 7 ngµy",						tbProp={0,11,561,1,0,0},nExpiredTime=60*24*7,nRate=5.5},

		{szName="§iÓm kinh nghiÖm 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "B¶o r­¬ng v­ît ¶i")
					end,
					nRate = 20,
		},
		{szName="§iÓm kinh nghiÖm 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1500000, "B¶o r­¬ng v­ît ¶i")
					end,
					nRate = 20,
		},
		{szName="§iÓm kinh nghiÖm 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1700000, "B¶o r­¬ng v­ît ¶i")
					end,
					nRate = 10,
		},
		{szName="§iÓm kinh nghiÖm 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1900000, "B¶o r­¬ng v­ît ¶i")
					end,
					nRate = 5,
		},
		{szName="§iÓm kinh nghiÖm 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "B¶o r­¬ng v­ît ¶i")
					end,
					nRate = 1,
		},

	},	
	["chiakhoavang"] = 
	{
		{szName = "Ngò Hµnh Kú Th¹ch",							tbProp = {6,1,2125,1,0,0},nCount=10,nRate=30},
		--{szName = "B«n Tiªu",												tbProp = {0,10,6,1,5,0},nCount=1,nRate=2},
		--{szName = "NhÊt kû cµn kh«n phï",							tbProp = {6,1,2126,1,0,0},nCount=1,nRate=3},

		{szName="§iÓm kinh nghiÖm 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(150000000, "B¶o r­¬ng v­ît ¶i")
					end,
					nRate = 40,
		},
		{szName="§iÓm kinh nghiÖm 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(250000000, "B¶o r­¬ng v­ît ¶i")
					end,
					nRate = 10,
		},
		{szName="§iÓm kinh nghiÖm 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(500000000, "B¶o r­¬ng v­ît ¶i")
					end,
					nRate = 5,
		},
		{szName="§iÓm kinh nghiÖm 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(800000000, "B¶o r­¬ng v­ît ¶i")
					end,
					nRate = 2,
		},
			{szName="§iÓm kinh nghiÖm 6", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(900000000, "B¶o r­¬ng v­ît ¶i")
					end,
					nRate = 0.5,
		},
			{szName="§iÓm kinh nghiÖm 7", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000000, "B¶o r­¬ng v­ît ¶i")
					end,
					nRate = 0.2,
		},
	},
}

nWidth = 2
nHeight = 4
nFreeItemCellLimit = 1

function main(nIndexItem)	
	
	--dofile("script/missions/challengeoftime/item/chuangguanbaoxiang.lua")
	--dofile("script/vng_event/change_request_baoruong/exp_award.lua")

	--do Say("T¹m thêi ch­a sö ®ông d­îc") return end

	if GetLevel() < 80 then
		Say("§¼ng cÊp 80 trë lªn míi cã thÓ sö dông")
		return 1
	end

	local SLSD5LoaiBaoRuong = 1
	local nDate = tonumber(GetLocalDate("%m%d"))
	if ( GetTask(1406) ~= nDate ) then
		SetTask(1406, nDate)
		SetTask(1407, 0)
	end

	if ( GetTask(1407) >= SLSD5LoaiBaoRuong ) then
		Say("H«m nay ®¹i hiÖp ®· sö dông "..SLSD5LoaiBaoRuong.." b¶o r­¬ng c¸c lo¹i, vâ c«ng th¨ng tiÕn qu¸ nhanh dÔ g©y t¸c dông ph¶n nghÞch, ngµy mai h·y tiÕp tôc vËy.")
		return 1
	end
AddOwnExp(5e6)

end

function Oncancel()end

function VnCOTBoxNewAward(nItemIdx, strKeyType)
	local tbKey = tbCOT_Key_Require[strKeyType]
	local tbAward = tbCOT_Box_Award[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("CÇn ph¶i cã Ch×a Khãa Vµng hoÆc Ch×a Khãa Nh­ ý míi cã thÓ më ®­îc B¶o R­¬ng V­ît ¶i", 1, "§ãng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 2742, -1) ~= 1 then
		Say("Kh«ng t×m thÊy B¶o R­¬ng V­ît ¶i", 1, "§ãng/no")
		return
	end	
	tbAwardTemplet:Give(tbAward, 1, {"chuangguan", "use chuangguanbaoxiang"})
	AddStatData("baoxiangxiaohao_kaichuangguanbaoxiang", 1)	--Êý¾ÝÂñµãµÚÒ»ÆÚ
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> më r­¬ng V­ît ¶i b»ng ch×a khãa nh­ ý <color=yellow>nhËn ®­îc nhiÒu phÇn th­ëng")
	SetTask(1407, GetTask(1407) + 1)
end