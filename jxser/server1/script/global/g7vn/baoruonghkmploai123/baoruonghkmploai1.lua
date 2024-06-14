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

Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composeex.lua")
--------------------------------------------------------

function main()
dofile("script/global/g7vn/baoruonghkmploai123/baoruonghkmploai1.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4294,-1) < 1 then
--Talk(1, "", "Bug h�? Chim C�t!!!!")
--		return 1;
--end
local a = random(1,20)
if a==1 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,11},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Kh�ng Gi�ng Ma Gi�i �ao.")
end
if a==2 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,16},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y.")
end
if a==3 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,21},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> K� Nghi�p B�n L�i To�n Long th��ng.")
end
if a==4 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,76},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Thi�n Quang Hoa V� M�n Thi�n.")
end
if a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,60},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> U Lung M�c Th� Nhuy�n L� .")
end
if a==6 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,31},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Gian � Thi�n Ki�m.")
end
if a==7 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,39},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Ma T�y T��ng Ng�c Kh�u .")
end
if a==8 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,94},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��ng C�u Kh�ng Long H� Uy�n.")
end
if a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,96},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��ch Kh�i L�c Ng�c Tr��ng.")
end
if a==10 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,91},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��ng C�u Phi Long ��u ho�n.")
end
if a==11 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,101},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma S�t Qu� C�c U Minh Th��ng.")
end
if a==12 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,111},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma Th� Li�t Di�m Qu�n Mi�n.")
end
if a==13 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,116},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�ng Nh�c Th�i C�c Ki�m.")
end
if a==14 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,119},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�ng Nh�c V� C�c Huy�n Ng�c B�i.")
end
if a==15 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,126},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> S��ng Tinh Thi�n Ni�n H�n Thi�t.")
end
if a==16 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6272},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��c C� Th�n Long C�u Ki�m.")
end
if a==17 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6287},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> D��ng Quan B�ch Hoa T�nh Ng�c B�i.")
end
if a==18 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6284},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> D��ng Quan Thi�n Ng�c Ch� C�m.")
end
if a==19 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6290},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph� V�n Phong V� Ki�m.")
end
if a==20 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6293},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph� V�n S��ng Tuy�t Ho�ng B�i.")
end

--ConsumeEquiproomItem(1, 6,1, 4294,-1)
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=red>%s<color=green> t� b�o r��ng HKMP lo�i 1", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t �� nh�n ���c:"..strItemName.." t� b�o r��ng HKMP lo�i 1\n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

