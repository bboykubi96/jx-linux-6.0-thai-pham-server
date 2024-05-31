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
--------------------------------------------------------

function main()
dofile("script/global/g7vn/baoruongviemde/baoruongnuoa.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
end
if CalcEquiproomItemCount(6,1,4297,-1) < 1 then
	Talk(1, "", "C�n 1 Ch�a Kho� Ho�ng Kim trong h�nh trang!")
return 1;
end
local a = random(1,5)
if a==1 or a==2 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,463},nQuality=1,nCount=1},}, "test", 1);
Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> N� Oa H�ng Nhan Ph�t ��i.")
end
if a==3 or a==4 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,467},nQuality=1,nCount=1},}, "test", 1);
Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> N� Oa H�n T��ng.")
end
if a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,464},nQuality=1,nCount=1},}, "test", 1);
Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> N� Oa L�c Ngh� Ngh� Th��ng Th�c ��i.")
end
ConsumeEquiproomItem(1, 6,1, 4297,-1)
ConsumeEquiproomItem(1, 6,1, 4440,-1)
end





