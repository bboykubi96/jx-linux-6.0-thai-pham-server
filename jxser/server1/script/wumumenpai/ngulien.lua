Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\awardtemplet.lua")
-----------------------------------------------
function main()
dofile("script/wumumenpai/ngulien.lua")
local UTask_wh = GetTask(12)
	if (UTask_wh == 10*256 and GetLevel() >= 10) then
		Say("Ng� Li�n: Hi�p S� ��n B�n ���ng C� Chuy�n G� Kh�ng",3,"Ta C�n Gi�p ��/TimHieuMonPhai","Ta C� Vi�c Kh�c/nv1x1","K�t Th�c ��i Tho�i/No")
	elseif (UTask_wh == 30*256 and GetLevel() >= 10) then
		Say("Ng� Li�n: Hi�p S� ��n B�n ���ng C� Chuy�n G� Kh�ng",3,"Ta C�n Gi�p ��/TimHieuMonPhai","Ta C� Vi�c Kh�c/nv1x3","K�t Th�c ��i Tho�i/No")
	else
		Say("Ng� Li�n: Hi�p S� ��n B�n ���ng C� Chuy�n G� Kh�ng",3,"Ta C�n Gi�p ��/TimHieuMonPhai","K�t Th�c ��i Tho�i/No")
	end
end

function nv1x1()
	Say("Ng� Li�n: Ch�o M�ng Gia Nh�p B�n ���ng, ��y L� T� Ph�m, H�y C�m L�y �i B�i T� Nh�c Phi T��ng Qu�n!",3,"Ta �i Ng�y/nv1x2","Ta C� Vi�c Kh�c Ph�i L�m/No")
end

function nv1x2()
	if (CalcEquiproomItemCount(6,1,4307,1) == 0) then
		local nIndex = AddItem(6,1,4307,1,0,0) SetItemBindState(nIndex, -2) SetTask(12,20*256) NewWorld(989, 1648, 3024)
	else
		NewWorld(989, 1648, 3024)
	end
end

function nv1x3()
AddMagic(1849)
AddMagic(1850)
SetRank(91)
SetTask(12,40*256)
Msg2Player("Ch�c M�ng ��i Hi�p �� Ho�n Th�nh Nhi�m V� B�i T� Nh�c Phi H�c ���c V� C�ng V� H�n �ao Ph�p V� V� H�n Thu�n Ph�p ���c Phong L� Trung Qu�n!")
end

function TimHieuMonPhai()
	Say("Ng� Li�n: Th� Ra L� S� �i�p, C�n Gi�p G� Kh�ng",3,"T�m Hi�u ��ng M�n/TimDongMon","T�m Hi�u Nhi�m V� M�n Ph�i/TimHieuNhiemVu","K�t Th�c ��i Tho�i/No")
end

function TimDongMon()
Say("Ng� Li�n: Ng��i Mu�n T�m Ai",14,
	"Ta Bi�t R�i/No","T�m Nh�c L�i/#TimViTriNpc(1)",
	"T�m Ng�u Th�ng/#TimViTriNpc(2)",
	"T�m H�n Th��ng ��c/#TimViTriNpc(3)",
	"T�m Thi Phong/#TimViTriNpc(4)",
	"T�m Thang Anh/#TimViTriNpc(5)",
	"H�n Kh�i Ph��ng/#TimViTriNpc(6)",
	"T�m Nh�c ��nh/#TimViTriNpc(7)",
	"T�m C�t Khang/#TimViTriNpc(8)",
	"T�m Th� Nhu�/#TimViTriNpc(9)",
	"T�m Y S�/#TimViTriNpc(10)",
	"T�m D� ��i Ch�y/#TimViTriNpc(11)",
	"T�m Nh�c Nh� N��ng/#TimViTriNpc(12)")
end

