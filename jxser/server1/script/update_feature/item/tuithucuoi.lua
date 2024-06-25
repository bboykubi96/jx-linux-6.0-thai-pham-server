IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------
tbAward = {
	[1] = {
		{szName="V� Li�t Chi B�c Th�n Kh�i",tbProp={0,5119},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=4320},
		{szName="V� Li�t Chi T�p ",tbProp={0,5120},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=4320},
		{szName="V� Li�t Chi T�p ",tbProp={0,5121},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=4320},
		{szName="V� Li�t Chi T�p ",tbProp={0,5122},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=4320},
		{szName="T� B�t T��ng",tbProp={0,5123},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=4320},
		{szName="M�c V�n Kim S�c",tbProp={0,5124},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=4320},
		{szName="X�ch V� Kim S�c",tbProp={0,random(5019,5020)},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=4320},
		{szName="Tuy�t V�c Ng�n H�n",tbProp={0,random(5053,5054)},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=4320},
		
	},
	[2] = {
		{szName="V� Li�t Chi B�c Th�n Kh�i",tbProp={0,5114},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=10080},
		{szName="V� Li�t Chi T�p ",tbProp={0,5115},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=10080},
		{szName="V� Li�t Chi T�p ",tbProp={0,5116},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=10080},
		{szName="V� Li�t Chi T�p ",tbProp={0,5117},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=10080},
		{szName="T� B�t T��ng",tbProp={0,5118},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=10080},
		{szName="M�c V�n Kim S�c",tbProp={0,random(5239,5248)},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=10080},
		{szName="X�ch V� Kim S�c",tbProp={0,random(5019,5020)},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=10080},
		{szName="Tuy�t V�c Ng�n H�n",tbProp={0,random(5053,5054)},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=10080},
		
	},
	[3] = {
		{szName="V� Li�t Chi B�c Th�n Kh�i",tbProp={0,5109},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=20160},
		{szName="V� Li�t Chi T�p ",tbProp={0,5110},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=20160},
		{szName="V� Li�t Chi T�p ",tbProp={0,5111},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=20160},
		{szName="V� Li�t Chi T�p ",tbProp={0,5112},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=20160},
		{szName="T� B�t T��ng",tbProp={0,5113},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=20160},
		{szName="M�c V�n Kim S�c",tbProp={0,random(5239,5248)},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=20160},
		{szName="X�ch V� Kim S�c",tbProp={0,random(5019,5020)},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=20160},
		{szName="Tuy�t V�c Ng�n H�n",tbProp={0,random(5053,5054)},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=20160},
		
	},
	[4] = {
		{szName="V� Li�t Chi B�c Th�n Kh�i",tbProp={0,5119},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=43200},
		{szName="V� Li�t Chi T�p ",tbProp={0,8899},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=43200},
		{szName="V� Li�t Chi T�p ",tbProp={0,8900},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=43200},
		{szName="V� Li�t Chi T�p ",tbProp={0,8901},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=43200},
		{szName="T� B�t T��ng",tbProp={0,8902},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=43200},
		{szName="M�c V�n Kim S�c",tbProp={0,random(5239,5248)},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=43200},
		{szName="X�ch V� Kim S�c",tbProp={0,random(5019,5020)},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=43200},
		{szName="Tuy�t V�c Ng�n H�n",tbProp={0,random(5053,5054)},nCount=1,nQuality=1,nRate=8.333333333333333,nExpiredTime=43200},
		
	},
}

function main(nItemIdx)
local free = FindFreeRoomByWH(3, 3)
local G,D,P,nLevel = GetItemProp(nItemIdx)
	if (G ~= 6) then
		return 1
	end
	
	if (P == 30140) then
		if (free ~= 1) then
			Talk(1,"","H�y S�p X�p L�i H�nh Trang (3 x 3) � R�i M�")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[1],"T�i Th� C��i 3 Ng�y")
	end

	if (P == 30141) then
		if (free ~= 1) then
			Talk(1,"","H�y S�p X�p L�i H�nh Trang (3 x 3) � R�i M�")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[2],"T�i Th� C��i 7 Ng�y")
	end

	if (P == 30142) then
		if (free ~= 1) then
			Talk(1,"","H�y S�p X�p L�i H�nh Trang (3 x 3) � R�i M�")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[3],"T�i Th� C��i 14 Ng�y")
	end

	if (P == 75357) then
		if (free ~= 1) then
			Talk(1,"","H�y S�p X�p L�i H�nh Trang (3 x 3) � R�i M�")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[4],"T�i Th� C��i 30 Ng�y")
	end
end
