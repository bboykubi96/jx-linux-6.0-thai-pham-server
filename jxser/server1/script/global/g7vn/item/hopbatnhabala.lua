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
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
	end
	local tbAwardcc={
{szName="B�t Nh� B� La Kinh ", tbProp={6,1,4131,1,0,0},nCount = 1},
{szName="B�t Nh� B� La M�t", tbProp={6,1,4132,1,0,0},nCount = 1},

}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
end





