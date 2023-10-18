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
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composeex.lua")
function main()
dofile("script/global/g7vn/baoruonghk/vodang.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
end
if CalcEquiproomItemCount(6,1,4295,-1) < 1 then
Talk(1, "", "Bug h�? Chim C�t!!!!")
		return 1;
end
local a = random(1,14)
if a==1 or a==2 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,117},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�ng Nh�c V� Ng� ��o B�o.")
end
if a==3 or a==4 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,118},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�ng Nh�c N� L�i Gi�i.")
end
if a==5 or a==6 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,120},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i.")
end
if a==7 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,119},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�ng Nh�c V� C�c Huy�n Ng�c B�i.")
end
if a==8 or a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,123},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> C�p Phong Huy�n Ti Tam �o�n c�m.")
end
if a==10 or a==11 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,124},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> C�p Phong Th�y Ng�c Huy�n Ho�ng B�i.")
end
if a==12 or a==13 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,125},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> C�p Phong Thanh T�ng Ph�p gi�i.")
end
if a==14 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,122},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> C�p Phong Tam Thanh Ph� .")
end

ConsumeEquiproomItem(1, 6,1, 4295,-1)
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=red>%s<color=green> t� b�o r��ng HKMP V� �ang", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t �� nh�n ���c:"..strItemName.." t� b�o r��ng HKMP V� �ang\n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end




