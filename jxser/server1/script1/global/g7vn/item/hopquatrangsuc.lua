
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
dofile("script/global/g7vn/item/hopquatrangsuc.lua")
if CalcFreeItemCellCount() < 10 then
Say("H�nh trang kh�ng �� 10 � tr�ng.")
return 1
end
local ranchung=random(7,9)
if ranchung==7 then
			AddItem( 0, 4,random(0,1), 10,random(0,4), 200, 10) 
elseif ranchung==8 then
			AddItem( 0, 9,random(0,1), 10,random(0,4), 200, 10) 
elseif ranchung==9 then
			AddItem( 0, 3,0, 10,random(0,4), 200, 10) 
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
