IncludeLib("SETTING");
Include("\\script\\task\\task_addplayerexp.lua")  --������ۼӾ���Ĺ�������
Include("\\script\\lib\\pay.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")

function main( nItemIndex )
    
	--dofile("script/item/tianshanxuelian.lua"
	--dofile("script/global/g7vn/g7configall.lua")
	
	if DangDuaTop == 1 then
		Say("�ang trong qu� tr�nh �ua top, kh�ng th� th�c hi�n thao t�c n�y")
		return 1
	end

	local nTransLife = ST_GetTransLifeCount()	
	if (nTransLife >= 1) then
		Say("Nh�n v�t �� tr�ng sinh kh�ng th� s� d�ng", 0)
		return 1
	end

    local nPLev = GetLevel()
    if nPLev >= 80  or nPLev < 1 or IsCharged() < 1 then
        Say("Ch� c� nh�n v�t c�p �� t� 1 ��n 79 c� th� s� d�ng.", 0)
        return 1
    end
    local nAddLevel = 80 - nPLev
    ST_LevelUp(nAddLevel)

    --tl_addPlayerExp(1433042000)
	nPLev = GetLevel()
	--Msg2Player(format("Ch�c m�ng b�n, ��ng c�p hi�n t�i c�a b�n l� %d.",nPLev))
	WriteLog(format("[S� d�ng Thi�n S�n Tuy�t Li�n]\t%s\tName:%s\tAccount:%s\t v�a �n ���c 1 Thi�n S�n Tuy�t Li�n.",
			GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount()));
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Thi�n S�n Tuy�t Li�n<color> t�i npc Ti�u Ph��ng (T��ng D��ng 195/201)")
end
--
