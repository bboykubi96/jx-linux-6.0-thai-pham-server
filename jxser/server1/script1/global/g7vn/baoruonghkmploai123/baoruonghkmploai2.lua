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
dofile("script/global/g7vn/baoruonghkmploai123/baoruonghkmploai2.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4294,-1) < 1 then
--Talk(1, "", "Bug h�? Chim C�t!!!!")
--		return 1;
--end
local a = random(1,62)
if a==1 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�c Ma T� Kim C�n.")
end
if a==2 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,1},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> M�ng Long Ch�nh H�ng T�ng M�o.")
end
if a==3 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,14},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Kh�ng Nhuy�n B� H� Uy�n.")
end
if a==4 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,2},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> M�ng Long Kim Ti Ch�nh H�ng C� Sa.")
end
if a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,10},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�c Ma Ph� �� T�ng h�i.")
end
if a==6 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,15},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Kh�ng Gi�i Lu�t Ph�p gi�i.")
end
if a==7 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,13},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Kh�ng H� ph�p Y�u ��i.")
end
if a==8 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,26},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ng� Long L��ng Ng�n B�o �ao.")
end
if a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,18},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> H�m Thi�n Uy V� Th�c y�u ��i.")
end
if a==10 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,23},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> K� Nghi�p B�ch H� V� Song kh�u.")
end
if a==11 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,29},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ng� Long T�n Phong H� Uy�n.")
end
if a==12 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,81},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> S�m Hoang Phi Tinh �o�t H�n.")
end
if a==13 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,71},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> B�ng H�n ��n Ch� Phi �ao.")
end
if a==14 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,79},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Thi�n Quang Song B�o H�n Thi�t Tr�c.")
end
if a==15 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,85},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> S�m Hoang Tinh V�n Phi L� .")
end
if a==16 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,72},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> B�ng H�n Huy�n Y Th�c Gi�p .")
end
if a==17 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,75},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> B�ng H�n Nguy�t �nh Ngoa .")
end
if a==18 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,86},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n .")
end
if a==19 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,78},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Thi�n Quang S�m La Th�c ��i .")
end
if a==20 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,56},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> U Lung Kim X� Ph�t ��i .")
end
if a==21 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,61},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Minh �o T� S�t ��c Nh�n .")
end
if a==22 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,57},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> U Lung X�ch Y�t M�t trang .")
end
if a==23 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,62},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Minh �o U ��c �m Y .")
end
if a==24 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,65},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Minh �o Song Ho�n X� H�i .")
end
if a==25 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,66},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ch� Ph��c Ph� gi�p ��u ho�n .")
end
if a==26 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,34},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Gian C�m V�n H� Uy�n .")
end
if a==27 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,40},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Ma H�ng Truy Nhuy�n Th�p h�i .")
end
if a==28 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,44},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Tr�n Ph�t T�m T� H�u Y�u Ph�i .")
end
if a==29 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,34},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Gian C�m V�n H� Uy�n .")
end
if a==30 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,33},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Gian Ph�t V�n Ti ��i .")
end
if a==31 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,34},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Gian C�m V�n H� Uy�n .")
end
if a==32 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,45},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Tr�n Ph�t Quang Ch� Ho�n .")
end
if a==33 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,46},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Ho�ng Ph�ng Nghi �ao .")
end
if a==34 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,51},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> B�ch H�i Uy�n ��ng Li�n Ho�n �ao .")
end
if a==35 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,49},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Ho�ng B�ng Tung C�m uy�n.")
end
if a==36 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,53},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> B�ch H�i H�ng Linh Kim Ti ��i .")
end
if a==37 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,54},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> B�ch H�i H�ng L�ng Ba .")
end
if a==38 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,50},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Ho�ng Th�y Ng�c Ch� Ho�n .")
end
if a==39 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,55},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> B�ch H�i Khi�n T� Ch� ho�n .")
end
if a==40 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,98},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��ch Kh�i Tri�n M�ng y�u ��i.")
end
if a==41 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,104},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma S�t C� H�a Li�u Thi�n uy�n .")
end
if a==42 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,103},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma S�t X�ch K� T�a Y�u Kh�u .")
end
if a==43 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,115},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma Th� S�n H�i Phi H�ng L�  .")
end
if a==44 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,106},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma Ho�ng Kim Gi�p Kh�i  .")
end
if a==45 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,121},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> C�p Phong Ch�n V� Ki�m .")
end
if a==46 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,124},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> C�p Phong Th�y Ng�c Huy�n Ho�ng B�i.")
end
if a==47 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,120},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i.")
end
if a==48 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,125},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> C�p Phong Thanh T�ng Ph�p gi�i.")
end
if a==49 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,122},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> C�p Phong Tam Thanh Ph� .")
end
if a==50 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,131},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�i Khung H�n Tung B�ng B�ch quan .")
end
if a==51 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,134},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�i Khung Linh Ng�c U�n L�i .")
end
if a==52 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,129},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> S��ng Tinh Thi�n Tinh B�ng Tinh th� .")
end
if a==53 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,130},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> S��ng Tinh Phong B�o ch� ho�n .")
end
if a==54 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,135},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�i Khung C�u Thi�n D�n L�i gi�i.")
end
if a==55 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,138},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� �o Th�c T�m ch� ho�n.")
end
if a==56 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6278},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�ch Th�ch Thanh Long Tri�n Th�.")
end
if a==57 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6274},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��c C� B�ch H�ng Qu�n ��i.")
end
if a==58 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6275},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��c C� Long Huy�n H� Uy�n.")
end
if a==59 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6281},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�ch Th�ch Nh�t Thi�n Chi B�i.")
end
if a==60 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6288},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> D��ng Quan Hi�p T�nh Ho�ng gi�i.")
end
if a==61 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6291},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph� V�n L�u Tinh H� Th�n Ph� .")
end
if a==62 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6292},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph� V�n Ph�t Thi�n T�m ��i.")
end

--ConsumeEquiproomItem(1, 6,1, 4294,-1)
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=red>%s<color=green> t� b�o r��ng HKMP lo�i 2", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t �� nh�n ���c:"..strItemName.." t� b�o r��ng HKMP lo�i 2\n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

