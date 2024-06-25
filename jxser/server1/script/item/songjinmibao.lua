-- ���������Ʒ��������һ����Ʒ��
-- By: Wangjingjun(2011-02-17)

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� <color=yellow><T�ng Kim B� B�o><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end



nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main(nIndexItem)
dofile("script\item\songjinmibao.lua")
	if GetLevel() < 80 then
		Say("��ng c�p 80 tr� l�n m�i c� th� s� d�ng")
		return 1
	end

	local SLSD5LoaiBaoRuong = 20
	local nDate = tonumber(GetLocalDate("%m%d"))
	if ( GetTask(3912) ~= nDate ) then
		SetTask(3912, nDate)
		SetTask(3913, 0)
	end

	if ( GetTask(3913) >= SLSD5LoaiBaoRuong ) then
		Say("H�m nay ��i hi�p �� s� d�ng "..SLSD5LoaiBaoRuong.." b�o r��ng c�c lo�i, v� c�ng th�ng ti�n qu� nhanh d� g�y t�c d�ng ph�n ngh�ch, ng�y mai h�y ti�p t�c v�y.")
		return 1
	end

	----------------------------------------------------------------------------------------------------------------------------------------------
local b = random(1,30)
if b==5 then
	tbAwardTemplet:GiveAwardByList({{szName = "Hoi Thien",tbProp={6,1,2527,1,1},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
end;

local m = random(1,500)
if m==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�ch Ng�c",tbProp={6,1,2390,1,1},nCount=1,},}, "test", 1);
end;


local n = random(1,500)
if n==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "T� Ng�c",tbProp={6,1,2391,1,1},nCount=1,},}, "test", 1);
end;

local p = random(1,500)
if p==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Xuy�n Y Ph� Gi�p 2",tbProp={0,3989},nQuality=1,nCount=1,nExpiredTime=14*24*60},}, "test", 1);
end;

local q = random(1,500)
if q==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� H�nh �n 2 ",tbProp={0,3951},nQuality=1,nExpiredTime=14*24*60},}, "test", 1);
end;

local g = random(1,10)
if g==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ng�c",tbProp={6,1,4808,1,1},nCount=1,},}, "test", 1);
end;

local e = random(1,400)
if e==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngu Linh Kiem Dinh Phu",tbProp={6,1,3007,1,1},nCount=1,},}, "test", 1);
end;

local f = random(1,360)
if f==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Quy Nguyen Kiem Dinh Phu",tbProp={6,1,3008,1,1},nCount=1,},}, "test", 1);
end;

local h = random(1,20000)
if h==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Nh�t K� C�n Kh�n Ph�",tbProp={6,1,2126,1,1},nCount=1,},}, "test", 1);
end;

local a = random(1,5)
if a==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "T� Tinh Kho�ng Th�ch ",tbProp={6,1,4885,1,1},nCount=1,},}, "test", 1);
end;


local s = random(1,100)
if s==100 then
--tbAwardTemplet:GiveAwardByList({{nExp_tl = 10e6}}, "test", 1);
end;

tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e6}}, "test", 1);
SetTask(3913,GetTask(3913)+1)

	return 0
end
function Oncancel()end

function VnSJBoxNewAward(nItemIdx, strKeyType)
	local tbKey = tbSJ_Key_Require[strKeyType]
	local tbAward = tbSJNewAward[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if nt_getTask(747)< 10000 then
		Say("�i�m T?ch L?y >10.000 m�i c? th� m� ���c T�ng Kim B� B�o", 1, "��ng/no")
	return 1;
	end

	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c T�ng Kim B� B�o", 1, "��ng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 2741, -1) ~= 1 then
		Say("Kh�ng t�m th�y T�ng Kim B� B�o", 1, "��ng/no")
		return
	end
	tbAwardTemplet:Give(tbAward, 1, {"SongJin", "use songjingmibao"})	
	nt_setTask(747, floor(nt_getTask(747) - 10000));
	AddStatData("baoxiangxiaohao_kaisongjinmibao", 1)	
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> m� T�ng Kim B� B�o b�ng ch�a kh�a nh� � <color=yellow>nh�n ���c nhi�u ph�n th��ng")
	SetTask(3913, GetTask(3913) + 1)
end

function nt_getTask(nTaskID)
	return GetTask(nTaskID)
end

function nt_setTask(nTaskID, nTaskValue)
	SetTask(nTaskID, nTaskValue)
	SyncTaskValue(nTaskID) 
end