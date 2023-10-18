Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
----------------------------------------------------------------------------
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Chóc mõng cao thñ <color=yellow>%s<color=green> ®· nhËn ®­îc <color=yellow><%s><color=green> tõ <color=yellow><Viªm §Õ BÝ B¶o><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

tbYdbz_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 30191},
}

tbYdbz_Box_Award = 
{
	["chiakhoanhuy"] = 
	{
		{szName="§iÓm kinh nghiÖm 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "Viªm §Õ BÝ B¶o")
					end,
					nRate = 52,
		},
		{szName="§iÓm kinh nghiÖm 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "Viªm §Õ BÝ B¶o")
					end,
					nRate = 30,
		},
		{szName="§iÓm kinh nghiÖm 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000, "Viªm §Õ BÝ B¶o")
					end,
					nRate = 10,
		},
		{szName="§iÓm kinh nghiÖm 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(4000000, "Viªm §Õ BÝ B¶o")
					end,
					nRate = 5,
		},
		{szName="§iÓm kinh nghiÖm 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "Viªm §Õ BÝ B¶o")
					end,
					nRate = 3,
		},		
	},	
	["chiakhoavang"] = {
		{szName="B¶o R­¬ng XÝch L©n H¹ng Liªn",tbProp={6,1,4671,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nRate=0.010, CallBack = _Message},
		{szName="B¶o R­¬ng XÝch L©n Kh«i",tbProp={6,1,4672,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},nRate=0.009, CallBack = _Message},
		{szName="B¶o R­¬ng XÝch L©n Th­îng Giíi",tbProp={6,1,4673,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=0.003, CallBack = _Message},
		{szName="B¶o R­¬ng XÝch L©n Hé UyÓn",tbProp={6,1,4674,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=0.008, CallBack = _Message},
		{szName="B¶o R­¬ng XÝch L©n Yªu §¸i",tbProp={6,1,4675,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=0.007, CallBack = _Message},
		{szName="B¶o R­¬ng XÝch L©n Kh¶i",tbProp={6,1,4676,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},nRate=0.004, CallBack = _Message},
		{szName="B¶o R­¬ng XÝch L©n Vò KhÝ",tbProp={6,1,4677,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},nRate=0.001, CallBack = _Message},
		{szName="B¶o R­¬ng XÝch L©n Hµi",tbProp={6,1,4678,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=0.006, CallBack = _Message},
		{szName="B¶o R­¬ng XÝch L©n Béi",tbProp={6,1,4679,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nRate=0.005, CallBack = _Message},
		{szName="B¶o R­¬ng XÝch L©n H¹ Giíi",tbProp={6,1,4680,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nRate=0.002, CallBack = _Message},
		{szName="§å Phæ Minh Ph­îng Liªn",tbProp={6,1,4581,1,0,0},nCount=1,nRate=0.0010},
		{szName="§å Phæ Minh Ph­îng Kh«i",tbProp={6,1,4582,1,0,0},nCount=1, nRate=0.0009},
		{szName="§å Phæ Minh Ph­îng Th­îng Giíi",tbProp={6,1,4583,1,0,0},nCount=1,nRate=0.0003},		
		{szName="§å Phæ Minh Ph­îng Hé UyÓn",tbProp={6,1,4584,1,0,0},nCount=1,nRate=0.0008},
		{szName="§å Phæ Minh Ph­îng Yªu §¸i",tbProp={6,1,4585,1,0,0},nCount=1,nRate=0.0007},
		{szName="§å Phæ Minh Ph­îng Y",tbProp={6,1,4586,1,0,0},nCount=1,nRate=0.0004},
		{szName="§å Phæ Minh Ph­îng KhÝ Giíi",tbProp={6,1,4587,1,0,0},nCount=1,nRate=0.0001},
		{szName="§å Phæ Minh Ph­îng Hµi",tbProp={6,1,4588,1,0,0},nCount=1,nRate=0.0006},
		{szName="§å Phæ Minh Ph­îng Béi",tbProp={6,1,4589,1,0,0},nCount=1,nRate=0.0005},
		{szName="§å Phæ Minh Ph­îng H¹ Giíi",tbProp={6,1,4590,1,0,0},nCount=1,nRate=0.0002},		
		{szName="Ch×a Khãa Nh­ ý",tbProp={6,1,2744,1,0,0},nCount=1,nRate=1.974,nExpiredTime=20160},
		{szName="Ngäc Qu¸n",tbProp={6,1,2311,1,0,0},nCount=1,nRate=1},
		{szName="Méc Nh©n LÖnh",tbProp={6,1,30105,1,0,0},nCount=2,nRate=3},
		{szName="Hoµn Hån §¬n",tbProp={6,1,2837,1,0,0},nCount=1,nRate=2,nExpiredTime=43200},
		{szName="§iÓm kinh nghiÖm 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000, "Viªm §Õ BÝ B¶o")
					end,
					nRate = 30,
		},
		{szName="§iÓm kinh nghiÖm 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "Viªm §Õ BÝ B¶o")
					end,
					nRate = 25,
		},
		{szName="§iÓm kinh nghiÖm 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(8000000, "Viªm §Õ BÝ B¶o")
					end,
					nRate = 10,
		},
		{szName="§iÓm kinh nghiÖm 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(10000000, "Viªm §Õ BÝ B¶o")
					end,
					nRate = 5,
		},
		{szName="§iÓm kinh nghiÖm 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(15000000, "Viªm §Õ BÝ B¶o")
					end,
					nRate = 3,
		},
		{szName="§iÓm kinh nghiÖm 6", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(20000000, "Viªm §Õ BÝ B¶o")
					end,
					nRate = 2,
		},
		{szName="§iÓm kinh nghiÖm 7", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(50000000, "Viªm §Õ BÝ B¶o")
					end,
					nRate = 1,
		},
	},
}

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main(nIndexItem)
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate ~= GetTask(3019) then
		SetTask(3019,nDate)
		SetTask(3020,0)
	end
	if GetTask(3020)>9 and nDate==GetTask(3019) then
		Say("Mçi ngµy chØ sö dông ®­îc 10 r­¬ng")
		return 1
	end
	AddOwnExp(1000000)
	SetTask(3020,GetTask(3020)+1)
	local nDate2 = tonumber(GetLocalDate("%Y%m%d"));
	SetTask(3019,nDate2)
end

function Oncancel()end

function VnYdbzBoxNewAward(nItemIdx, strKeyType)
	local tbKey = tbYdbz_Key_Require[strKeyType]
	local tbAward = tbYdbz_Box_Award[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("CÇn ph¶i cã Ch×a Khãa Vµng hoÆc Ch×a Khãa Nh­ ý míi cã thÓ më ®­îc Viªm §Õ BÝ B¶o", 1, "§ãng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 2805, -1) ~= 1 then
		Say("Kh«ng t×m thÊy Viªm §Õ BÝ B¶o", 1, "§ãng/no")
		return
	end
	tbAwardTemplet:Give(tbAward, 1, {"YDBZ", "use yandimibao"})	
end