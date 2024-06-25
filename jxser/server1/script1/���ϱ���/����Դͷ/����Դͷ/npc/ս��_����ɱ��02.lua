function OnDeath () 
Uworld128 = GetTask(128) 
Uworld134 = GetTask(134) 
if (Uworld128 == 30) then 
Uworld134 = SetBit(Uworld134,2,1) 
if (Uworld134 == 1023) then 
SetTask(128,40) 
Msg2Player("Ng­¬i tho¸t ®i thÇn bİ s¸t thñ , cã thÓ ®i gi¶i cøu giíi v« tµ ") 
AddNote("Ng­¬i tho¸t ®i thÇn bİ s¸t thñ , cã thÓ ®i gi¶i cøu giíi v« tµ ") 
elseif (Uworld134 ~= GetTask(134)) then 
SetTask(134,Uworld134) 
Msg2Player("Ng­¬i giÕt chÕt mét ng­êi thÇn bİ s¸t thñ ") 
else 
-- script viet hoa By http://tranhba.com  t¸i diÔn giÕt chÕt cïng chØ NPC , kh«ng cho ®Ò kú 
end 
end 
end
