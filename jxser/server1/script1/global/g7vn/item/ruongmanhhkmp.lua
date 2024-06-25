
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
dofile("script/global/g7vn/item/ruongmanhhkmp.lua")
if CalcFreeItemCellCount() < 5 then
Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
end
local aa=random(1504,1618)
if aa==1516 then
	aa=1515
end
tbAwardTemplet:GiveAwardByList({{szName = "M¶nh HKMP",tbProp={4,aa,1,1,0},nCount=1},}, "test", 1);

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
