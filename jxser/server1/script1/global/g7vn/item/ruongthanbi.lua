
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
dofile("script/global/g7vn/item/ruongthanbi.lua")
if CalcFreeItemCellCount() < 5 then
Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
end
local a=random(1,4)
if a==1 then
tbAwardTemplet:GiveAwardByList({{szName="NhÉn Kim Quang 1 Ngµy",tbProp={0,3771},nCount=1,nQuality=1,nExpiredTime=1*24*60},}, "test", 1);
Msg2SubWorld("<color=green>Chóc mõng <color=cyan>"..GetName().."<color> ®· nhËn ®­îc <color=yellow>NhÉn Kim Quang 1 Ngµy<color> tõ <color=red> B¶o R­¬ng ThÇn BÝ.")
else
Say("Trong r­¬ng kh«ng cã g×! Chóc b¹n may m¾n lÇn sau!")
Msg2SubWorld("<color=green>§¹i hiÖp <color=cyan>"..GetName().."<color> ®· bÞ ¨n <color=yellow>Có Lõa<color> tõ  <color=red>B¶o R­¬ng ThÇn BÝ.")
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
