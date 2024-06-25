IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------
tbAward = {
	[1] = {
		{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,50002,1,0,0},nCount=5000},

	},
	[2] = {
		{szName="B¸ch NghÖ Thiªn Th¹ch",tbProp={6,1,49004,1,0,0},nCount=5000},

	},
	[3] = {
		{szName="B¸ch NghÖ Tinh Ngäc",tbProp={6,1,30355,1,0,0},nCount=5000},

	},
	[4] = {

		{szName=" B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,49006,1,0,0},nCount=5000},
		
	},
        [5] = {

		{szName=" Cµng Kh«n liªn Hoa",tbProp={6,1,5041,1,0,0},nCount=5000},
		
	},
      [6] = {

		{szName=" Cèi",tbProp={6,1,30281,1,0,0},nCount=1000,nExpiredTime=202203292400},
		
	},
      [7] = {

		{szName=" Khu«n",tbProp={6,1,30320,1,0,0},nCount=1000,nExpiredTime=202203292400},
		
	},
  [8] = {

		{szName=" Khu«n",tbProp={6,1,30325,1,0,0},nCount=1000,nExpiredTime=202204292400},
		
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
			Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang (6 x 6) ¤ Råi Më")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[1],"Tói xu")
	end

	if (P == 30160) then
		if (free ~= 1) then
			Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang (6 x 6) ¤ Råi Më")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[2],"Tói xu")
	end

	if (P == 30161) then
		if (free ~= 1) then
			Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang (6 x 6) ¤ Råi Më")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[3],"Tói xu")
	end

	if (P == 30162) then
		if (free ~= 1) then
			Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang (6 x 6) ¤ Råi Më")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[4],"Tói xu")
	end
        if (P == 30163) then
		if (free ~= 1) then
			Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang (6 x 6) ¤ Råi Më")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[5],"Tói xu")
	end
    if (P == 30285) then
		if (free ~= 1) then
			Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang (6 x 6) ¤ Råi Më")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[6],"Tói xu")
	end
   if (P == 30327) then
		if (free ~= 1) then
			Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang (6 x 6) ¤ Råi Më")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[7],"Tói xu")
	end
 if (P == 30326) then
		if (free ~= 1) then
			Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang (6 x 6) ¤ Råi Më")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[8],"Tói xu")
	end
end