function TimViTriNpc(NpcPos)
	if (NpcPos == 1) then
		Say("<color=yellow>Nh�c L�i:<color>\n<color=red>V� Tr� Tr��c Trung D�ng ���ng T�a ��: 211,190!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(1)")
	elseif (NpcPos == 2) then
		Say("<color=yellow>Ng�u Th�ng:<color>\n<color=red>V� Tr� Tr��c Trung D�ng ���ng T�a ��: 210,190!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(2)")
	elseif (NpcPos == 3) then
		Say("<color=yellow>H�n Th��ng ��c:<color>\n<color=red>V� Tr� Tr��c Trung D�ng ���ng T�a ��: 211,191!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(3)")
	elseif (NpcPos == 4) then
		Say("<color=yellow>Thi Phong:<color>\n<color=red>T�c D�ng Nhi�m V� T�a ��: 218,203!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(4)")
	elseif (NpcPos == 5) then
		Say("<color=yellow>Thang Anh:<color>\n<color=red>V� Tr� Gi�i ���ng T�a ��: 211,199!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(5)")
	elseif (NpcPos == 6) then
		Say("<color=yellow>H�n Kh�i Ph��ng:<color>\n<color=red>V� Tr� B�n Long ��i T�a ��: 200,188!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(6)")
	elseif (NpcPos == 7) then
		Say("<color=yellow>Nh�c ��nh:<color>\n<color=red>V� Tr� B�n Long ��i T�a ��: 199,187!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(7)")
	elseif (NpcPos == 8) then
		Say("<color=yellow>C�t Khang:<color>\n<color=red>V� Tr� C� T��ng ��i T�a ��: 190,202!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(8)")
	elseif (NpcPos == 9) then
		Say("<color=yellow>Th� Nhu�:<color>\n<color=red>V� Tr� C� T��ng ��i T�a ��: 190,202!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(9)")
	elseif (NpcPos == 10) then
		Say("<color=yellow>Y S�:<color>\n<color=red>V� Tr� Gi�i ���ng T�a ��: 223,200!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(10)")
	elseif (NpcPos == 11) then
		Say("<color=yellow>D� ��i Ch�y:<color>\n<color=red>V� Ti�m Binh Kh� T�a ��: 226,202!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(11)")
	elseif (NpcPos == 12) then
		Say("<color=yellow>Nh�c Nh� N��ng:<color>\n<color=red>V� Ti�m Trang B� T�a ��: 208,206!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(12)")
	end
end

function TimHieuNhiemVu()
Say("Ng� Li�n: Ng��i Mu�n T�m Hi�u Nhi�m V� N�o",10,
	"Ta Bi�t R�i/No",
	"Nhi�m V� C�p 10 V� H�n ���ng/#NhiemVuMonPhai(1)",
	"Nhi�m V� C�p 20 V� H�n ���ng/#NhiemVuMonPhai(2)",
	"Nhi�m V� C�p 30 V� H�n ���ng/#NhiemVuMonPhai(3)",
	"Nhi�m V� C�p 40 V� H�n ���ng/#NhiemVuMonPhai(4)",
	"Nhi�m V� C�p 50 V� H�n ���ng/#NhiemVuMonPhai(5)",
	"Nhi�m V� Xu�t S� V� H�n ���ng/#NhiemVuMonPhai(6)",
	"Nhi�m V� Tr�ng Ph�n S� M�n V� H�n ���ng/#NhiemVuMonPhai(7)",
	"Nhi�m V� K� Danh �� T� V� H�n ���ng/#NhiemVuMonPhai(8)",
	"Nhi�m V� C�p 90 V� H�n ���ng/#NhiemVuMonPhai(9)")
end

