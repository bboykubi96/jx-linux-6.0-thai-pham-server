---------------------------------***Script*By Heart*Doldly***-------------------------------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\task\\system\\task_string.lua")
-----------------------------------------------------
KyNang90 = 2462
------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "<bclr=blue>N� Hi�p<bclr>";
	else
		return "<bclr=blue>��i Hi�p<bclr>";
	end
end
---------------------------------------------------------
function main()
local n_fac = GetLastFactionNumber(); 
	if GetLevel() < 80 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a �� C�p 80 Kh�ng Th� S� D�ng V�t Ph�m N�y")
		return 1;
	end
----------------------------------------------------------------------------------------------------------------
if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",4,
		"��t Ma �� Giang/ThieuLamQuyen",
		"Ho�nh T�o Thi�n Qu�n/ThieuLamCon",
		"V� T��ng Tr�m/ThieuLamDao",
		"Th�i/No") return 1;
----------------------------------------------------------------------------------------------------
elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",4,
		"Truy Phong Quy�t/ThienVuongChuy",
		"Truy Tinh Tr�c Nguy�t/ThienVuongThuong",
		"Ph� Thi�n Tr�m/ThienVuongDao",
		"Th�i/No") return 1;
----------------------------------------------------------------------------------------------------------
elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",5,
		"Nhi�p H�n Lo�n T�m/DuongMonPhiDao",
		"B�o V� L� Hoa/DuongMonNo",
		"C�u Cung Phi Tinh/DuongMonTieu",
--		"Lo�n Ho�n K�ch/DuongMonBay",
		"Th�i/No") return 1;
----------------------------------------------------------------------------------
elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",4,
		"�m Phong Th�c C�t/NguDocChuong",
		"Huy�n �m Tr�m/NguDocDao",
		"�o�n C�n H� C�t/NguDocBua",
		"Th�i/No") return 1;
---------------------------------------------------------------------------------
elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",4,
		"Phong S��ng To�i �nh/NgaMyChuong",
		"Tam Nga T� Tuy�t/NgaMyKiem",
		"Ph� �� Ch�ng Sinh/NgaMyBuff",
		"Th�i/No") return 1;
----------------------------------------------------------------------------------
elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",3,
		"B�ng T�m Ti�n T�/ThuyYenSongDao",
		"B�ng Tung V� �nh/ThuyYenDao",
		"Th�i/No") return 1;
----------------------------------------------------------------------------------------
elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",3,
		"Phi Long T�i Thi�n/CaiBangRong",
		"Thi�n H� V� C�u/CaiBangBong",
		"Th�i/No") return 1;
-------------------------------------------------------------------------------------------
elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",2,
		"Thi�n Ngo�i L�u Tinh/ThienNhanDao",
	--	"V�n Long K�ch/ThienNhanKich",
		"Nhi�p H�n Lo�n T�m/ThienNhanBua",
		"Th�i/No") return 1;
---------------------------------------------------------------------------------------
elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",3,
		"Thi�n ��a V� C�c/VoDangQuyen",
		"Nh�n Ki�m H�p Nh�t/VoDangKiem",
		"Th�i/No") return 1;
--------------------------------------------------------------------------------------
elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",4,
		"L�i ��ng C�u Thi�n/ConLonKiem",
		"Ng�o Tuy�t Ti�u Phong/ConLonDao",
		"T�y Ti�n T� C�t/ConLonBua",
		"Th�i/No") return 1;
-------------------------------------------------------------------------------------------------------
elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",3,
	--	"Hoa S�n Ki�m/HoaSonKiem",
	--	"Hoa S�n Kh�/HoaSonKhi",
		"Th�i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� Nghi�n C�u M�i M� Kh�ng L�nh H�i ���c G�") return 1
	end
