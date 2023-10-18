
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
dofile("script/global/g7vn/item/ruongmanhanbang1.lua")
if CalcFreeItemCellCount() < 5 then
Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
end
luachonmon()
return 1

end

function luachonmon()
local tbSay = 
{
"M¶nh An Bang B¨ng Tinh Th¹ch H¹ng Liªn/#daychuyenanbang()",
"M¶nh An Bang Cóc Hoa Th¹ch ChØ Hoµn/#nhantrenanbang()",
"M¶nh An Bang §iÒn Hoµn Th¹ch Ngäc Béi/#ngocboianbang()",
"M¶nh An Bang HuyÕt Th¹ch Giíi ChØ/#nhanduoianbang()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Chän Chøc N¨ng Nµo",getn(tbSay),tbSay)
end
function nhanduoianbang()
local tbSay = 
{
"M¶nh An Bang HuyÕt Th¹ch Giíi ChØ (1)/#manhdaychuyen(765)",
"M¶nh An Bang HuyÕt Th¹ch Giíi ChØ (2)/#manhdaychuyen(766)",
"M¶nh An Bang HuyÕt Th¹ch Giíi ChØ (3)/#manhdaychuyen(767)",
"M¶nh An Bang HuyÕt Th¹ch Giíi ChØ (4)/#manhdaychuyen(768)",
"M¶nh An Bang HuyÕt Th¹ch Giíi ChØ (5)/#manhdaychuyen(769)",
"M¶nh An Bang HuyÕt Th¹ch Giíi ChØ (6)/#manhdaychuyen(770)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Chän Chøc N¨ng Nµo",getn(tbSay),tbSay)
end
function ngocboianbang()
local tbSay = 
{
"M¶nh An Bang §iÒn Hoµn Th¹ch Ngäc Béi (1)/#manhdaychuyen(759)",
"M¶nh An Bang §iÒn Hoµn Th¹ch Ngäc Béi (2)/#manhdaychuyen(760)",
"M¶nh An Bang §iÒn Hoµn Th¹ch Ngäc Béi (3)/#manhdaychuyen(761)",
"M¶nh An Bang §iÒn Hoµn Th¹ch Ngäc Béi (4)/#manhdaychuyen(762)",
"M¶nh An Bang §iÒn Hoµn Th¹ch Ngäc Béi (5)/#manhdaychuyen(763)",
"M¶nh An Bang §iÒn Hoµn Th¹ch Ngäc Béi (6)/#manhdaychuyen(764)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Chän Chøc N¨ng Nµo",getn(tbSay),tbSay)
end
function nhantrenanbang()
local tbSay = 
{
"M¶nh An Bang Cóc Hoa Th¹ch ChØ Hoµn (1)/#manhdaychuyen(753)",
"M¶nh An Bang Cóc Hoa Th¹ch ChØ Hoµn (2)/#manhdaychuyen(754)",
"M¶nh An Bang Cóc Hoa Th¹ch ChØ Hoµn (3)/#manhdaychuyen(755)",
"M¶nh An Bang Cóc Hoa Th¹ch ChØ Hoµn (4)/#manhdaychuyen(756)",
"M¶nh An Bang Cóc Hoa Th¹ch ChØ Hoµn (5)/#manhdaychuyen(757)",
"M¶nh An Bang Cóc Hoa Th¹ch ChØ Hoµn (6)/#manhdaychuyen(758)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Chän Chøc N¨ng Nµo",getn(tbSay),tbSay)
end
function daychuyenanbang()
local tbSay = 
{
"M¶nh An Bang B¨ng Tinh Th¹ch H¹ng Liªn (1)/#manhdaychuyen(747)",
"M¶nh An Bang B¨ng Tinh Th¹ch H¹ng Liªn (2)/#manhdaychuyen(748)",
"M¶nh An Bang B¨ng Tinh Th¹ch H¹ng Liªn (3)/#manhdaychuyen(749)",
"M¶nh An Bang B¨ng Tinh Th¹ch H¹ng Liªn (4)/#manhdaychuyen(750)",
"M¶nh An Bang B¨ng Tinh Th¹ch H¹ng Liªn (5)/#manhdaychuyen(751)",
"M¶nh An Bang B¨ng Tinh Th¹ch H¹ng Liªn (6)/#manhdaychuyen(752)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Chän Chøc N¨ng Nµo",getn(tbSay),tbSay)
end
function manhdaychuyen(idmanh)
if ConsumeEquiproomItem(1,6,1,4471,-1)>0 then
tbAwardTemplet:GiveAwardByList({{szName = "M¶nh An Bang",tbProp={4,idmanh,1,1,0},nCount=1},}, "test", 1);
end
return 0
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
