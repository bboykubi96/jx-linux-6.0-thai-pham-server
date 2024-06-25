
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
Say("H�nh trang kh�ng �� 5 � tr�ng.")
end
local a=random(1,4)
if a==1 then
tbAwardTemplet:GiveAwardByList({{szName="Nh�n Kim Quang 1 Ng�y",tbProp={0,3771},nCount=1,nQuality=1,nExpiredTime=1*24*60},}, "test", 1);
Msg2SubWorld("<color=green>Ch�c m�ng <color=cyan>"..GetName().."<color> �� nh�n ���c <color=yellow>Nh�n Kim Quang 1 Ng�y<color> t� <color=red> B�o R��ng Th�n B�.")
else
Say("Trong r��ng kh�ng c� g�! Ch�c b�n may m�n l�n sau!")
Msg2SubWorld("<color=green>��i hi�p <color=cyan>"..GetName().."<color> �� b� �n <color=yellow>C� L�a<color> t�  <color=red>B�o R��ng Th�n B�.")
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
