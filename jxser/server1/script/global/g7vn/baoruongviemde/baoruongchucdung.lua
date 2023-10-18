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
--------------------------------------------------------

function main()
dofile("script/global/g7vn/baoruongviemde/baoruongchucdung.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
end
local chonao=random(1,3)
if chonao==1 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,random(159,163)},nQuality=1,nCount=1},}, "test", 1);
elseif chonao==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,random(186,188)},nQuality=1,nCount=1},}, "test", 1);
else
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,random(191,192)},nQuality=1,nCount=1},}, "test", 1);
end


--ConsumeEquiproomItem(1, 6,1, 4438,-1)
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=red>%s<color=green> t� B�o r��ng Hi�p C�t-Nhu T�nh-��nh Qu�c", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghiepcotnhutinh.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t �� nh�n ���c:"..strItemName.." t� b�o r��ng Hi�p c�t-Nhu T�nh-��nh Qu�c\n");
end



