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
dofile("script/global/g7vn/item/tuilagtongkim.lua")
if CalcFreeItemCellCount() < 10 then
		Talk(1,"","H�y S�p X�p L�i H�nh Trang")
		return 1
	end
	local tbAwardcc={
{szName="Chi�n c� ", tbProp={6,1,156,1,0,0},nCount = 50},

}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
end





