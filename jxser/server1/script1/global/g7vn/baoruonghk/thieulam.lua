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
dofile("script/global/g7vn/baoruonghk/thieulam.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4287,-1) < 1 then
--Talk(1, "", "Bug h�? Chim C�t!!!!")
--		return 1;
--end
local a = random(1,26)
if a==1 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,1},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> M�ng Long Ch�nh H�ng T�ng M�o.")
end
if a==2 or a==3 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,2},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> M�ng Long Kim Ti Ch�nh H�ng C� Sa.")
end
if a==4 or a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,3},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red>M�ng Long Huy�n Ti Ph�t ��i.")
end
if a==6 or a==7 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,4},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> M�ng Long Ph�t Ph�p Huy�n B�i.")
end
if a==8 or a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,5},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> M�ng Long ��t Ma T�ng h�i.")
end
if a==10 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�c Ma T� Kim C�n.")
end
if a==11 or a==12 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,7},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�c Ma Huy�n Ho�ng C� Sa.")
end
if a==13 or a==14 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,8},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�c Ma � Kim Nhuy�n �i�u.")
end
if a==15 or a==16 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,9},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�c Ma Ph�t T�m Nhuy�n Kh�u.")
end
if a==17 or a==18 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,10},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�c Ma Ph� �� T�ng h�i.")
end
if a==19 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,11},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Kh�ng Gi�ng Ma Gi�i �ao.")
end
if a==20 or a==21 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,12},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Kh�ng T� Kim C� Sa.")
end
if a==22 or a==23 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,13},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Kh�ng H� ph�p Y�u ��i.")
end
if a==24 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,14},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Kh�ng Nhuy�n B� H� Uy�n.")
end
if a==25 or a==26 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,15},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Kh�ng Gi�i Lu�t Ph�p gi�i.")
end
--ConsumeEquiproomItem(1, 6,1, 4287,-1)
end


_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=red>%s<color=green> t� b�o r��ng HKMP Thi�u L�m", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t �� nh�n ���c:"..strItemName.." t� b�o r��ng HKMP Thi�u L�m\n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end



