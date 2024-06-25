
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
Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
end
local rannn=random(1,10)
if rannn<=3 then
	tbAwardTemplet:GiveAwardByList({{szName = "Kª HuyÕt Hoµn Mü Hån Th¹ch",tbProp={6,1,4501,1,1},nCount=1},}, "test", 1);
elseif rannn>=4 and rannn<=6 then
	tbAwardTemplet:GiveAwardByList({{szName = "Cóc Hoa Hoµn Mü Hån Th¹ch",tbProp={6,1,4502,1,1},nCount=1},}, "test", 1);
elseif rannn>=7 and rannn<=9 then
	tbAwardTemplet:GiveAwardByList({{szName = "§iÒn Hoµng Hoµn Mü Hån Th¹ch",tbProp={6,1,4503,1,1},nCount=1},}, "test", 1);
elseif rannn==10 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¨ng Tinh Hoµn Mü Hån Th¹ch",tbProp={6,1,4504,1,1},nCount=1},}, "test", 1);
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
