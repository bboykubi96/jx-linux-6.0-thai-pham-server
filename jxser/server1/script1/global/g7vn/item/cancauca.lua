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
dofile("script/global/g7vn/item/cancauca.lua")
if CalcFreeItemCellCount() < 5 then
		 Talk(1,"","H�y S�p X�p L�i H�nh Trang")
		 return
	end
	local tbAwardcc={
{szName="M�u T�ng Kim ", tbProp={6,1,215,1,0,0},nCount = 10},
}
local a = random(1,10)
if a==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Thu� Tinh",tbProp={4,random(238,240),1,1,0},nCount=1},}, "test", 1);
end
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
end





