
local tbItemMagic = 
{ 
-- script viet hoa By http://tranhba.com  c∆n kœ ID th∂ chÿ c„ th” lµ magicscript.txt hπ Æ›ch vÀt ph»m 
[2795] = {nId = 668, nLevel = 5, szName = " huy“n hu©n hµm t‹nh "}, 
[2796] = {nId = 669, nLevel = 10, szName = " thay ÆÊi chÀm b…y rÀp "}, 
} 


function main(nItemIndex) 
-- script viet hoa By http://tranhba.com  c«n ki”m tra sˆ dÙng b∂n ÆÂ 

local _,_,nId = GetItemProp(nItemIndex) 
local tbSkill = %tbItemMagic[nId] 
CastSkill(tbSkill.nId, tbSkill.nLevel) 
Msg2Player(format("ßπi hi÷p Æ∑ # %s 1 <color=0xB5FDD7>%s<color>", tbSkill.szDo or " an bµi ", tbSkill.szName)) 

end
