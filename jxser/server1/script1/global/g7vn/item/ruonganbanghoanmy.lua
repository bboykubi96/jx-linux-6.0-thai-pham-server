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
dofile("script/global/g7vn/item/ruonganbanghoanmy.lua")
if CalcFreeItemCellCount() < 5 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
tbAwardTemplet:GiveAwardByList({{szName = "M·nh An Bang Hoµn Mü",tbProp={4,random(747,770),1,1},nCount=1},}, "test", 1);
end




