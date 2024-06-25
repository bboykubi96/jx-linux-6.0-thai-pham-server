ItemID = 4827
function main(nItemIndex)
    local nCount = GetItemParam(nItemIndex, 1); --Sè ®é bÒn cßn cã thÓ dïng ®Ó phôc håi
    local tbEquip = GetAllEquipment()
    for i=1, getn(tbEquip) do
        local nCount = GetItemParam(nItemIndex, 1); --Sè ®é bÒn cßn cã thÓ dïng ®Ó phôc håi
        local nG, nD, nP = GetItemProp(tbEquip[i])
        if nD == 0 or nD == 1 or nD == 2 or nD == 5 or nD == 6 or nD == 7 or nD == 8 then --NÕu lµ vò khİ cËn chiÕn, vò khİ tÇm xa, ao, giÇy, ®ai l­ng, mò, bao tay.
        local CurDur = GetCurDurability(tbEquip[i]) --§é bÒn hiÖn t¹i
        local MaxDur = GetMaxDurability(tbEquip[i]) --§é bÒn lín nhÊt
        local NeedCur = MaxDur - CurDur --§é bÒn cÇn ®Ó phôc håi
            if CurDur < MaxDur then
                if nCount > NeedCur then
                    local ItemName = GetItemName(tbEquip[i])
                    SetCurDurability(tbEquip[i],MaxDur)
                    SetSpecItemParam(nItemIndex, 1, nCount-NeedCur)
                    SyncItem(nItemIndex)
                    Msg2Player("Söa ch÷a thµnh c«ng trang bŞ "..ItemName.." §é bÒn hiÖn t¹i: "..GetCurDurability(tbEquip[i]).."/"..GetMaxDurability(tbEquip[i]))
                end
            end
        end
    end
    return 1
end
function GetDesc(nItemIndex) 
    local nCount= GetItemParam(nItemIndex, 1); 
    return format("<color=green>L­îng ®é bÒn cßn cã thÓ dïng<color>: <color=yellow>%d<color> ®é bÒn", nCount) 
end
