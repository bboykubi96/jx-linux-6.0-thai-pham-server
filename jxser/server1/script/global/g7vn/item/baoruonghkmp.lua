
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");

function MoRuongOk()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
local msg = format("<color=white>��ti hi�p <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi M� R��ng D� T�u ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
		logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� [%s ]    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetItemName(nItemIndex)))

end
local s = random(1,81)

if s==1 then
										tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Huy�n Ti Ph�t ��i",tbProp={0,3},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end;

if s==2 then
										tbAwardTemplet:GiveAwardByList({{szName="M�ng Long ��t Ma T�ng h�i",tbProp={0,5},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end;
if s==3 then
										tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma Huy�n Ho�ng C� Sa",tbProp={0,7},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end;
if s==4 then
										tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma � Kim Nhuy�n �i�u",tbProp={0,8},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==5 then
										tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma Ph�t T�m Nhuy�n Kh�u",tbProp={0,9},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==6 then
										tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng T� Kim C� Sa",tbProp={0,12},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==7 then
										tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng H� ph�p Y�u ��i",tbProp={0,13},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==8 then
										tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng Gi�i Lu�t Ph�p gi�i",tbProp={0,15},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==9 then
										tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n V� Th�n T��ng Kim Gi�p",tbProp={0,17},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==10 then
										tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n Uy V� Th�c y�u ��i",tbProp={0,18},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==11 then
										tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n H� ��u Kh�n Th�c Uy�n",tbProp={0,19},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==12 then
										tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n Th�a Long Chi�n Ngoa",tbProp={0,20},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==13 then
										tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",tbProp={0,22},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==14 then
										tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p B�ch H� V� Song kh�u",tbProp={0,23},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==15 then
										tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p H�aV�n K� L�n Th�",tbProp={0,24},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==16 then
										tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p Chu T��c L�ng V�n Ngoa",tbProp={0,25},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==17 then
										tbAwardTemplet:GiveAwardByList({{szName="Ng� Long Chi�n Th�n Phi Qu�i gi�p",tbProp={0,27},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==18 then
										tbAwardTemplet:GiveAwardByList({{szName="Ng� Long Thi�n M�n Th�c Y�u ho�n",tbProp={0,28},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==19 then
										tbAwardTemplet:GiveAwardByList({{szName="Ng� Long Tuy�t M�nh Ch� ho�n",tbProp={0,30},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==20 then
										tbAwardTemplet:GiveAwardByList({{szName="V� Gian Thanh Phong Truy Y",tbProp={0,32},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

if s==21 then
										tbAwardTemplet:GiveAwardByList({{szName="V� Gian Ph�t V�n Ti ��i",tbProp={0,33},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==22 then
										tbAwardTemplet:GiveAwardByList({{szName="V� Gian B�ch Ng�c B�n Ch�",tbProp={0,35},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==23 then
										tbAwardTemplet:GiveAwardByList({{szName="V� Ma Ma Ni qu�n",tbProp={0,36},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==24 then
										tbAwardTemplet:GiveAwardByList({{szName="V� Ma T� Kh�m C� Sa",tbProp={0,37},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==25 then
										tbAwardTemplet:GiveAwardByList({{szName="V� Ma B�ng Tinh Ch� Ho�n",tbProp={0,38},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

if s==26 then
										tbAwardTemplet:GiveAwardByList({{szName="V� Tr�n Ng�c N� T� T�m qu�n",tbProp={0,41},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==27 then
										tbAwardTemplet:GiveAwardByList({{szName="V� Tr�n T� Bi Ng�c Ban Ch� ",tbProp={0,43},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==28 then
										tbAwardTemplet:GiveAwardByList({{szName="V� Tr�n Ph�t Quang Ch� Ho�n",tbProp={0,45},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==29 then
										tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Tu� T�m Khinh Sa Y",tbProp={0,47},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==30 then
										tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",tbProp={0,48},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==31 then
										tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Th�y Ng�c Ch� Ho�n",tbProp={0,50},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==32 then
										tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i Ho�n Ch�u V� Li�n",tbProp={0,52},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==33 then
										tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i H�ng L�ng Ba",tbProp={0,54},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==34 then
										tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i Khi�n T� Ch� ho�n",tbProp={0,55},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==35 then
										tbAwardTemplet:GiveAwardByList({{szName="U Lung Thanh Ng� Tri�n y�u",tbProp={0,58},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==36 then
										tbAwardTemplet:GiveAwardByList({{szName="U Lung Ng�n Th�m H� Uy�n",tbProp={0,59},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==37 then
										tbAwardTemplet:GiveAwardByList({{szName="Minh �o ��c Y�t Ch� Ho�n",tbProp={0,63},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==38 then
										tbAwardTemplet:GiveAwardByList({{szName="Minh �o H� C�t H� uy�n",tbProp={0,64},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==39 then
										tbAwardTemplet:GiveAwardByList({{szName="Minh �o Song Ho�n X� H�i",tbProp={0,65},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==40 then
										tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c Ph� gi�p ��u ho�n",tbProp={0,66},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==41 then
										tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c U �o Ch� Ho�n",tbProp={0,68},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==42 then
										tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c B�ng H�a Th�c C�t Ngoa",tbProp={0,70},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==43 then
										tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n T�m Ti�n Y�u Kh�u",tbProp={0,73},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==44 then
										tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n Huy�n Thi�n B�ng H�a B�i",tbProp={0,74},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==45 then
										tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang ��nh T�m Ng�ng Th�n Ph�",tbProp={0,77},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==46 then
										tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang S�m La Th�c ��i",tbProp={0,78},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==47 then
										tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang KimTi�n Li�n Ho�n Gi�p",tbProp={0,82},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==48 then
										tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang H�n Gi�o Y�u Th�c",tbProp={0,83},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==49 then
										tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang Huy�n Thi�t T��ng Ng�c B�i",tbProp={0,84},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==50 then
										tbAwardTemplet:GiveAwardByList({{szName="��a Ph�ch T�ch L�ch L�i H�a Gi�i",tbProp={0,88},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==51 then
										tbAwardTemplet:GiveAwardByList({{szName="��a Ph�ch Kh�u T�m tr�c",tbProp={0,89},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==52 then
										tbAwardTemplet:GiveAwardByList({{szName="��a Ph�ch ��a H�nh Thi�n L� Ngoa",tbProp={0,90},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==53 then
										tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Gi�ng Long C�i Y",tbProp={0,92},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==54 then
										tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ti�m Long Y�u ��i",tbProp={0,93},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==55 then
										tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ki�n Long Ban Ch�",tbProp={0,95},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==56 then
										tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i C�u ��i C�i Y",tbProp={0,97},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==57 then
										tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i C�u T�ch B� H� uy�n",tbProp={0,99},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==58 then
										tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i Th�o Gian Th�ch gi�i",tbProp={0,100},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==59 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma S�t T�n D��ng �nh Huy�t Gi�p",tbProp={0,102},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==60 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma S�t C� H�a Li�u Thi�n uy�n",tbProp={0,104},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==61 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma S�t V�n Long Th� Ch�u gi�i",tbProp={0,105},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==62 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng Kim Gi�p Kh�i",tbProp={0,106},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==63 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng Kh� C�c Th�c y�u ��i",tbProp={0,108},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==64 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng Huy�t Y Th� Tr�cMa Ho�ng Huy�t Y Th� Tr�c",tbProp={0,109},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==65 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng ��ng ��p NgoaMa Ho�ng ��ng ��p Ngoa",tbProp={0,110},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==66 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma Th� L� Ma Ph� T�m Li�n",tbProp={0,112},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==67 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma Th� Nghi�p H�a U Minh Gi�i",tbProp={0,113},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==68 then
										tbAwardTemplet:GiveAwardByList({{szName="Ma Th� Huy�t Ng�c Th�t S�t B�i",tbProp={0,114},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==69 then
										tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c V� Ng� ��o b�o",tbProp={0,117},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==70 then
										tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c N� L�i Gi�i",tbProp={0,118},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==71 then
										tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i",tbProp={0,120},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==72 then
										tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Tam Thanh Ph�",tbProp={0,122},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==73 then
										tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Huy�n Ti Tam �o�n c�m",tbProp={0,123},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==74 then
										tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Thanh T�ng Ph�p gi�i",tbProp={0,125},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==75 then
										tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Ng�o S��ng ��o b�o",tbProp={0,127},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==76 then
										tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Thanh Phong L� ��i",tbProp={0,128},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==77 then
										tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Phong B�o ch� ho�n",tbProp={0,130},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==78 then
										tbAwardTemplet:GiveAwardByList({{szName="L�i Khung Phong L�i Thanh C�m ��i",tbProp={0,133},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==79 then
										tbAwardTemplet:GiveAwardByList({{szName="L�i Khung C�u Thi�n D�n L�i gi�i",tbProp={0,135},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==80 then
										tbAwardTemplet:GiveAwardByList({{szName="V� �o Ki B�n ph� ch�",tbProp={0,137},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
if s==81 then
										tbAwardTemplet:GiveAwardByList({{szName="V� �o Th�c T�m ch� ho�n",tbProp={0,138},nCount=1,nQuality=1,CallBack= _Message,},}, "test", 1);
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n ���c trang b� xxxxxxxxxxxx    ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
end




function main(nItemIndex)
dofile("script/global/g7vn/baoruonghanche/baoruonghkmp.lua")


	if ConsumeEquiproomItem(1, 6,1, 4414,-1)>0 then
		MoRuongOk()
		local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white>m� th�nh c�ng r��ng ho�ng kim.<color=pink>");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	--logplayer("dulieu/moruonghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng g��ng 4631",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	return 0;
	end
end


function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end
