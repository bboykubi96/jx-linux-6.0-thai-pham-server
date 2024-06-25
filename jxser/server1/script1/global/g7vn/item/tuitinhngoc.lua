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
dofile("script/global/g7vn/item/tuitinhngoc.lua")
if CalcFreeItemCellCount() < 10 then
		Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
		return 1
	end
	local tbAwardcc={
{nExp_tl=10e6},	

}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
end





