ItemID = 4827
function main(nItemIndex)
    local nCount = GetItemParam(nItemIndex, 1); --S� �� b�n c�n c� th� d�ng �� ph�c h�i
    local tbEquip = GetAllEquipment()
    for i=1, getn(tbEquip) do
        local nCount = GetItemParam(nItemIndex, 1); --S� �� b�n c�n c� th� d�ng �� ph�c h�i
        local nG, nD, nP = GetItemProp(tbEquip[i])
        if nD == 0 or nD == 1 or nD == 2 or nD == 5 or nD == 6 or nD == 7 or nD == 8 then --N�u l� v� kh� c�n chi�n, v� kh� t�m xa, ao, gi�y, �ai l�ng, m�, bao tay.
        local CurDur = GetCurDurability(tbEquip[i]) --�� b�n hi�n t�i
        local MaxDur = GetMaxDurability(tbEquip[i]) --�� b�n l�n nh�t
        local NeedCur = MaxDur - CurDur --�� b�n c�n �� ph�c h�i
            if CurDur < MaxDur then
                if nCount > NeedCur then
                    local ItemName = GetItemName(tbEquip[i])
                    SetCurDurability(tbEquip[i],MaxDur)
                    SetSpecItemParam(nItemIndex, 1, nCount-NeedCur)
                    SyncItem(nItemIndex)
                    Msg2Player("S�a ch�a th�nh c�ng trang b� "..ItemName.." �� b�n hi�n t�i: "..GetCurDurability(tbEquip[i]).."/"..GetMaxDurability(tbEquip[i]))
                end
            end
        end
    end
    return 1
end
function GetDesc(nItemIndex) 
    local nCount= GetItemParam(nItemIndex, 1); 
    return format("<color=green>L��ng �� b�n c�n c� th� d�ng<color>: <color=yellow>%d<color> �� b�n", nCount) 
end
