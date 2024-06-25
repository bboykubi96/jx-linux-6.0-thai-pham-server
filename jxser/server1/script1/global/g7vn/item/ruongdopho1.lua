
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
dofile("script/global/g7vn/item/ruongdopho1.lua")
local tbaward={
{szName="§å phæ Hoµng Kim",tbProp={6,1,random(239,378),1,0,0},nCount=1,CallBack= _Message},
--{szName="§å phæ Hoµng Kim2",tbProp={6,1,378,1,0,0},nCount=1,CallBack= _Message},
}

tbAwardTemplet:Give(tbaward, 1, {"NhanHoTroTanThu", "NhanHoTroTanThu"})

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
