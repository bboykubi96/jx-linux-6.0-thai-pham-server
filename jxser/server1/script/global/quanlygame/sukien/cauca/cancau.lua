--Event cau ca bang hoi
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\quanlygame\\sukien\\cauca\\head.lua")
IncludeLib("ITEM")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
MAXCOUNT = 5

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=yellow> b�t ���c<enter><color=cyan><%s><color=green><enter><color=yellow>< khi c�u c� t�i D��ng Ch�u (207/197) ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local _GetFruit = function(nItemIndex)
	batdaucau()
	DemSoLan(nItemIndex)
end
local _OnBreak = function()
	Msg2Player("C�u c� th�t b�i")
end
function main(nItemIdx)
		local nHour = tonumber(GetLocalDate("%H%M"))
		if( nHour >= 2030 and nHour < 2100) then
else
		Say("Th�i gian c�u c� t� 20h30 t�i 21h00...",0);
		return 1;
end
	local G,D,P,nLevel = GetItemProp(nItemIdx);
	if (G ~= 6) then
		return 1;
	end

	w,x,y=GetWorldPos()
	if w ~= 80 then
		CreateTaskSay({"B�n h�y ��n <color=red>D��ng Ch�u (207/197)<color> �� b�t c�","��a ta ��n ��./MoveMap","Tho�t./Cancel",});
		return 1;
	end

	PosId = GetNearstPos(x*32,y*32, GccPos);
	if (PosId == 0) then 
		Say("B�n ��ng c�ch khu v�c qu� xa <color=red>D��ng Ch�u (207/197)<color>, kh�ng th� s� d�ng! ",0)
		return 1
	end;	

	if CalcFreeItemCellCount() < 6 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 6 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
	if P == 4349 then ----can cau
		tbProgressBar:OpenByConfig(21, %_GetFruit,{nItemIdx}, %_OnBreak)
	end
	return 1
end

function DemSoLan(nItemIdx)
	local n_param = tonumber(GetItemParam(nItemIdx,1)) + 1
	local itemname = "<color=yellow>"..GetItemName(nItemIdx).."<color>"
	SetSpecItemParam(nItemIdx,1,n_param)
	SyncItem(nItemIdx)
	if (n_param >= MAXCOUNT) then
		RemoveItemByIndex(nItemIdx)
	else
		Msg2Player(""..itemname.." c�n s� d�ng "..(MAXCOUNT - n_param).." l�n")
	end
end
function MoveMap()
	NewWorld(80,1657,3140)
	Msg2Player("B�n �� ��n khu v�c c�u c�!")
end
function GetDesc(nItemIdx)
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItemIdx, 1 ))
	szDesc = szDesc..format("\nC� th� s� d�ng <color=yellow>%d<color> l�n", (MAXCOUNT - n_param));
	return szDesc;
end



function batdaucau()
local s = random(1,7)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="C� L�c",tbProp={6,1,4350,1,1},nCount=1  ,},}, "test", 1);
Msg2SubWorld("��i hi�p <color=yellow>"..GetName().."<color=yellow> c�u ���c c� L�c <enter><color=yellow> khi c�u c� t�i D��ng Ch�u (207/197)")
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="C� R�",tbProp={6,1,4351,1,1},nCount=1  ,},}, "test", 1);
Msg2SubWorld("��i hi�p <color=yellow>"..GetName().."<color=yellow> c�u ���c c� R� <enter><color=yellow> khi c�u c� t�i D��ng Ch�u (207/197)")
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="C� Tr�",tbProp={6,1,4352,1,1},nCount=1  ,},}, "test", 1);
Msg2SubWorld("��i hi�p <color=yellow>"..GetName().."<color=yellow> c�u ���c c� Tr� <enter><color=yellow> khi c�u c� t�i D��ng Ch�u (207/197)")
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="C� B�ng",tbProp={6,1,4353,1,1},nCount=1  ,},}, "test", 1);
Msg2SubWorld("��i hi�p <color=yellow>"..GetName().."<color=yellow> c�u ���c c� B�ng <enter><color=yellow> khi c�u c� t�i D��ng Ch�u (207/197)")
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName="L��ng",tbProp={6,1,4354,1,1},nCount=1  ,},}, "test", 1);
Msg2SubWorld("��i hi�p <color=yellow>"..GetName().."<color=yellow> c�u ���c c� L��ng <enter><color=yellow> khi c�u c� t�i D��ng Ch�u (207/197)")
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="T�m C�ng Xanh",tbProp={6,1,4355,1,1},nCount=1  ,},}, "test", 1);
Msg2SubWorld("��i hi�p <color=yellow>"..GetName().."<color=yellow> c�u ���c c� T�m C�ng Xanh <enter><color=yellow> khi c�u c� t�i D��ng Ch�u (207/197)")
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="Cua C�ng K�nh",tbProp={6,1,4356,1,1},nCount=1  ,},}, "test", 1);
Msg2SubWorld("��i hi�p <color=yellow>"..GetName().."<color=yellow> c�u ���c c� Cua C�ng K�nh <enter><color=yellow> khi c�u c� t�i D��ng Ch�u (207/197)")
end;
end