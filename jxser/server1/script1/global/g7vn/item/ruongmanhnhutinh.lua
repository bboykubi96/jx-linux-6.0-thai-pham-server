
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
dofile("script/global/g7vn/item/ruongmanhnhutinh.lua")
if CalcFreeItemCellCount() < 5 then
Say("H�nh trang kh�ng �� 5 � tr�ng.")
end
local rannn=random(1,100)
if rannn<=10 then
	local aa=random(777,782)
	tbAwardTemplet:GiveAwardByList({{szName = "M�nh Nhu T�nh",tbProp={4,aa,1,1,0},nCount=1},}, "test", 1);
else
	local aa=random(915,926)
	tbAwardTemplet:GiveAwardByList({{szName = "M�nh Nhu T�nh",tbProp={4,aa,1,1,0},nCount=1},}, "test", 1);
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