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
dofile("script/global/g7vn/item/trangbi/ruongthienhoang.lua")
if CalcFreeItemCellCount() < 20 then
		Say("C�n 20 � tr�ng �� m� r��ng")
		return 1
	end
tbAwardTemplet:GiveAwardByList({{szName = "Trang B� Hi�p C�t",tbProp={0,random(168,176)},nCount=1,nQuality=1,nExpiredTime=10*24*60},}, "test", 1);
end




