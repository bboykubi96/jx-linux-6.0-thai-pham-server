
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
dofile("script/task/lord/trea_box_key.lua")
if CalcFreeItemCellCount() < 10 then
		Say("H�nh trang kh�ng ��10 � tr�ng.")
		return 1
	end
mokhoa()
return 1
end
function mokhoa()
	
	GiveItemUI("M� Kho� Trang B� B�ch Kim", "", "mokhoa_ok", "no", 1)
end

function mokhoa_ok(nCount)
if CalcEquiproomItemCount(6,1,1371,-1)<1 then
Say("Bug h�... Chym c�t.")
return 0
end
if nCount ~= 1 then
	Say("Ch� b� 1 v�t ph�m v�o �� m� kho�.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
local nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1));
local checkkhoa=GetItemBindState(nItemIndex)
if checkkhoa~=-2 then 
Say("Kh�ng ph�i l� v�t ph�m kho� n�n kh�ng c�n m� kho�.");
return 0;
end		
		if nItemLevel==6 then 
			--nItemLeveltc=nItemLevel+5
			--UpgradePlatinaFromGoldItem(GetGiveItemUnit(1)) 
			SetItemBindState(nItemIndex, 0)
			ConsumeEquiproomItem(1,6,1,1371,-1)
			Msg2Player("M� kho� th�nh c�ng.")
		else
			Say("Trang b� n�y kh�ng ph�i l� trang b� B�ch Kim +6 kho� v�nh vi�n")
			return
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