function NhiemVuMonPhai(nNV)
	if (nNV == 1) then
		Say("<color=yellow>Nhi�m V� C�p 10 T� B�i Anh H�n:<color>\n<color=red>��i Tho�i Ng� Li�n Ti�p Nh�n Nhi�m V� B�i T� Nh�c Phi!<color>")
	elseif (nNV == 2) then
		Say("<color=yellow>Nhi�m V� C�p 20 Tr� Gian Di�t �c:<color>\n<color=red>��i Tho�i C�t Khang Ho�c Th� Nhu� Ti�p Nh�n Nhi�m V� Gi�o Hu�n Du T�u Mai Hoa L�ng!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(8)")
	elseif (nNV == 3) then
		Say("<color=yellow>Nhi�m V� C�p 30 Chi�n H�u C�ng S�:<color>\n<color=red>��i Tho�i Thang Anh Ti�p Nh�n Nhi�m V� Thu Th�p Qu�n Gi�i V� Tr� Li�u Cho C�c �� T� B�n M�n<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(5)")
	elseif (nNV == 4) then
		Say("<color=yellow>Nhi�m V� C�p 40 M�t Tr� N�nh Th�n:<color>\n<color=red>��i Tho�i Thi Phong Ti�p Nh�n Nhi�m V� Ti�u Di�t La Hi�n Th�nh Tr� Th� Cho Nh�c Phi<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(4)")
	elseif (nNV == 5) then
		Say("<color=yellow>Nhi�m V� C�p 50 Kh�o Nghi�m V� Ngh�:<color>\n<color=red>��i Tho�i Ng�u Th�ng Ti�p Nh�n Nhi�m V� T� Th� Di�n V� Tr��ng<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(2)")
	elseif (nNV == 6) then
		Say("<color=yellow>Nhi�m V� Xu�t S� V� M�c Di Th� Th�t Gi�:<color>\n<color=red>��i Tho�i H�n Kh�i Ph��ng Ti�p Nh�n Nhi�m V� �i T�m V� M�c Di Th�!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(6)")
	elseif (nNV == 7) then
		Say("<color=yellow>Nhi�m V� Tr�ng Ph�n S� M�n:<color>\n<color=red>��i Tho�i Nh�c L�i Ti�p Nh�n Nhi�m V� Xin Gia Nh�p L�i B�n M�n<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(1)")
	elseif (nNV == 8) then
		Say("<color=yellow>Nhi�m V� K� Danh �� T�:<color>\n<color=red>��i Tho�i H�n Th��ng ��c Ti�p Nh�n Nhi�m V� Gi�o Hu�n C��ng Gi�!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(3)")
	elseif (nNV == 9) then
		Say("<color=yellow>Nhi�m V� C�p 90 Di�t Gi�n �i�p:<color>\n<color=red>��i Tho�i Nh�c ��nh Ti�p Nh�n Nhi�m V� Ti�u Di�t T��ng L�nh �� ��u Qu�n Cho B�n Kim Qu�c!<color>",2,"K�t Th�c ��i Tho�i/#SetMovePos(7)")
	end
end

function SetMovePos(nPos)
local nMap,_,_ = GetWorldPos()
	if (nMap == 989) then
		if (nPos == 1) then
			ST_SyncMiniMapObj(1688*32,3040*32)
		elseif (nPos == 2) then
			ST_SyncMiniMapObj(1680*32,3040*32)
		elseif (nPos == 3) then
			ST_SyncMiniMapObj(1688*32,3056*32)
		elseif (nPos == 4) then
			ST_SyncMiniMapObj(1744*32,3248*32)
		elseif (nPos == 5) then
			ST_SyncMiniMapObj(1688*32,3184*32)
		elseif (nPos == 6) then
			ST_SyncMiniMapObj(1600*32,3008*32)
		elseif (nPos == 7) then
			ST_SyncMiniMapObj(1592*32,2992*32)
		elseif (nPos == 8) then
			ST_SyncMiniMapObj(1520*32,3232*32)
		elseif (nPos == 9) then
			ST_SyncMiniMapObj(1520*32,3232*32)
		elseif (nPos == 10) then
			ST_SyncMiniMapObj(1784*32,3200*32)
		elseif (nPos == 11) then
			ST_SyncMiniMapObj(1808*32,3232*32)
		elseif (nPos == 12) then
			ST_SyncMiniMapObj(1664*32,3296*32)
		end
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------