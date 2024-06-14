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
dofile("script/global/g7vn/baoruonghkmploai123/baoruonghkmploai3.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
	end
--if CalcEquiproomItemCount(6,1,4294,-1) < 1 then
--Talk(1, "", "Bug h�? Chim C�t!!!!")
--		return 1;
--end
local a = random(1,83)
if a==1 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,4},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> M�ng Long Ph�t Ph�p Huy�n B�i.")
end
if a==2 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,9},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�c Ma Ph�t T�m Nhuy�n Kh�u.")
end
if a==3 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,12},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Kh�ng T� Kim C� Sa.")
end
if a==4 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,3},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
--Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> M�ng Long Huy�n Ti Ph�t ��i.")
end
if a==5 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,5},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> M�ng Long ��t Ma T�ng h�i.")
end
if a==6 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,7},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�c Ma Huy�n Ho�ng C� Sa.")
end
if a==7 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,8},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�c Ma � Kim Nhuy�n �i�u.")
end
if a==8 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,19},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> H�m Thi�n H� ��u Kh�n Th�c Uy�n.")
end
if a==9 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,24},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> K� Nghi�p H�aV�n K� L�n Th� .")
end
if a==10 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,30},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ng� Long Tuy�t M�nh Ch� ho�n .")
end
if a==11 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,17},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> H�m Thi�n V� Th�n T��ng Kim Gi�p .")
end
if a==12 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,20},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> H�m Thi�n Th�a Long Chi�n Ngoa .")
end
if a==13 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,22},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> K� Nghi�p Huy�n V� Ho�ng Kim Kh�i .")
end
if a==14 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,25},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> K� Nghi�p Chu T��c L�ng V�n Ngoa .")
end
if a==15 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,27},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ng� Long Chi�n Th�n Phi Qu�i gi�p .")
end
if a==16 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,28},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ng� Long Thi�n M�n Th�c Y�u ho�n .")
end
if a==17 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,80},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n .")
end
if a==18 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,84},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> S�m Hoang Huy�n Thi�t T��ng Ng�c B�i .")
end
if a==19 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,74},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> B�ng H�n Huy�n Thi�n B�ng H�a B�i .")
end
if a==20 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,88},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��a Ph�ch T�ch L�ch L�i H�a Gi�i .")
end
if a==21 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,77},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Thi�n Quang ��nh T�m Ng�ng Th�n Ph�  .")
end
if a==22 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,82},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> S�m Hoang Kim Ti�n Li�n Ho�n Gi�p  .")
end
if a==23 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,83},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> S�m Hoang H�n Gi�o Y�u Th�c  .")
end
if a==24 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,73},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> B�ng H�n T�m Ti�n Y�u Kh�u .")
end
if a==25 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,89},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��a Ph�ch Kh�u T�m tr�c .")
end
if a==26 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,87},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��a Ph�ch H�c Di�m Xung Thi�n Li�n.")
end
if a==27 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,90},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��a Ph�ch ��a H�nh Thi�n L� Ngoa.")
end
if a==28 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,59},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> U Lung Ng�n Th�m H� Uy�n.")
end
if a==29 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,63},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Minh �o ��c Y�t Ch� Ho�n.")
end
if a==30 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,68},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ch� Ph��c U �o Ch� Ho�n .")
end
if a==31 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,58},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> U Lung Thanh Ng� Tri�n y�u .")
end
if a==32 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,64},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Minh �o H� C�t H� uy�n .")
end
if a==33 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,67},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ch� Ph��c Di�t L�i C�nh Ph� .")
end
if a==34 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,69},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ch� Ph��c Xuy�n T�m ��c Uy�n .")
end
if a==35 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,70},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> CCh� Ph��c B�ng H�a Th�c C�t Ngoa .")
end
if a==36 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,35},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Gian B�ch Ng�c B�n Ch�  .")
end
if a==37 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,38},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Ma B�ng Tinh Ch� Ho�n .")
end
if a==38 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,35},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Gian B�ch Ng�c B�n Ch�  .")
end
if a==39 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,32},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Gian Thanh Phong Truy Y .")
end
if a==40 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,36},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Ma Ma Ni qu�n .")
end
if a==41 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,37},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Ma T� Kh�m C� Sa .")
end
if a==42 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,41},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Tr�n Ng�c N� T� T�m qu�n .")
end
if a==43 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,42},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Tr�n Thanh T�m H��ng Thi�n Ch�u .")
end
if a==44 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,41},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� Tr�n Ng�c N� T� T�m qu�n .")
end
if a==45 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,50},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Ho�ng Th�y Ng�c Ch� Ho�n .")
end
if a==46 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,55},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> B�ch H�i Khi�n T� Ch� ho�n .")
end
if a==47 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,49},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Ho�ng Tu� T�m Khinh Sa Y .")
end
if a==48 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,48},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i .")
end
if a==49 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,53},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> B�ch H�i Ho�n Ch�u V� Li�n .")
end
if a==50 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,95},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��ng C�u Ki�n Long Ban Ch�  .")
end
if a==51 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,92},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��ng C�u Gi�ng Long C�i Y  .")
end
if a==52 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,100},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��ch Kh�i Th�o Gian Th�ch gi�i  .")
end
if a==53 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,93},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��ng C�u Ti�m Long Y�u ��i .")
end
if a==54 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,97},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��ch Kh�i C�u ��i C�i Y .")
end
if a==55 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,99},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��ch Kh�i C�u T�ch B� H� uy�n .")
end
if a==56 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,105},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma S�t V�n Long Th� Ch�u gi�i .")
end
if a==57 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,113},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma Th� Nghi�p H�a U Minh Gi�i .")
end
if a==58 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,109},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma Ho�ng Huy�t Y Th� Tr�c .")
end
if a==59 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,102},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma S�t T�n D��ng �nh Huy�t Gi�p .")
end
if a==60 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,114},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma Th� Huy�t Ng�c Th�t S�t B�i .")
end
if a==61 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,112},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma Th� L� Ma Ph� T�m Li�n .")
end
if a==62 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,108},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma Ho�ng Kh� C�c Th�c y�u ��i .")
end
if a==63 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,110},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma Ho�ng ��ng ��p Ngoa .")
end
if a==64 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,107},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ma Ho�ng �n Xu�t H� H�ng Khuy�n .")
end
if a==65 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,123},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> C�p Phong Huy�n Ti Tam �o�n c�m.")
end
if a==66 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,118},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�ng Nh�c N� L�i Gi�i.")
end
if a==67 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,117},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�ng Nh�c V� Ng� ��o b�o .")
end
if a==68 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,132},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�i Khung Thi�n ��a H� ph�  .")
end
if a==69 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,133},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> L�i Khung Phong L�i Thanh C�m ��i.")
end
if a==70 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,127},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> S��ng Tinh Ng�o S��ng ��o b�o.")
end
if a==71 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,128},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> S��ng Tinh Thanh Phong L� ��i.")
end
if a==72 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,136},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� �o B�c Minh ��o qu�n.")
end
if a==73 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,137},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� �o Ki B�n ph� ch�  .")
end
if a==74 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,139},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� �o Thanh �nh Huy�n Ng�c B�i .")
end
if a==75 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,140},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> V� �o Tung Phong Tuy�t �nh ngoa.")
end
if a==76 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6273},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��c C� T�ng Quy�t V� Gi�p.")
end
if a==77 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6276},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> ��c C� Nhuy�n Long Ph�t Gi�i.")
end
if a==78 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6279},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�ch Th�ch Long Nhi�u Th�n Ph�.")
end
if a==79 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6280},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�ch Th�ch Ma V�n Kim Ti ��i.")
end
if a==80 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6282},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph�ch Th�ch Th�n Quang Ch� Ho�n.")
end
if a==81 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6285},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> D��ng Quan L�c B�nh Sa Y.")
end
if a==82 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6286},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> D��ng Quan T�y Kh�c Gi�i Ch�.")
end
if a==83 then
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6294},nQuality=1,nCount=1,CallBack=_Message},}, "test", 1);
----Msg2SubWorld("<color=green>Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red> Ph� V�n Ch�ch Tr� Th��ng gi�i.")
end


--ConsumeEquiproomItem(1, 6,1, 4294,-1)
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=red>%s<color=green> t� b�o r��ng HKMP lo�i 3", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t �� nh�n ���c:"..strItemName.." t� b�o r��ng HKMP lo�i 3\n");
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