end
--------------------------------------------------------Ph�i Thi�u L�m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen()
	if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(318) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(318,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng ��t Ma �� Giang")
end

function ThieuLamCon()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(319) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(319,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Ho�nh T�o Thi�n Qu�n")
end

function ThieuLamDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(321) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(321,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng V� T��ng Tr�m")
end
-------------------------------------------------------------Ph�i Thi�n V��ng--------------------------------------------------------------------------------------------------------------------------------------
function ThienVuongChuy()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(325) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(325,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Truy Phong Quy�t")
end

function ThienVuongThuong()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(323) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(323,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Truy Tinh Tr�c Nguy�t")
end

function ThienVuongDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(322) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(322,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Ph� Thi�n Tr�m")
end
--------------------------------------------------------------Ph�i ���ng M�n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(339) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(339,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Nhi�p H�n Nguy�t �nh")
end

function DuongMonNo()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(302) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(302,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng B�o V� L� Hoa")
end

function DuongMonTieu()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(342) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(342,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng �� H�c ���c K� N�ng C�u Cung Phi Tinh")
end

function DuongMonBay()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(351) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(351,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng �� H�c ���c K� N�ng Lo�n Ho�n K�ch")
end
-----------------------------------------------------------------Ph�i Ng� ��c--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(353) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(353,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng �m Phong Th�c C�t")
end

function NguDocDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(355) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(355,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Huy�n �m Tr�m")
end

function NguDocBua()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(390) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(390,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng �� H�c ���c K� N�ng �o�n C�n H� C�t")
end
-----------------------------------------------------------------Ph�i Nga My--------------------------------------------------------------------------------------------------------------------------------------
function NgaMyChuong()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(380) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(380,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Phong S��ng To�i �nh")
end

function NgaMyKiem()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(328) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(328,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Tam Nga T� Tuy�t")
end

function NgaMyBuff()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(332) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(332,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Ph� �� Ch�ng Sinh")
end
------------------------------------------------------------------Ph�i Th�y Y�n--------------------------------------------------------------------------------------------------------------------------------------
function ThuyYenSongDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(337) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(337,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng B�ng T�m Ti�n T�")
end

function ThuyYenDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(336) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(336,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng B�ng Tung V� �nh")
end
----------------------------------------------------------------------Ph�i C�i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(357) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(357,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Phi Long T�i Thi�n")
end

function CaiBangBong()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(359) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(359,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Thi�n H� V� C�u")
end
-------------------------------------------------------------------Ph�i Thi�n Nh�n--------------------------------------------------------------------------------------------------------------------------------------
function ThienNhanDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(362) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(362,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Thi�n Ngo�i L�u Tinh")
end

function ThienNhanKich()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(361) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(361,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng V�n Long K�ch")
end

function ThienNhanBua()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(391) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(391,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Nhi�p H�n Lo�n T�m")
end
------------------------------------------------------------------Ph�i V� �ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(365) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(365,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Thi�n ��a V� C�c")
end

function VoDangKiem()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(368) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(368,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Nh�n Ki�m H�p Nh�t")
end
-------------------------------------------------------------------------Ph�i C�n L�n---------------------------------------------------------------------------------------------------------------------------------
function ConLonKiem()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(375) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(375,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng L�i ��ng C�u Thi�n")
end

function ConLonDao()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(372) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(372,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Ng�o Tuy�t Ti�u Phong")
end

function ConLonBua()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(394) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(394,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng T�y Ti�n T� C�t")
end
------------------------------------------------------------------------Ph�i Hoa S�n---------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(1364) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(1364,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng �o�t M�nh Li�n Ho�n Tam Li�n K�ch")
end

function HoaSonKhi()
if CalcEquiproomItemCount(6,1,2426,-1)<1 then
	return 1
	end
	if HaveMagic(1382) >= 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y R�i Kh�ng Th� H�c N�a")
		return 1;
	end
	AddMagic(1382,1)
	SetTask(KyNang90,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("<color=green>Ch�c M�ng  �� H�c ���c K� N�ng Ng�o Tuy�t Ti�u Phong")
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------