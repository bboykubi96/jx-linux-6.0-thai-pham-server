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
dofile("script/global/g7vn/baoruonghkloai123/baoruonghkmptranbang.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4538,-1) < 1 then
--Talk(1, "", "Bug h�? Chim C�t!!!!")
--		return 1;
--end
local a = random(1,26)
if a==1 then																						--nExpiredTime=60*24*7 (th�i h�n gian 7)
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,686},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> M�ng Long T� Kim B�t Nh� Gi�i.")
end
if a==2 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,687},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�c Ma V� L��ng Kim Cang Uy�n.")
end
if a==3 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,688},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Kh�ng ��t Ma T�ng H�i.")
end
if a==4 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,689},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ng� Long T�n Phong Ph�t C�.")
end
if a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,690},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Gian Thanh Phong Nhuy�n K�ch.")
end
if a==6 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,691},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Y�m Thu Th�y L�u Quang ��i.")
end
if a==7 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,692},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Tr�n T�nh �nh L�u T� .")
end
if a==8 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,693},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u.")
end
if a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,694},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n.")
end
if a==10 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,695},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Minh Hoan Song Ho�n X� Kh�u.")
end
if a==11 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,696},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ch� Ph�c Tr�ng C�t Ng�c B�i.")
end
if a==12 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,697},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Thi�n Quang ��a H�nh Thi�n L� Ngoa.")
end
if a==13 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,698},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��a Ph�ch Phong H�n Th�c Y�u.")
end
if a==14 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,699},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��ng C�u Ng� Long Ng�c B�i.")
end
if a==15 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,700},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma S�t C� H�a Li�u Thi�n Ho�n.")
end
if a==16 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,701},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma Ho�ng Dung Kim �o�n Nh�t Gi�i.")
end
if a==17 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,702},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma Th� L� Ma Ph� T�m ��i.")
end
if a==18 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,703},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�ng Nh�c V� Ng� Th�c ��i.")
end
if a==19 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,704},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> C�p Phong Th�y Ng�c Huy�n Ho�ng Uy�n.")
end
if a==20 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,705},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> S��ng Tinh L�u Tinh C�n Nguy�t Kh�u.")
end
if a==21 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,706},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�i Khung Linh Ng�c �n L�i Uy�n.")
end
if a==22 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,707},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Hoan Th�i Uy�n Ch�n V� Li�n.")
end
if a==23 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6277},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��c C� Long Ho�n Thi�n L� Ng�a.")
end
if a==24 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6283},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�ch Th�ch B�ch H�ng Qu�n.")
end
if a==25 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6289},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> D��ng Quan Ti�u C�m Hoa Th�c ��i.")
end
if a==26 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6295},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph� V�n Di Cung Huy�n Ng�c Uy�n.")
end

--ConsumeEquiproomItem(1, 6,1, 4373,-1)
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green> t� b�o r��ng Tr�n Bang Chi B�o ", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t �� nh�n ���c:"..strItemName.." t� b�o r��ng Tr�n Bang Chi B�o \n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end




