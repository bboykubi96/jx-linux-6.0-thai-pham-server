
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
function main()
dofile("script/global/g7vn/item/ruongmanhhonthach.lua")
if CalcFreeItemCellCount() < 5 then
Say("H�nh trang kh�ng �� 5 � tr�ng.")
end
local rannn=random(1,10)
if rannn<=3 then
	tbAwardTemplet:GiveAwardByList({{szName = "K� Huy�t Ho�n M� H�n Th�ch",tbProp={6,1,4501,1,1},nCount=1},}, "test", 1);
elseif rannn>=4 and rannn<=6 then
	tbAwardTemplet:GiveAwardByList({{szName = "C�c Hoa Ho�n M� H�n Th�ch",tbProp={6,1,4502,1,1},nCount=1},}, "test", 1);
elseif rannn>=7 and rannn<=9 then
	tbAwardTemplet:GiveAwardByList({{szName = "�i�n Ho�ng Ho�n M� H�n Th�ch",tbProp={6,1,4503,1,1},nCount=1},}, "test", 1);
elseif rannn==10 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�ng Tinh Ho�n M� H�n Th�ch",tbProp={6,1,4504,1,1},nCount=1},}, "test", 1);
end
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green> t� b�o  r��ng �� ph�", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)

end
