ItemID = 4828
function main(nItemIndex)
local tbEquip = GetAllEquipment()
	for i=1, getn(tbEquip) do
	local nCountRepair = GetItemParam(nItemIndex, 1); --Sè lÇn cßn cã thÓ söa ch÷a
	local nG, nD, nP = GetItemProp(tbEquip[i])
	if nD == 0 or nD == 1 or nD == 2 or nD == 5 or nD == 6 or nD == 7 or nD == 8 then --NÕu lµ vò khİ cËn chiÕn, vò khİ tÇm xa, ao, giÇy, ®ai l­ng, mò, bao tay.
            if nCountRepair > 0 then --NÕu sè lÇn söa ch÷a lín h¬n 0
                local CurDur = GetCurDurability(tbEquip[i])
                local MaxDur = GetMaxDurability(tbEquip[i])
                local ItemName = GetItemName(tbEquip[i])
                if CurDur < MaxDur then
                    SetCurDurability(tbEquip[i],MaxDur)
                    SetSpecItemParam(nItemIndex, 1, nCountRepair-1)
                    SyncItem(nItemIndex)
                    Msg2Player("Söa ch÷a thµnh c«ng trang bŞ "..ItemName.." §é bÒn hiÖn t¹i: "..GetCurDurability(tbEquip[i]).."/"..GetMaxDurability(tbEquip[i]))
                end
            else
                ConsumeItemCount(1,6,1,4828,-1)
                Msg2Player("Thiªn th¹ch ®· hÕt sè lÇn söa ch÷a tù ®éng biÕn mÊt.")
            end
        end
    end
    return 1
end
function GetDesc(nItemIndex) 
    local nCount= GetItemParam(nItemIndex, 1); 
    return format("<color=green>Sè lÇn söa ch÷a cßn cã thÓ thùc hiÖn<color>: <color=yellow>%d<color> lÇn", nCount) 
end
