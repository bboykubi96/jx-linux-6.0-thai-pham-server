
local tbItemMagic = 
{ 
-- script viet hoa By http://tranhba.com  c�n k� ID th� ch� c� th� l� magicscript.txt h� ��ch v�t ph�m 
[2795] = {nId = 668, nLevel = 5, szName = " huy�n hu�n h�m t�nh "}, 
[2796] = {nId = 669, nLevel = 10, szName = " thay ��i ch�m b�y r�p "}, 
} 


function main(nItemIndex) 
-- script viet hoa By http://tranhba.com  c�n ki�m tra s� d�ng b�n �� 

local _,_,nId = GetItemProp(nItemIndex) 
local tbSkill = %tbItemMagic[nId] 
CastSkill(tbSkill.nId, tbSkill.nLevel) 
Msg2Player(format("��i hi�p �� # %s 1 <color=0xB5FDD7>%s<color>", tbSkill.szDo or " an b�i ", tbSkill.szName)) 

end
