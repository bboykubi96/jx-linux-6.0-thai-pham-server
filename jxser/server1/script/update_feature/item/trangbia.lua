IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------------
function main()
	local tbFormula = {
		szComposeTitle = "B¸ch Khoa Toµn Th­ - B¶n Hoµn ChØnh",
		nFreeItemCellLimit = 0,
		tbMaterial = {
			{szName="B¸ch Khoa Toµn Th­ - Trang B×a",tbProp={6,1,30191,1,0,0},nCount=10},
			{szName="B¸ch Khoa Toµn Th­ - Trang Thø 1",tbProp={6,1,30192,1,0,0},nCount=10},
			{szName="B¸ch Khoa Toµn Th­ - Trang Thø 2",tbProp={6,1,30193,1,0,0},nCount=10},
			{szName="B¸ch Khoa Toµn Th­ - Trang Thø 3",tbProp={6,1,30194,1,0,0},nCount=10},
			{szName="B¸ch Khoa Toµn Th­ - Trang Thø 4",tbProp={6,1,30195,1,0,0},nCount=10},
			{szName="B¸ch Khoa Toµn Th­ - Trang Thø 5",tbProp={6,1,30196,1,0,0},nCount=10},
			{szName="B¸ch Khoa Toµn Th­ - Trang Thø 6",tbProp={6,1,30197,1,0,0},nCount=10},
			{szName="B¸ch Khoa Toµn Th­ - Trang Thø 7",tbProp={6,1,30198,1,0,0},nCount=10},
			{szName="B¸ch Khoa Toµn Th­ - Trang Thø 8",tbProp={6,1,30199,1,0,0},nCount=10},
			{szName="B¸ch Khoa Toµn Th­ - Trang Thø 9",tbProp={6,1,30200,1,0,0},nCount=10},
			{szName="B¸ch Khoa Toµn Th­ - Trang Thø 10",tbProp={6,1,30201,1,0,0},nCount=10},
		},
		tbProduct = {
			{szName="B¸ch Khoa Toµn Th­ - B¶n Hoµn ChØnh", tbProp={6,1,30189,1,0,0},nCount=1},
		},
	}
	local p = tbActivityCompose:new(tbFormula,1, "B¸ch Khoa Toµn Th­", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
	return 1
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------