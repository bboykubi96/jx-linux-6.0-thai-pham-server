
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
Say("H�nh trang kh�ng �� 5 � tr�ng.")
end
luachonmon()
return 1

end

function luachonmon()
local tbSay = 
{
"M�nh An Bang B�ng Tinh Th�ch H�ng Li�n/#daychuyenanbang()",
"M�nh An Bang C�c Hoa Th�ch Ch� Ho�n/#nhantrenanbang()",
"M�nh An Bang �i�n Ho�n Th�ch Ng�c B�i/#ngocboianbang()",
"M�nh An Bang Huy�t Th�ch Gi�i Ch�/#nhanduoianbang()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Ch�n Ch�c N�ng N�o",getn(tbSay),tbSay)
end
function nhanduoianbang()
local tbSay = 
{
"M�nh An Bang Huy�t Th�ch Gi�i Ch� (1)/#manhdaychuyen(765)",
"M�nh An Bang Huy�t Th�ch Gi�i Ch� (2)/#manhdaychuyen(766)",
"M�nh An Bang Huy�t Th�ch Gi�i Ch� (3)/#manhdaychuyen(767)",
"M�nh An Bang Huy�t Th�ch Gi�i Ch� (4)/#manhdaychuyen(768)",
"M�nh An Bang Huy�t Th�ch Gi�i Ch� (5)/#manhdaychuyen(769)",
"M�nh An Bang Huy�t Th�ch Gi�i Ch� (6)/#manhdaychuyen(770)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Ch�n Ch�c N�ng N�o",getn(tbSay),tbSay)
end
function ngocboianbang()
local tbSay = 
{
"M�nh An Bang �i�n Ho�n Th�ch Ng�c B�i (1)/#manhdaychuyen(759)",
"M�nh An Bang �i�n Ho�n Th�ch Ng�c B�i (2)/#manhdaychuyen(760)",
"M�nh An Bang �i�n Ho�n Th�ch Ng�c B�i (3)/#manhdaychuyen(761)",
"M�nh An Bang �i�n Ho�n Th�ch Ng�c B�i (4)/#manhdaychuyen(762)",
"M�nh An Bang �i�n Ho�n Th�ch Ng�c B�i (5)/#manhdaychuyen(763)",
"M�nh An Bang �i�n Ho�n Th�ch Ng�c B�i (6)/#manhdaychuyen(764)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Ch�n Ch�c N�ng N�o",getn(tbSay),tbSay)
end
function nhantrenanbang()
local tbSay = 
{
"M�nh An Bang C�c Hoa Th�ch Ch� Ho�n (1)/#manhdaychuyen(753)",
"M�nh An Bang C�c Hoa Th�ch Ch� Ho�n (2)/#manhdaychuyen(754)",
"M�nh An Bang C�c Hoa Th�ch Ch� Ho�n (3)/#manhdaychuyen(755)",
"M�nh An Bang C�c Hoa Th�ch Ch� Ho�n (4)/#manhdaychuyen(756)",
"M�nh An Bang C�c Hoa Th�ch Ch� Ho�n (5)/#manhdaychuyen(757)",
"M�nh An Bang C�c Hoa Th�ch Ch� Ho�n (6)/#manhdaychuyen(758)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Ch�n Ch�c N�ng N�o",getn(tbSay),tbSay)
end
function daychuyenanbang()
local tbSay = 
{
"M�nh An Bang B�ng Tinh Th�ch H�ng Li�n (1)/#manhdaychuyen(747)",
"M�nh An Bang B�ng Tinh Th�ch H�ng Li�n (2)/#manhdaychuyen(748)",
"M�nh An Bang B�ng Tinh Th�ch H�ng Li�n (3)/#manhdaychuyen(749)",
"M�nh An Bang B�ng Tinh Th�ch H�ng Li�n (4)/#manhdaychuyen(750)",
"M�nh An Bang B�ng Tinh Th�ch H�ng Li�n (5)/#manhdaychuyen(751)",
"M�nh An Bang B�ng Tinh Th�ch H�ng Li�n (6)/#manhdaychuyen(752)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Ch�n Ch�c N�ng N�o",getn(tbSay),tbSay)
end
function manhdaychuyen(idmanh)
if ConsumeEquiproomItem(1,6,1,4471,-1)>0 then
tbAwardTemplet:GiveAwardByList({{szName = "M�nh An Bang",tbProp={4,idmanh,1,1,0},nCount=1},}, "test", 1);
end
return 0
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
