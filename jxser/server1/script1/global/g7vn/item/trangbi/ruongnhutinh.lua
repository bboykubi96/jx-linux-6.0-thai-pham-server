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
dofile("script/global/g7vn/item/trangbi/ruongnhutinh.lua")
if CalcFreeItemCellCount() < 5 then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
	end
tbAwardTemplet:GiveAwardByList({{szName = "Trang B� Nhu T�nh",tbProp={0,random(190,193)},nCount=1,nQuality=1},}, "test", 1);
end




