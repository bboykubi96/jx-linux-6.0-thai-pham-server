
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
		Say("Hµnh trang kh«ng ®ñ10 « trèng.")
		return 1
	end
mokhoa()
return 1
end
function mokhoa()
	
	GiveItemUI("Më Kho¸ Trang BÞ B¹ch Kim", "", "mokhoa_ok", "no", 1)
end

function mokhoa_ok(nCount)
if CalcEquiproomItemCount(6,1,1371,-1)<1 then
Say("Bug h¶... Chym cót.")
return 0
end
if nCount ~= 1 then
	Say("ChØ bá 1 vËt phÈm vµo ®Ó më kho¸.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
local nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1));
local checkkhoa=GetItemBindState(nItemIndex)
if checkkhoa~=-2 then 
Say("Kh«ng ph¶i lµ vËt phÈm kho¸ nªn kh«ng cÇn më kho¸.");
return 0;
end		
		if nItemLevel==6 then 
			--nItemLeveltc=nItemLevel+5
			--UpgradePlatinaFromGoldItem(GetGiveItemUnit(1)) 
			SetItemBindState(nItemIndex, 0)
			ConsumeEquiproomItem(1,6,1,1371,-1)
			Msg2Player("Më kho¸ thµnh c«ng.")
		else
			Say("Trang bÞ nµy kh«ng ph¶i lµ trang bÞ B¹ch Kim +6 kho¸ vÜnh viÔn")
			return
		end
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=yellow>%s<color=green> tõ b¶o  r­¬ng §å phæ", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)

end
