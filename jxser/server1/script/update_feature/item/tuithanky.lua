IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------
tbAward = {
	[1] = {
		{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,50002,1,0,0},nCount=5000},

	},
	[2] = {
		{szName="B�ch Ngh� Thi�n Th�ch",tbProp={6,1,49004,1,0,0},nCount=5000},

	},
	[3] = {
		{szName="B�ch Ngh� Tinh Ng�c",tbProp={6,1,30355,1,0,0},nCount=5000},

	},
	[4] = {

		{szName=" B�ch Luy�n Th�nh C��ng",tbProp={6,1,49006,1,0,0},nCount=5000},
		
	},
        [5] = {

		{szName=" C�ng Kh�n li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=5000},
		
	},
      [6] = {

		{szName=" C�i",tbProp={6,1,30281,1,0,0},nCount=1000,nExpiredTime=202203292400},
		
	},
      [7] = {

		{szName=" Khu�n",tbProp={6,1,30320,1,0,0},nCount=1000,nExpiredTime=202203292400},
		
	},
  [8] = {

		{szName=" Khu�n",tbProp={6,1,30325,1,0,0},nCount=1000,nExpiredTime=202204292400},
		
	},
}

function main(nItemIdx)
local free = FindFreeRoomByWH(2, 3)
local G,D,P,nLevel = GetItemProp(nItemIdx)
	if (G ~= 6) then
		return 1
	end
	
	if (P == 30159) then
		if (free ~= 1) then
			Talk(1,"","H�y S�p X�p L�i H�nh Trang (6 x 6) � R�i M�")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[1],"T�i xu")
	end

	if (P == 30160) then
		if (free ~= 1) then
			Talk(1,"","H�y S�p X�p L�i H�nh Trang (6 x 6) � R�i M�")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[2],"T�i xu")
	end

	if (P == 30161) then
		if (free ~= 1) then
			Talk(1,"","H�y S�p X�p L�i H�nh Trang (6 x 6) � R�i M�")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[3],"T�i xu")
	end

	if (P == 30162) then
		if (free ~= 1) then
			Talk(1,"","H�y S�p X�p L�i H�nh Trang (6 x 6) � R�i M�")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[4],"T�i xu")
	end
        if (P == 30163) then
		if (free ~= 1) then
			Talk(1,"","H�y S�p X�p L�i H�nh Trang (6 x 6) � R�i M�")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[5],"T�i xu")
	end
    if (P == 30285) then
		if (free ~= 1) then
			Talk(1,"","H�y S�p X�p L�i H�nh Trang (6 x 6) � R�i M�")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[6],"T�i xu")
	end
   if (P == 30327) then
		if (free ~= 1) then
			Talk(1,"","H�y S�p X�p L�i H�nh Trang (6 x 6) � R�i M�")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[7],"T�i xu")
	end
 if (P == 30326) then
		if (free ~= 1) then
			Talk(1,"","H�y S�p X�p L�i H�nh Trang (6 x 6) � R�i M�")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[8],"T�i xu")
	end
end
