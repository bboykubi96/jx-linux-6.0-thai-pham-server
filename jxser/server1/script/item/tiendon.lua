-- Hut mau don

function main(sel) 
local nNum = GetTask(3011)
local nTimes = mod(GetTask(80),16) 

if(nNum >= 12) then
	Msg2Player("Mçi nguêi chØ ®­îc dïng Tiªn ®¬n 12 lÇn.")
	return 1 
end 
if  GetLevel() <= 90 then
	Msg2Player("Ph¶i trªn cÊp 90 míi ®­îc dïng.")
	return 1
end
if nTimes < 15 then
	Msg2Player("Ph¶i ¨n tõ 15 cuèn Vâ L©m MËt TŞch trë lªn míi ®­îc dïng.")
	return 1
end

SetTask(80,0) -- vo lam mat tich
-- SetTask(81,0) -- tay tuy kinh
SetTask(3011,nNum+1)
Msg2Player("C¶m gi¸c nãng c¶ ng­êi. B¸t m¹ch ®­îc ®¶ th«ng. Sè lÇn nuèt Vâ L©m MËt TŞch trë vÒ kh«ng.")
Say("C¶m gi¸c nãng c¶ ng­êi. B¸t m¹ch ®­îc ®¶ th«ng. Sè lÇn nuèt Vâ L©m MËt TŞch trë vÒ kh«ng.")
return 0
end 
