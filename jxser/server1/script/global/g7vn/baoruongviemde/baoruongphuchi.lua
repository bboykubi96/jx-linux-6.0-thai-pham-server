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
dofile("script/global/g7vn/baoruongviemde/baoruongphuchi.lua")
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
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,455},nQuality=1,nCount=1},}, "test", 1);
Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�c Hi Hoan �nh K�ch.")
end
if a==3 or a==4 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,456},nQuality=1,nCount=1},}, "test", 1);
Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�c Hi V� L��ng T�ch T� Th�.")
end
if a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,457},nQuality=1,nCount=1},}, "test", 1);
Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�c Hi To�i T�m.")
end
ConsumeEquiproomItem(1, 6,1, 4297,-1)
ConsumeEquiproomItem(1, 6,1, 4439,-1)
end





