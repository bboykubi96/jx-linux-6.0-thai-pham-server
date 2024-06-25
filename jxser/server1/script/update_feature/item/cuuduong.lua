IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DiemTuLuyen = 5965; HoaLongDon = 4229;
IDSKILL1 = 1566;	 IDSKILL2 = 1567;	 IDSKILL3 = 1568;	 IDSKILL4 = 1569;	 IDSKILL5 = 1570;	 IDSKILL6 = 1571;	 IDSKILL7 = 1572;	 IDSKILL8 = 1573;	 IDSKILL9 = 1574;	 IDSKILL10 = 1575;
nDotPha1 = 30000;	 nDotPha2 = 50000;	 nDotPha3 = 70000;	 nDotPha4 = 100000;	 nDotPha5 = 150000;	 nDotPha6 = 200000;	 nDotPha7 = 300000;	 nDotPha8 = 500000;	 nDotPha9 = 700000;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local _OnBreak = function()
	Msg2Player("<color=yellow>H�y T�p Trung Tinh Th�n Lo�i B� T�p Ni�m")
end

local _GetFruit = function(nItemIdx)
	if (HaveMagic(IDSKILL1) >= 1) then
		DelMagic(IDSKILL1,1) AddMagic(IDSKILL2,1) Msg2Player("Ch�c M�ng Ng��i �� ��t Ph� Th�nh C�ng C�u D��ng Th�n C�ng T�ng 1")
	elseif (HaveMagic(IDSKILL2) >= 1) then
		DelMagic(IDSKILL2,1) AddMagic(IDSKILL3,1) Msg2Player("Ch�c M�ng Ng��i �� ��t Ph� Th�nh C�ng C�u D��ng Th�n C�ng T�ng 2")
	elseif (HaveMagic(IDSKILL3) >= 1) then
		DelMagic(IDSKILL3,1) AddMagic(IDSKILL4,1) Msg2Player("Ch�c M�ng Ng��i �� ��t Ph� Th�nh C�ng C�u D��ng Th�n C�ng T�ng 3")
	elseif (HaveMagic(IDSKILL4) >= 1) then
		DelMagic(IDSKILL4,1) AddMagic(IDSKILL5,1) Msg2Player("Ch�c M�ng Ng��i �� ��t Ph� Th�nh C�ng C�u D��ng Th�n C�ng T�ng 4")
	elseif (HaveMagic(IDSKILL5) >= 1) then
		DelMagic(IDSKILL5,1) AddMagic(IDSKILL6,1) Msg2Player("Ch�c M�ng Ng��i �� ��t Ph� Th�nh C�ng C�u D��ng Th�n C�ng T�ng 5")
	elseif (HaveMagic(IDSKILL6) >= 1) then
		DelMagic(IDSKILL6,1) AddMagic(IDSKILL7,1) Msg2Player("Ch�c M�ng Ng��i �� ��t Ph� Th�nh C�ng C�u D��ng Th�n C�ng T�ng 6")
	elseif (HaveMagic(IDSKILL7) >= 1) then
		DelMagic(IDSKILL7,1) AddMagic(IDSKILL8,1) Msg2Player("Ch�c M�ng Ng��i �� ��t Ph� Th�nh C�ng C�u D��ng Th�n C�ng T�ng 7")
	elseif (HaveMagic(IDSKILL8) >= 1) then
		DelMagic(IDSKILL8,1) AddMagic(IDSKILL9,1) Msg2Player("Ch�c M�ng Ng��i �� ��t Ph� Th�nh C�ng C�u D��ng Th�n C�ng T�ng 8")
	elseif (HaveMagic(IDSKILL9) >= 1) then
		DelMagic(IDSKILL9,1) AddMagic(IDSKILL10,1) Msg2Player("Ch�c M�ng Ng��i �� ��t Ph� Th�nh C�ng C�u D��ng Th�n C�ng T�ng 9")
	end
	SetTask(DiemTuLuyen,0); ConsumeEquiproomItem(1,6,1,HoaLongDon,-1)
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function main()
	if (HaveMagic(IDSKILL1) >= 1) then
		if (GetTask(DiemTuLuyen) >= nDotPha1) then
			if (CalcEquiproomItemCount(6,1,HoaLongDon,1) >= 1) then
				tbProgressBar:OpenByConfig(24, %_GetFruit, {nItemIdx}, %_OnBreak)
			else
				Say("<color=red>L�n ��t Ph� N�y C�n 1 H�a Long ��n")
			end
		else
			Say(""..MucDoLuyen().."")
		end
	elseif (HaveMagic(IDSKILL2) >= 1) then
		if (GetTask(DiemTuLuyen) >= nDotPha2) then
			if (CalcEquiproomItemCount(6,1,HoaLongDon,1) >= 1) then
				tbProgressBar:OpenByConfig(24, %_GetFruit, {nItemIdx}, %_OnBreak)
			else
				Say("<color=red>L�n ��t Ph� N�y C�n 1 H�a Long ��n")
			end
		else
			Say(""..MucDoLuyen().."")
		end
	elseif (HaveMagic(IDSKILL3) >= 1) then
		if (GetTask(DiemTuLuyen) >= nDotPha3) then
			if (CalcEquiproomItemCount(6,1,HoaLongDon,1) >= 1) then
				tbProgressBar:OpenByConfig(24, %_GetFruit, {nItemIdx}, %_OnBreak)
			else
				Say("<color=red>L�n ��t Ph� N�y C�n 1 H�a Long ��n")
			end
		else
			Say(""..MucDoLuyen().."")
		end
	elseif (HaveMagic(IDSKILL4) >= 1) then
		if (GetTask(DiemTuLuyen) >= nDotPha4) then
			if (CalcEquiproomItemCount(6,1,HoaLongDon,1) >= 1) then
				tbProgressBar:OpenByConfig(24, %_GetFruit, {nItemIdx}, %_OnBreak)
			else
				Say("<color=red>L�n ��t Ph� N�y C�n 1 H�a Long ��n")
			end
		else
			Say(""..MucDoLuyen().."")
		end
	elseif (HaveMagic(IDSKILL5) >= 1) then
		if (GetTask(DiemTuLuyen) >= nDotPha5) then
			if (CalcEquiproomItemCount(6,1,HoaLongDon,1) >= 1) then
				tbProgressBar:OpenByConfig(24, %_GetFruit, {nItemIdx}, %_OnBreak)
			else
				Say("<color=red>L�n ��t Ph� N�y C�n 1 H�a Long ��n")
			end
		else
			Say(""..MucDoLuyen().."")
		end
	elseif (HaveMagic(IDSKILL6) >= 1) then
		if (GetTask(DiemTuLuyen) >= nDotPha6) then
			if (CalcEquiproomItemCount(6,1,HoaLongDon,1) >= 1) then
				tbProgressBar:OpenByConfig(24, %_GetFruit, {nItemIdx}, %_OnBreak)
			else
				Say("<color=red>L�n ��t Ph� N�y C�n 1 H�a Long ��n")
			end
		else
			Say(""..MucDoLuyen().."")
		end
	elseif (HaveMagic(IDSKILL7) >= 1) then
		if (GetTask(DiemTuLuyen) >= nDotPha7) then
			if (CalcEquiproomItemCount(6,1,HoaLongDon,1) >= 1) then
				tbProgressBar:OpenByConfig(24, %_GetFruit, {nItemIdx}, %_OnBreak)
			else
				Say("<color=red>L�n ��t Ph� N�y C�n 1 H�a Long ��n")
			end
		else
			Say(""..MucDoLuyen().."")
		end
	elseif (HaveMagic(IDSKILL8) >= 1) then
		if (GetTask(DiemTuLuyen) >= nDotPha8) then
			if (CalcEquiproomItemCount(6,1,HoaLongDon,1) >= 1) then
				tbProgressBar:OpenByConfig(24, %_GetFruit, {nItemIdx}, %_OnBreak)
			else
				Say("<color=red>L�n ��t Ph� N�y C�n 1 H�a Long ��n")
			end
		else
			Say(""..MucDoLuyen().."")
		end
	elseif (HaveMagic(IDSKILL9) >= 1) then
		if (GetTask(DiemTuLuyen) >= nDotPha9) then
			if (CalcEquiproomItemCount(6,1,HoaLongDon,1) >= 1) then
				tbProgressBar:OpenByConfig(24, %_GetFruit, {nItemIdx}, %_OnBreak)
			else
				Say("<color=red>L�n ��t Ph� N�y C�n 1 H�a Long ��n")
			end
		else
			Say(""..MucDoLuyen().."")
		end
	elseif (HaveMagic(IDSKILL10) >= 1) then
		Say("<color=yellow>K� N�ng C�u D��ng Th�n C�ng �� ��t ��n Gi�i H�n Kh�ng Th� Tu Luy�n Th�m")
	else
		AddMagic(IDSKILL1,1) Msg2Player("Ch�c M�ng Ng��i �� H�c K� N�ng <color=yellow>C�u D��ng Th�n C�ng<color> Th�nh C�ng")
	end
	return 1
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MucDoLuyen()
local nDiemTuLuyen = GetTask(DiemTuLuyen)
	if (HaveMagic(IDSKILL1) >= 1) then
		if (nDiemTuLuyen < 100) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=red>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/100<color>"
		elseif (nDiemTuLuyen >= 100 and nDiemTuLuyen < 200) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>*<color> <color=red>* * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/200<color>"
		elseif (nDiemTuLuyen >= 200 and nDiemTuLuyen < 300) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* *<color> <color=red>* * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/300<color>"
		elseif (nDiemTuLuyen >= 300 and nDiemTuLuyen < 500) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * *<color> <color=red>* * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/500<color>"
		elseif (nDiemTuLuyen >= 500 and nDiemTuLuyen < 700) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * *<color> <color=red>* * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/700<color>"
		elseif (nDiemTuLuyen >= 700 and nDiemTuLuyen < 1000) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * *<color> <color=red>* * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/1000<color>"
		elseif (nDiemTuLuyen >= 1000 and nDiemTuLuyen < 1500) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * *<color> <color=red>* * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/1500<color>"
		elseif (nDiemTuLuyen >= 1500 and nDiemTuLuyen < 2000) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * *<color> <color=red>* * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/2000<color>"
		elseif (nDiemTuLuyen >= 2000 and nDiemTuLuyen < 3000) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * *<color> <color=red>* * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/3000<color>"
		elseif (nDiemTuLuyen >= 3000 and nDiemTuLuyen < 5000) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * *<color> <color=red>* * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/5000<color>"
		elseif (nDiemTuLuyen >= 5000 and nDiemTuLuyen < 7000) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * *<color> <color=red>* * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/7000<color>"
		elseif (nDiemTuLuyen >= 7000 and nDiemTuLuyen < 10000) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * *<color> <color=red>* * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/10000<color>"
		elseif (nDiemTuLuyen >= 10000 and nDiemTuLuyen < 15000) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * *<color> <color=red>* * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/15000<color>"
		elseif (nDiemTuLuyen >= 15000 and nDiemTuLuyen < 20000) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * *<color> <color=red>* *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/20000<color>"
		elseif (nDiemTuLuyen >= 20000 and nDiemTuLuyen < 30000) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * *<color> <color=red>*<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/30000<color>"
		elseif (nDiemTuLuyen >= 30000) then
			return "<bclr=blue>T�ng Th� 1:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=green>"..nDiemTuLuyen.."/30000<color>"
		end
	elseif (HaveMagic(IDSKILL2) >= 1) then
		if (nDiemTuLuyen < 200) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=red>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/200<color>"
		elseif (nDiemTuLuyen >= 200 and nDiemTuLuyen < 300) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>*<color> <color=red>* * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/300<color>"
		elseif (nDiemTuLuyen >= 300 and nDiemTuLuyen < 500) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* *<color> <color=red>* * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/500<color>"
		elseif (nDiemTuLuyen >= 500 and nDiemTuLuyen < 700) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * *<color> <color=red>* * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/700<color>"
		elseif (nDiemTuLuyen >= 700 and nDiemTuLuyen < 1000) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * *<color> <color=red>* * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/1000<color>"
		elseif (nDiemTuLuyen >= 1000 and nDiemTuLuyen < 1500) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * *<color> <color=red>* * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/1500<color>"
		elseif (nDiemTuLuyen >= 1500 and nDiemTuLuyen < 2000) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * *<color> <color=red>* * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/2000<color>"
		elseif (nDiemTuLuyen >= 2000 and nDiemTuLuyen < 3000) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * *<color> <color=red>* * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/3000<color>"
		elseif (nDiemTuLuyen >= 3000 and nDiemTuLuyen < 5000) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * *<color> <color=red>* * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/5000<color>"
		elseif (nDiemTuLuyen >= 5000 and nDiemTuLuyen < 7000) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * *<color> <color=red>* * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/7000<color>"
		elseif (nDiemTuLuyen >= 7000 and nDiemTuLuyen < 10000) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * *<color> <color=red>* * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/10000<color>"
		elseif (nDiemTuLuyen >= 10000 and nDiemTuLuyen < 15000) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * *<color> <color=red>* * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/15000<color>"
		elseif (nDiemTuLuyen >= 15000 and nDiemTuLuyen < 20000) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * *<color> <color=red>* * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/20000<color>"
		elseif (nDiemTuLuyen >= 20000 and nDiemTuLuyen < 30000) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * *<color> <color=red>* *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/30000<color>"
		elseif (nDiemTuLuyen >= 30000 and nDiemTuLuyen < 50000) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * *<color> <color=red>*<color>\n\n                    <color=orange>�i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/50000<color>"
		elseif (nDiemTuLuyen >= 50000) then
			return "<bclr=blue>T�ng Th� 2:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=green>"..nDiemTuLuyen.."/50000<color>"
		end
	elseif (HaveMagic(IDSKILL3) >= 1) then
		if (nDiemTuLuyen < 300) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=red>* * * * * * * * * * * * * * *<color>\n\n                    <color=orange>�i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/300<color>"
		elseif (nDiemTuLuyen >= 300 and nDiemTuLuyen < 500) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>*<color> <color=red>* * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/500<color>"
		elseif (nDiemTuLuyen >= 500 and nDiemTuLuyen < 700) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* *<color> <color=red>* * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/700<color>"
		elseif (nDiemTuLuyen >= 700 and nDiemTuLuyen < 1000) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * *<color> <color=red>* * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/1000<color>"
		elseif (nDiemTuLuyen >= 1000 and nDiemTuLuyen < 1500) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * *<color> <color=red>* * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/1500<color>"
		elseif (nDiemTuLuyen >= 1500 and nDiemTuLuyen < 2000) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * *<color> <color=red>* * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/2000<color>"
		elseif (nDiemTuLuyen >= 2000 and nDiemTuLuyen < 3000) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * *<color> <color=red>* * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/3000<color>"
		elseif (nDiemTuLuyen >= 3000 and nDiemTuLuyen < 5000) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * *<color> <color=red>* * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/5000<color>"
		elseif (nDiemTuLuyen >= 5000 and nDiemTuLuyen < 7000) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * *<color> <color=red>* * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/7000<color>"
		elseif (nDiemTuLuyen >= 7000 and nDiemTuLuyen < 10000) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * *<color> <color=red>* * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/10000<color>"
		elseif (nDiemTuLuyen >= 10000 and nDiemTuLuyen < 15000) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * *<color> <color=red>* * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/15000<color>"
		elseif (nDiemTuLuyen >= 15000 and nDiemTuLuyen < 20000) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * *<color> <color=red>* * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/20000<color>"
		elseif (nDiemTuLuyen >= 20000 and nDiemTuLuyen < 30000) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * *<color> <color=red>* * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/30000<color>"
		elseif (nDiemTuLuyen >= 30000 and nDiemTuLuyen < 50000) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * *<color> <color=red>* *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/50000<color>"
		elseif (nDiemTuLuyen >= 50000 and nDiemTuLuyen < 70000) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * *<color> <color=red>*<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/70000<color>"
		elseif (nDiemTuLuyen >= 70000) then
			return "<bclr=blue>T�ng Th� 3:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=green>"..nDiemTuLuyen.."/70000<color>"
		end
	elseif (HaveMagic(IDSKILL4) >= 1) then
		if (nDiemTuLuyen < 500) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=red>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/500<color>"
		elseif (nDiemTuLuyen >= 500 and nDiemTuLuyen < 700) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>*<color> <color=red>* * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/700<color>"
		elseif (nDiemTuLuyen >= 700 and nDiemTuLuyen < 1000) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* *<color> <color=red>* * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/1000<color>"
		elseif (nDiemTuLuyen >= 1000 and nDiemTuLuyen < 1500) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * *<color> <color=red>* * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/1500<color>"
		elseif (nDiemTuLuyen >= 1500 and nDiemTuLuyen < 2000) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * *<color> <color=red>* * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/2000<color>"
		elseif (nDiemTuLuyen >= 2000 and nDiemTuLuyen < 3000) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * *<color> <color=red>* * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/3000<color>"
		elseif (nDiemTuLuyen >= 3000 and nDiemTuLuyen < 5000) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * *<color> <color=red>* * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/5000<color>"
		elseif (nDiemTuLuyen >= 5000 and nDiemTuLuyen < 7000) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * *<color> <color=red>* * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/7000<color>"
		elseif (nDiemTuLuyen >= 7000 and nDiemTuLuyen < 10000) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * *<color> <color=red>* * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/10000<color>"
		elseif (nDiemTuLuyen >= 10000 and nDiemTuLuyen < 15000) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * *<color> <color=red>* * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/15000<color>"
		elseif (nDiemTuLuyen >= 15000 and nDiemTuLuyen < 20000) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * *<color> <color=red>* * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/20000<color>"
		elseif (nDiemTuLuyen >= 20000 and nDiemTuLuyen < 30000) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * *<color> <color=red>* * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/30000<color>"
		elseif (nDiemTuLuyen >= 30000 and nDiemTuLuyen < 50000) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * *<color> <color=red>* * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/50000<color>"
		elseif (nDiemTuLuyen >= 50000 and nDiemTuLuyen < 70000) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * *<color> <color=red>* *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/70000<color>"
		elseif (nDiemTuLuyen >= 70000 and nDiemTuLuyen < 100000) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * *<color> <color=red>*<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/100000<color>"
		elseif (nDiemTuLuyen >= 100000) then
			return "<bclr=blue>T�ng Th� 4:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=green>"..nDiemTuLuyen.."/100000<color>"
		end
	elseif (HaveMagic(IDSKILL5) >= 1) then
		if (nDiemTuLuyen < 700) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=red>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/700<color>"
		elseif (nDiemTuLuyen >= 700 and nDiemTuLuyen < 1000) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>*<color> <color=red>* * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/1000<color>"
		elseif (nDiemTuLuyen >= 1000 and nDiemTuLuyen < 1500) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* *<color> <color=red>* * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/1500<color>"
		elseif (nDiemTuLuyen >= 1500 and nDiemTuLuyen < 2000) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * *<color> <color=red>* * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/2000<color>"
		elseif (nDiemTuLuyen >= 2000 and nDiemTuLuyen < 3000) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * *<color> <color=red>* * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/3000<color>"
		elseif (nDiemTuLuyen >= 3000 and nDiemTuLuyen < 5000) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * *<color> <color=red>* * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/5000<color>"
		elseif (nDiemTuLuyen >= 5000 and nDiemTuLuyen < 7000) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * *<color> <color=red>* * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/7000<color>"
		elseif (nDiemTuLuyen >= 7000 and nDiemTuLuyen < 10000) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * *<color> <color=red>* * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/10000<color>"
		elseif (nDiemTuLuyen >= 10000 and nDiemTuLuyen < 15000) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * *<color> <color=red>* * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/15000<color>"
		elseif (nDiemTuLuyen >= 15000 and nDiemTuLuyen < 20000) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * *<color> <color=red>* * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/20000<color>"
		elseif (nDiemTuLuyen >= 20000 and nDiemTuLuyen < 30000) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * *<color> <color=red>* * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/30000<color>"
		elseif (nDiemTuLuyen >= 30000 and nDiemTuLuyen < 50000) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * *<color> <color=red>* * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/50000<color>"
		elseif (nDiemTuLuyen >= 50000 and nDiemTuLuyen < 70000) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * *<color> <color=red>* * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/70000<color>"
		elseif (nDiemTuLuyen >= 70000 and nDiemTuLuyen < 100000) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * *<color> <color=red>* *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/100000<color>"
		elseif (nDiemTuLuyen >= 100000 and nDiemTuLuyen < 150000) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * *<color> <color=red>*<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/150000<color>"
		elseif (nDiemTuLuyen >= 150000) then
			return "<bclr=blue>T�ng Th� 5:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=green>"..nDiemTuLuyen.."/150000<color>"
		end
	elseif (HaveMagic(IDSKILL6) >= 1) then
		if (nDiemTuLuyen < 1000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=red>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/1000<color>"
		elseif (nDiemTuLuyen >= 1000 and nDiemTuLuyen < 1500) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>*<color> <color=red>* * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/1500<color>"
		elseif (nDiemTuLuyen >= 1500 and nDiemTuLuyen < 2000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* *<color> <color=red>* * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/2000<color>"
		elseif (nDiemTuLuyen >= 2000 and nDiemTuLuyen < 3000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * *<color> <color=red>* * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/3000<color>"
		elseif (nDiemTuLuyen >= 3000 and nDiemTuLuyen < 5000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * *<color> <color=red>* * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/5000<color>"
		elseif (nDiemTuLuyen >= 5000 and nDiemTuLuyen < 7000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * *<color> <color=red>* * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/7000<color>"
		elseif (nDiemTuLuyen >= 7000 and nDiemTuLuyen < 10000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * *<color> <color=red>* * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/10000<color>"
		elseif (nDiemTuLuyen >= 10000 and nDiemTuLuyen < 15000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * *<color> <color=red>* * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/15000<color>"
		elseif (nDiemTuLuyen >= 15000 and nDiemTuLuyen < 20000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * *<color> <color=red>* * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/20000<color>"
		elseif (nDiemTuLuyen >= 20000 and nDiemTuLuyen < 30000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * *<color> <color=red>* * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/30000<color>"
		elseif (nDiemTuLuyen >= 30000 and nDiemTuLuyen < 50000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * *<color> <color=red>* * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/50000<color>"
		elseif (nDiemTuLuyen >= 50000 and nDiemTuLuyen < 70000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * *<color> <color=red>* * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/70000<color>"
		elseif (nDiemTuLuyen >= 70000 and nDiemTuLuyen < 100000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * *<color> <color=red>* * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/100000<color>"
		elseif (nDiemTuLuyen >= 100000 and nDiemTuLuyen < 150000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * *<color> <color=red>* *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/150000<color>"
		elseif (nDiemTuLuyen >= 150000 and nDiemTuLuyen < 200000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * *<color> <color=red>*<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/200000<color>"
		elseif (nDiemTuLuyen >= 200000) then
			return "<bclr=blue>T�ng Th� 6:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=green>"..nDiemTuLuyen.."/200000<color>"
		end
	elseif (HaveMagic(IDSKILL7) >= 1) then
		if (nDiemTuLuyen < 1500) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=red>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/1500<color>"
		elseif (nDiemTuLuyen >= 1500 and nDiemTuLuyen < 2000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>*<color> <color=red>* * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/2000<color>"
		elseif (nDiemTuLuyen >= 2000 and nDiemTuLuyen < 3000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* *<color> <color=red>* * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/3000<color>"
		elseif (nDiemTuLuyen >= 3000 and nDiemTuLuyen < 5000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * *<color> <color=red>* * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/5000<color>"
		elseif (nDiemTuLuyen >= 5000 and nDiemTuLuyen < 7000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * *<color> <color=red>* * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/7000<color>"
		elseif (nDiemTuLuyen >= 7000 and nDiemTuLuyen < 10000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * *<color> <color=red>* * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/10000<color>"
		elseif (nDiemTuLuyen >= 10000 and nDiemTuLuyen < 15000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * *<color> <color=red>* * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/15000<color>"
		elseif (nDiemTuLuyen >= 15000 and nDiemTuLuyen < 20000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * *<color> <color=red>* * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/20000<color>"
		elseif (nDiemTuLuyen >= 20000 and nDiemTuLuyen < 30000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * *<color> <color=red>* * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/30000<color>"
		elseif (nDiemTuLuyen >= 30000 and nDiemTuLuyen < 50000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * *<color> <color=red>* * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/50000<color>"
		elseif (nDiemTuLuyen >= 50000 and nDiemTuLuyen < 70000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * *<color> <color=red>* * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/70000<color>"
		elseif (nDiemTuLuyen >= 70000 and nDiemTuLuyen < 100000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * *<color> <color=red>* * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/100000<color>"
		elseif (nDiemTuLuyen >= 100000 and nDiemTuLuyen < 150000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * *<color> <color=red>* * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/150000<color>"
		elseif (nDiemTuLuyen >= 150000 and nDiemTuLuyen < 200000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * *<color> <color=red>* *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/200000<color>"
		elseif (nDiemTuLuyen >= 200000 and nDiemTuLuyen < 300000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * *<color> <color=red>*<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/300000<color>"
		elseif (nDiemTuLuyen >= 300000) then
			return "<bclr=blue>T�ng Th� 7:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=green>"..nDiemTuLuyen.."/300000<color>"
		end
	elseif (HaveMagic(IDSKILL8) >= 1) then
		if (nDiemTuLuyen < 2000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=red>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/2000<color>"
		elseif (nDiemTuLuyen >= 2000 and nDiemTuLuyen < 3000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>*<color> <color=red>* * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/3000<color>"
		elseif (nDiemTuLuyen >= 3000 and nDiemTuLuyen < 5000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* *<color> <color=red>* * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/5000<color>"
		elseif (nDiemTuLuyen >= 5000 and nDiemTuLuyen < 7000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * *<color> <color=red>* * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/7000<color>"
		elseif (nDiemTuLuyen >= 7000 and nDiemTuLuyen < 10000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * *<color> <color=red>* * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/10000<color>"
		elseif (nDiemTuLuyen >= 10000 and nDiemTuLuyen < 15000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * *<color> <color=red>* * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/15000<color>"
		elseif (nDiemTuLuyen >= 15000 and nDiemTuLuyen < 20000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * *<color> <color=red>* * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/20000<color>"
		elseif (nDiemTuLuyen >= 20000 and nDiemTuLuyen < 30000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * *<color> <color=red>* * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/30000<color>"
		elseif (nDiemTuLuyen >= 30000 and nDiemTuLuyen < 50000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * *<color> <color=red>* * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/50000<color>"
		elseif (nDiemTuLuyen >= 50000 and nDiemTuLuyen < 70000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * *<color> <color=red>* * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/70000<color>"
		elseif (nDiemTuLuyen >= 70000 and nDiemTuLuyen < 100000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * *<color> <color=red>* * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/100000<color>"
		elseif (nDiemTuLuyen >= 100000 and nDiemTuLuyen < 150000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * *<color> <color=red>* * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/150000<color>"
		elseif (nDiemTuLuyen >= 150000 and nDiemTuLuyen < 200000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * *<color> <color=red>* * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/200000<color>"
		elseif (nDiemTuLuyen >= 200000 and nDiemTuLuyen < 300000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * *<color> <color=red>* *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/300000<color>"
		elseif (nDiemTuLuyen >= 300000 and nDiemTuLuyen < 500000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * *<color> <color=red>*<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/500000<color>"
		elseif (nDiemTuLuyen >= 500000) then
			return "<bclr=blue>T�ng Th� 8:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=green>"..nDiemTuLuyen.."/500000<color>"
		end
	elseif (HaveMagic(IDSKILL9) >= 1) then
		if (nDiemTuLuyen < 3000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=red>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/3000<color>"
		elseif (nDiemTuLuyen >= 3000 and nDiemTuLuyen < 5000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>*<color> <color=red>* * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/5000<color>"
		elseif (nDiemTuLuyen >= 5000 and nDiemTuLuyen < 7000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* *<color> <color=red>* * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/7000<color>"
		elseif (nDiemTuLuyen >= 7000 and nDiemTuLuyen < 10000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * *<color> <color=red>* * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/10000<color>"
		elseif (nDiemTuLuyen >= 10000 and nDiemTuLuyen < 15000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * *<color> <color=red>* * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/15000<color>"
		elseif (nDiemTuLuyen >= 15000 and nDiemTuLuyen < 20000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * *<color> <color=red>* * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/20000<color>"
		elseif (nDiemTuLuyen >= 20000 and nDiemTuLuyen < 30000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * *<color> <color=red>* * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/30000<color>"
		elseif (nDiemTuLuyen >= 30000 and nDiemTuLuyen < 50000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * *<color> <color=red>* * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/50000<color>"
		elseif (nDiemTuLuyen >= 50000 and nDiemTuLuyen < 70000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * *<color> <color=red>* * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/70000<color>"
		elseif (nDiemTuLuyen >= 70000 and nDiemTuLuyen < 100000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * *<color> <color=red>* * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/100000<color>"
		elseif (nDiemTuLuyen >= 100000 and nDiemTuLuyen < 150000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * *<color> <color=red>* * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/150000<color>"
		elseif (nDiemTuLuyen >= 150000 and nDiemTuLuyen < 200000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * *<color> <color=red>* * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/200000<color>"
		elseif (nDiemTuLuyen >= 200000 and nDiemTuLuyen < 300000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * *<color> <color=red>* * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/300000<color>"
		elseif (nDiemTuLuyen >= 300000 and nDiemTuLuyen < 500000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * *<color> <color=red>* *<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/500000<color>"
		elseif (nDiemTuLuyen >= 500000 and nDiemTuLuyen < 700000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * *<color> <color=red>*<color>\n\n                    �i�m Tu Luy�n:<color> <color=red>"..nDiemTuLuyen.."/700000<color>"
		elseif (nDiemTuLuyen >= 700000) then
			return "<bclr=blue>T�ng Th� 9:<bclr>\n   <color=yellow>M�c Tu Luy�n: <color=green>* * * * * * * * * * * * * * *<color>\n\n                    �i�m Tu Luy�n:<color> <color=green>"..nDiemTuLuyen.."/700000<color>"
		end
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------