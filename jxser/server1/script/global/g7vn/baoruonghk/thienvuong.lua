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
dofile("script/global/g7vn/baoruonghk/thienvuong.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4288,-1) < 1 then
--Talk(1, "", "Bug h�? Chim C�t!!!!")
--		return 1;
--end
local a = random(1,27)
if a==1 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,16},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y.")
end
if a==2 or a==3 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,17},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> H�m Thi�n V� Th�n T��ng Kim Gi�p.")
end
if a==4 or a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,18},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> H�m Thi�n Uy V� Th�c y�u ��i.")
end
if a==6 or a==7 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,19},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> H�m Thi�n H� ��u Kh�n Th�c Uy�n.")
end
if a==8 or a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,20},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> H�m Thi�n Th�a Long Chi�n Ngoa.")
end
if a==10 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,21},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> K� Nghi�p B�n L�i To�n Long th��ng.")
end
if a==11 or a==12 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,22},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> K� Nghi�p Huy�n V� Ho�ng Kim Kh�i.")
end
if a==13 or a==14 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,23},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> K� Nghi�p B�ch H� V� Song kh�u.")
end
if a==15 or a==16 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,24},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> K� Nghi�p H�aV�n K� L�n Th�.")
end
if a==17 or a==18 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,25},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> K� Nghi�p Chu T��c L�ng V�n Ngoa.")
end
if a==19 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,26},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ng� Long L��ng Ng�n B�o �ao.")
end
if a==20 or a==21 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,27},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ng� Long Chi�n Th�n Phi Qu�i gi�p.")
end
if a==22 or a==23 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,28},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ng� Long Thi�n M�n Th�c Y�u ho�n.")
end
if a==24 or a==25 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,29},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ng� Long T�n Phong H� y�n.")
end
if a==26 or a==27 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,30},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ng� Long Tuy�t M�nh Ch� ho�n.")
end
--ConsumeEquiproomItem(1, 6,1, 4288,-1)

end


_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=red>%s<color=green> t� b�o r��ng HKMP Thi�n V��ng", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t �� nh�n ���c:"..strItemName.." t� b�o r��ng HKMP Thi�n V��ng\n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end



