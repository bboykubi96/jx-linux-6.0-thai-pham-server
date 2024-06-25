Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
-----------------------------------------------------
--------------------------------------------------------

function main()
dofile("script/global/g7vn/item/hopbatnhabala.lua")
if CalcFreeItemCellCount() < 5 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
	local tbAwardcc={
{szName="B¸t Nh· Bµ La Kinh ", tbProp={6,1,4131,1,0,0},nCount = 1},
{szName="B¸t Nh· Bµ La MËt", tbProp={6,1,4132,1,0,0},nCount = 1},

}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
end





