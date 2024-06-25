-- Cong thanh le bao that thanh dai chien
Include("\\script\\lib\\awardtemplet.lua")

--Giíi h¹n ®iÓm kinh nghiÖm mçi ngµy lµ 50triÖu khi sö dông c¸c lo¹i b¶o r­¬ng - Modified by DinhHQ - 20110428
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

tbAward = {
		{szName="§iÓm kinh nghiÖm 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "C«ng Thµnh LÔ Bao (míi)")
					end,
					nRate = 50.00,
		},
	{szName="§iÓm kinh nghiÖm 2", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(3000000, "C«ng Thµnh LÔ Bao (míi)")
				end,
				nRate = 20,
	},
	{szName="§iÓm kinh nghiÖm 3", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(400000, "C«ng Thµnh LÔ Bao (míi)")
				end,
				nRate = 20,
	},
	{szName="§iÓm kinh nghiÖm 4", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(5000000, "C«ng Thµnh LÔ Bao (míi)")
				end,
				nRate = 0.5,
	},
	{szName="§iÓm kinh nghiÖm 5", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(7000000, "C«ng Thµnh LÔ Bao (míi)")
				end,
				nRate = 0.2,
	},
	{szName="§iÓm kinh nghiÖm 6", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(10000000, "C«ng Thµnh LÔ Bao (míi)")
				end,
				nRate = 0.1,
	},

--	{nExp = 1500000,  nRate = 48.02},
--	{nExp = 2000000,  nRate = 30},
--	{nExp = 5000000,  nRate = 5},
--	{nExp = 10000000, nRate	= 3},
--	{nExp = 20000000, nRate	= 2},
--	{nExp = 50000000, nRate	= 1},	

}

function main(nItemIndex)
	if (CalcFreeItemCellCount() < 1) then
		Say("Hµnh trang Ýt nhÊt ph¶i cã <color=red>1<color> « trèng míi nhËn ®­îc phÇn th­ëng.")
		return 1
	end
	--	AddOwnExp(1000000)
molebaoct()
	--tbAwardTemplet:Give(tbAward, 1, {"SEVENCITY", "UseCityAward"})
	--return 0
end

function test()
	local rate = 0
	for i = 1, getn(tbAward) do
		rate = rate + tbAward[i].nRate
	end
	if (floor(rate) ~= 100) then
		error(format("total rate is wrong", rate))
	end
end


function molebaoct()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§¹i hiÖp <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< Khi Sö Dông C«ng Thµnh LÔ Bao><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end


local tbthuongitem30 = {

			{szName= "Money", nJxb=50000, nCount=1,nRate=2,},
			{szName= "Money", nJxb=100000, nCount=1,nRate=2,},
			{szName= "Money", nJxb=200000, nCount=1,nRate=2,},
			--{szName= "Money", nJxb=700000, nCount=1,nRate=2,},
			{szName = "Phóc duyªn",tbProp={6,1,122,1,1},nCount=1,nRate=0.4,},
						{szName = "Phóc duyªn",tbProp={6,1,123,1,1},nCount=1,nRate=0.4,},
			{szName = "Phóc duyªn",tbProp={6,1,124,1,1},nCount=1,nRate=0.4,},
			{szName = "Tói danh väng",tbProp={6,1,4338,1,1},nCount=1,nRate=0.4,},
			{szName = "§¹i Lùc",tbProp={6,0,3,1,1},nCount=1,nRate=2,},
			{szName = "Phi Tèc",tbProp={6,0,6,1,1},nCount=1,nRate=2,},
						{szName = "ThiÕt La h¸n",tbProp={6,1,23,1,1},nCount=1,nRate=1,CallBack= _Message,},
			{szName = "Tiªn Thæ Lé",tbProp={6,1,71,1,1},nCount=1,nRate=0.2,CallBack= _Message,},
			{szName = "Thiªn S¬n B¶o Lé",tbProp={6,1,72,1,1},nCount=1,nRate=2,},


		--	{szName = "Bµn Nh­îc",tbProp={6,1,12,1,1},nCount=1,nRate=0.4,},
		--	{szName = "QuÕ Hoa Töu",tbProp={6,1,125,1,1},nCount=1,nRate=1.7,},
			--{szName = "Thiªn S¬n B¶o Lé",tbProp={6,1,72,1,1},nCount=1,nRate=2,},
			--{szName = "b¸ch qu¶ lé",tbProp={6,1,73,1,1},nCount=1,nRate=2,},
			--{szName = "§¹i Lùc",tbProp={6,0,3,1,1},nCount=1,nRate=2,},
			--{szName = "Phi Tèc",tbProp={6,0,6,1,1},nCount=1,nRate=2,},
			--{szName = "T­¬ng ¸nh phï",tbProp={6,1,18,1,1},nCount=1,nRate=1,},
			--{szName = "Tiªn Thæ Lé",tbProp={6,1,71,1,1},nCount=1,nRate=0.8,},
			{szName = "Tinh hång",tbProp={4,353,1,1},nCount=1,nRate=0.3,},
			{szName = "Lôc Thñy Tinh",tbProp={4,238,1,1},nCount=1,nRate=0.2,},
			{szName = "Tö Thñy Tinh",tbProp={4,239,1,1},nCount=1,nRate=0.2,},
			{szName = "Lam Thñy Tinh",tbProp={4,240,1,1},nCount=1,nRate=0.2,},
			--{szName = "Tiªn Thæ Lé",tbProp={6,1,71,1,1},nCount=1,nRate=0.2,CallBack= _Message,},
			--{szName = "ThiÕt La h¸n",tbProp={6,1,23,1,1},nCount=1,nRate=1,CallBack= _Message,},
		--	{szName = "Vâ L©m MËt TÞch",tbProp={6,1,26,1,1},nCount=1,nRate=0.1,CallBack= _Message,},
		--	{szName = "TÈy Tñy Kinh",tbProp={6,1,22,1,1},nCount=1,nRate=0.1,CallBack= _Message,},


			
}
tbAwardTemplet:Give(tbthuongitem30, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
end
