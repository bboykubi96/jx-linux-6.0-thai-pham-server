
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
dofile("script/global/g7vn/item/ruongmanhthienthach.lua")
if CalcFreeItemCellCount() < 5 then
Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
end
local aa=random(1317,1325)

tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Thiªn Th¹ch",tbProp={4,aa,1,1,0},nCount=1},}, "test", 1);
Msg2Player("B¹n ®· nhËn ®­îc 1 m¶nh thiªn th¹ch")
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
